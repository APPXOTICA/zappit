#!/usr/bin/env python3
"""Collects Netflix's own genre names for the Categories sheet.

Reads `seed.json` (groups and codes; codes from netflix-codes.com, kept only
those Netflix answers in Korea, grouped by hand by what they are) and writes
`assets/data/netflix_categories.json`:

    [{"code": 1365, "name": {"en": "...", "ko": "..."},
      "items": [{"code": 43040, "name": {...}}, ...]}, ...]

Netflix answers https://www.netflix.com/browse/genre/<code> without signing in
and puts the genre's name in <meta property="og:title">, in the language of
the page. Which languages it serves depends on the country of the IP address
(Korea: ko, en). Run the script once per country (e.g. through a VPN) to add
more languages: names already in the output file are kept, new ones merged.

Names Netflix serves replace what the file has; the other languages in the
file (translated by hand from the Korean and English names) stay until a run
from that country replaces them. Codes Netflix doesn't answer in English are dropped (no
fallback name). Groups keep their seed name in English if Netflix has none.

Usage: python3 tool/netflix_categories/collect.py [--langs ko,en]
"""

import argparse
import html
import json
import random
import re
import sys
import time
import urllib.request
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
SEED = Path(__file__).with_name('seed.json')
OUT = ROOT / 'assets' / 'data' / 'netflix_categories.json'

LANGS = ['en', 'es', 'fr', 'de', 'it', 'tr', 'ar', 'ko', 'ja', 'zh-Hans', 'zh-Hant', 'vi', 'id', 'th']
ACCEPT = {
    'en': 'en-US,en;q=0.9', 'es': 'es-ES,es;q=0.9', 'fr': 'fr-FR,fr;q=0.9', 'de': 'de-DE,de;q=0.9',
    'it': 'it-IT,it;q=0.9', 'tr': 'tr-TR,tr;q=0.9', 'ar': 'ar,ar-SA;q=0.9', 'ko': 'ko-KR,ko;q=0.9',
    'ja': 'ja-JP,ja;q=0.9', 'zh-Hans': 'zh-CN,zh-Hans;q=0.9', 'zh-Hant': 'zh-TW,zh-Hant;q=0.9',
    'vi': 'vi-VN,vi;q=0.9', 'id': 'id-ID,id;q=0.9', 'th': 'th-TH,th;q=0.9',
}
UA = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0 Safari/537.36'

# Netflix's locale path segment -> language: "kr" is the country's default
# language, "kr-en" is English in Korea.
COUNTRY_DEFAULT = {
    'us': 'en', 'gb': 'en', 'ca': 'en', 'au': 'en', 'in': 'en', 'sg': 'en', 'ph': 'en',
    'kr': 'ko', 'jp': 'ja', 'tw': 'zh-Hant', 'hk': 'zh-Hant', 'fr': 'fr', 'de': 'de', 'at': 'de',
    'es': 'es', 'mx': 'es', 'ar': 'es', 'it': 'it', 'tr': 'tr', 'sa': 'ar', 'ae': 'ar', 'eg': 'ar',
    'vn': 'vi', 'id': 'id', 'th': 'th',
}
SEGMENT_LANG = {'zh': 'zh-Hant', 'zh-hans': 'zh-Hans', 'zh-hant': 'zh-Hant'}


def served_lang(url):
    m = re.search(r'netflix\.com/([a-z]{2})(?:-([a-z]{2,7}))?/', url)
    if not m:
        return None
    if m.group(2):
        return SEGMENT_LANG.get(m.group(2), m.group(2))
    return COUNTRY_DEFAULT.get(m.group(1))


def fetch(code, lang):
    """(language Netflix served, genre name) or (None, None)."""
    req = urllib.request.Request(
        f'https://www.netflix.com/browse/genre/{code}',
        headers={'User-Agent': UA, 'Accept-Language': ACCEPT[lang]},
    )
    try:
        with urllib.request.urlopen(req, timeout=20) as res:
            # The name is near the top: don't download the whole (1.5 MB) page.
            head = b''
            while not re.search(rb'og:title" content="[^"]*"', head) and b'</head>' not in head and len(head) < 600_000:
                chunk = res.read(16_384)
                if not chunk:
                    break
                head += chunk
            url = res.geturl()
    except Exception as e:  # noqa: BLE001
        print(f'  {code} {lang}: {e}', file=sys.stderr)
        return None, None
    text = head.decode('utf-8', 'replace')
    m = re.search(r'property="og:title" content="([^"]*)"', text) or re.search(r'<title>([^<]*)</title>', text)
    name = html.unescape(m.group(1)).strip() if m else ''
    name = re.sub(r'\s*[-|]\s*Netflix$', '', name).strip()
    if not name or name == 'Netflix':
        return served_lang(url), None
    return served_lang(url), name


def pause():
    time.sleep(random.uniform(0.5, 1.5))


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--langs', help='comma-separated languages to try (default: all 14, probed first)')
    args = parser.parse_args()
    wanted = args.langs.split(',') if args.langs else LANGS

    # Which of them Netflix serves from this country (one request each).
    langs = []
    for lang in wanted:
        served, _ = fetch(1365, lang)
        print(f'probe {lang}: served {served}')
        if served == lang and lang not in langs:
            langs.append(lang)
        pause()
    if not langs:
        sys.exit('Netflix serves none of the requested languages from here')
    print('collecting:', ', '.join(langs))

    seed = json.loads(SEED.read_text())
    old = json.loads(OUT.read_text()) if OUT.exists() else []
    known = {}
    for g in old:
        for e in [g, *g.get('items', [])]:
            known.setdefault(e['code'], {}).update(e['name'])

    names = {}  # code -> {lang: name}
    codes = list(dict.fromkeys(c for g in seed for c in [g['code'], *(i['code'] for i in g['items'])]))
    for n, code in enumerate(codes, 1):
        names[code] = dict(known.get(code, {}))
        for lang in langs:
            served, name = fetch(code, lang)
            if served == lang and name:
                # Public pages add "Watch" ("… 시청하기"); Netflix's own rows don't.
                if lang == 'ko':
                    name = re.sub(r'\s*시청하기\s*', '', name).strip()
                if lang == 'en':
                    name = re.sub(r'^Watch\s+', '', name)
                names[code][lang] = name
            pause()
        print(f'[{n}/{len(codes)}] {code} {names[code]}')

    out = []
    for g in seed:
        items = []
        seen = set()
        for i in g['items']:
            n = names[i['code']]
            if 'en' in n and i['code'] not in seen:
                seen.add(i['code'])
                items.append({'code': i['code'], 'name': n})
        if not items:
            continue
        group_name = names[g['code']] if 'en' in names[g['code']] else {**names[g['code']], 'en': g['en']}
        out.append({'code': g['code'], 'name': group_name, 'items': items})

    OUT.parent.mkdir(parents=True, exist_ok=True)
    OUT.write_text(json.dumps(out, ensure_ascii=False, indent=1) + '\n')
    total = sum(len(g['items']) for g in out)
    print(f'wrote {OUT.relative_to(ROOT)}: {len(out)} groups, {total} categories')


if __name__ == '__main__':
    main()
