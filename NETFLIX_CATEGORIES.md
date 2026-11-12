### [넷플릭스 Categories 탐색기능 구현]

#### 1. 기능 목표

* 넷플릭스 홈/브라우징 컨트롤러 화면에서 넷플릭스의 숨겨진 세부 카테고리 코드(`[netflix.com/browse/genre/](https://netflix.com/browse/genre/)[code]`)를 모바일에서 검색·선택하여 PC 브라우저 화면을 해당 카테고리로 즉시 전환하는 기능 구현.

#### #### 2. 데이터 구성

*  원본 데이터 수급처 (초기 코드 목록 확보)
스크립트 실행 전 파싱 대상이 될 '기본 카테고리 코드 목록(100~150개)'은 아래 공개 소스 중 하나를 참조하여 기본 시드(Seed) 배열로 하드코딩하거나 1차 추출함.

GitHub 공개 오픈소스:

edri244/netflix-hidden-categories (JSON 형태 제공)

carmengalvan/netflix-secret-codes

전문 아카이브 웹사이트:

netflix-codes.com (상위 주요 카테고리 번호 및 기본 영문명 테이블 제공)

* **데이터셋 파일 추가**: `assets/data/netflix_categories.json`
* 핵심 카테고리 약 100~200개 목록을 구성하며, 전 세계 사용자를 위해 14개 주요 언어 번역을 포함합니다.
* 지원 언어 목록: `en`(기본/Fallback), `es`, `fr`, `de`, `it`, `tr`, `ar`, `ko`, `ja`, `zh-Hans`, `zh-Hant`, `vi`, `id`, `th`

```json
[
  {
    "code": 43040,
    "name": {
      "en": "Action Comedies",
      "ko": "액션 코미디",
      "ja": "アクションコメディ",
      "zh-Hans": "动作喜剧",
      "zh-Hant": "動作喜劇",
      "es": "Comedias de acción",
      "fr": "Comédies d'action",
      "de": "Actionkomödien",
      "it": "Commedie d'azione",
      "tr": "Aksiyon Komedileri",
      "ar": "كوميديا الحركة",
      "vi": "Phim hài hành động",
      "id": "Komedi Aksi",
      "th": "แอ็คชั่นคอมเมดี้"
    }
  },
  {
    "code": 3327,
    "name": {
      "en": "Alien Sci-Fi",
      "ko": "외계인 SF",
      "ja": "エイリアンSF",
      "zh-Hans": "外星人科幻片",
      "zh-Hant": "外星人科幻片",
      "es": "Ciencia ficción sobre alienígenas",
      "fr": "SF d'extraterrestres",
      "de": "Alien-Sci-Fi",
      "it": "Fantascienza con alieni",
      "tr": "Uzaylı Bilim Kurguları",
      "ar": "خيال علمي عن الكائنات الفضائية",
      "vi": "Phim khoa học viễn tưởng về người ngoài hành tinh",
      "id": "Sci-Fi Alien",
      "th": "ไซไฟเกี่ยวกับเอเลี่ยน"
    }
  },
  {
    "code": 67879,
    "name": {
      "en": "Korean TV Shows",
      "ko": "한국 TV 시리즈",
      "ja": "韓国TV番組・ドラマ",
      "zh-Hans": "韩国电视剧",
      "zh-Hant": "韓國電視劇",
      "es": "Series de TV coreanas",
      "fr": "Séries coréennes",
      "de": "Koreanische Serien",
      "it": "Serie TV coreane",
      "tr": "Kore Dizileri",
      "ar": "برامج تلفزيونية كورية",
      "vi": "Chương trình truyền hình Hàn Quốc",
      "id": "Serial TV Korea",
      "th": "รายการทีวีเกาหลี"
    }
  }
]

```

* **클라이언트 언어 매핑 및 Fallback 규칙**:
1. 기기 현재 로케일의 언어 코드(`Locale.languageCode`, 중국어의 경우 scriptCode 구분 `zh-Hans` / `zh-Hant`)를 추출합니다.
2. `item.name[langCode]`를 먼저 조회하고, 값이 없거나 지원하지 않는 언어권일 경우 무조건 `item.name['en']`으로 Fallback 처리합니다.
3. 바텀시트 검색창 필터링 시에는 `[현재 표시 언어 텍스트]`와 `[en 영문 텍스트]` 양쪽 모두에 대해 `contains(query)` 검사를 수행하여 언어 장벽 없이 유연하게 검색되도록 합니다.

```



#### 3. 모바일 앱 UI/UX 구현

* **진입 버튼 배치**:
* 넷플릭스 홈에 표시되는 D-pad 의 상단에 Categories 버튼 추가 (첨부 이미지 참고)


* **카테고리 선택 모달 (Bottom Sheet)**:
* 탭 시 드로어/바텀시트 오픈.
* 상단: 실시간 검색창 (`TextField`) 제공 (한국어/영어 필터링 지원).
* 본문: 카테고리 리스트뷰 (`ListView.builder`).



#### 4. 통신 및 익스텐션 연동 (동작 플로우)

* 유저가 바텀시트에서 특정 항목을 탭했을 때:
1. 모바일 앱에서 웹소켓(Ably 등) 채널로 URL 변경 명령 이벤트 전송.
* Payload 예시: `{"action": "navigate_url", "url": "[https://www.netflix.com/browse/genre/43040](https://www.netflix.com/browse/genre/43040)"}`


2. 크롬 익스텐션의 백그라운드 서비스 워커(또는 Content Script)에서 해당 메시지 수신.
3. 현재 넷플릭스 탭 URL 업데이트:
```javascript
chrome.tabs.update(activeTabId, { url: message.url });

```


4. 모바일 앱의 바텀시트 닫힘 처리.



---------------------------------


### [넷플릭스 장르 공식 다국어 번역 데이터셋 구축시 고려사항]

#### 1. 문제점

* 카테고리 이름을 단순히 직역하면 실제 넷플릭스 서비스 내 공식 번역명과 괴리가 발생함.
* 예: 영문 `Alien Sci-Fi (Code: 3327)`를 일반 번역하면 `외계인 SF`가 되지만, 실제 넷플릭스 공식 한국어 명칭은 `외계인이다!`로 등록되어 있음.


* 공식 명칭과 다를 경우 사용자가 넷플릭스 UI와 대조할 때 혼란을 겪고 이질감을 느끼므로, **넷플릭스 웹에 실제 등록된 공식 번역 타이틀을 수집**해야 함.

#### 2. 해결 방안 (파이썬 스크래핑 스크립트 작성)

* 넷플릭스 장르 페이지(`[https://www.netflix.com/browse/genre/](https://www.netflix.com/browse/genre/)[CODE]`)는 비로그인 상태에서도 `Accept-Language` 헤더에 맞춰 해당 국가의 공식 타이틀(`<meta property="og:title">` 또는 `<title>`)을 반환함.
* 핵심 장르 코드 리스트(약 100~150개)를 기반으로 14개 언어 헤더를 순회하며 실제 명칭을 추출, 최종 `netflix_categories.json`을 자동 생성하는 파이썬 스크립트 작성을 요청함.

#### 3. 스크립트 요구사항

1. **타깃 언어 (14개):**
* `en`, `es`, `fr`, `de`, `it`, `tr`, `ar`, `ko`, `ja`, `zh-Hans`, `zh-Hant`, `vi`, `id`, `th`


2. **요청 처리 및 방어 로직:**
* 일반 브라우저 User-Agent 헤더 설정.
* 각 언어별 `Accept-Language` 헤더 설정 (예: `ko-KR,ko;q=0.9`, `ja-JP,ja;q=0.9` 등).
* 넷플릭스 차단(Rate limit) 방지를 위해 요청 사이 랜덤 딜레이(0.5~1.5초) 적용.
* 파싱 대상: `<meta property="og:title">` 또는 `<title>` 내용에서 ` - Netflix`, ` | Netflix` 접미사 제거.
* 특정 언어 추출 실패 시 `en` 영문 타이틀로 Fallback 처리.


3. **출력 결과 형식:**
* `assets/data/netflix_categories.json` 경로로 저장.


```json
[
  {
    "code": 3327,
    "name": {
      "en": "Alien Sci-Fi",
      "ko": "외계인이다!",
      "ja": "エイリアンSF",
      ...
    }
  }
]

```


직역 불일치 문제를 해결하기 위한 파이선 스크립트 방식을 고려해볼 것. 더 나은 대안이 있으면 제안할 것.


---------------------------------


### 위 구현 계획은 Gemini가 세운 것으로, 얼마든지 수정, 보완 가능. 현재 코드를 바탕으로 더 나은 대안이 있을 경우 그 방법으로 개발할 것