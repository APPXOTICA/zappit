# 체코어(cs) 확장·웹 번역 검토 보고서

확장 번역은 대체로 자연스러웠지만, 'Reset' 설명의 ‘Resetuje telefony’가 체코어에서 폰 초기화(공장 초기화)로 읽힐 수 있어 ‘연결을 끊는다(Odpojí)’로 고쳤습니다. 웹에서는 Pro preview를 앱 용어 ‘Období Pro zdarma’로 바꾸고, 앱과 달랐던 ‘A-B Loop’, ‘Přehrát znovu’, ‘FAQ’, 메뉴 경로 표기를 앱 문구와 똑같이 맞췄으며, 앱의 `pairPhoneLimit`에 확장의 실제 버튼 이름 ‘Resetovat’과 위치(‘Nastavení’)를 넣었습니다.

변경 수: 확장 3개, 웹 26개, 앱 1개

## 확장

| 키 | 수정 전 | 수정 후 | 문제 (한국어, 가이드 원칙 번호 포함) |
|---|---|---|---|
| resetHint | Resetuje všechny připojené telefony a prohlížeče, nejen tento. | Odpojí všechny připojené telefony a prohlížeče, nejen tento. | ‘telefon resetovat’은 체코어에서 폰 초기화로 읽혀 폰 데이터가 지워진다고 오해할 수 있음. 실제로 일어나는 일(연결 해제)을 씀 (원칙 6) |
| resetBody | Všechny připojené telefony a prohlížeče se resetují, nejen tento. Pro opětovné připojení budete muset znovu naskenovat QR kód. | Všechny připojené telefony a prohlížeče se odpojí, nejen tento. K opětovnému připojení budete muset znovu naskenovat QR kód. | 위와 같은 오해 제거, ‘Pro opětovné připojení’(영어식 ‘pro’) → 체코어 표준 ‘K opětovnému připojení’ (원칙 6, 1) |
| disconnectBrowserBody | … Pro opětovné připojení budete muset znovu naskenovat QR kód. | … K opětovnému připojení budete muset znovu naskenovat QR kód. | 영어식 ‘pro + 명사’ 구문을 체코어 표준으로, resetBody와 표현 통일 (원칙 1, 공통 규칙) |

## 웹

| 키 | 수정 전 | 수정 후 | 문제 (한국어, 가이드 원칙 번호 포함) |
|---|---|---|---|
| common.nav.faq | FAQ | Časté dotazy | 앱 메뉴(`faq`)와 웹 제목이 ‘Časté dotazy’인데 메뉴만 영어 약어 (공통 규칙: 앱·웹 용어 일치) |
| guide.helpCta | Přejít na FAQ | Přejít na časté dotazy | 위와 같음 (공통 규칙) |
| faq.sub | Rychlé odpovědi o Zappit. | Rychlé odpovědi na otázky o Zappitu. | 브랜드 격변화 누락(다른 문장은 ‘Zappitu’), ‘odpovědi o’는 어색 (원칙 1) |
| faq.q1 | Co je Pro Preview? | Co je období Pro zdarma? | 영어 ‘Pro Preview’를 그대로 둠. 앱 용어 ‘Období Pro zdarma’와 일치시킴 (원칙 1, 4, 9) |
| faq.a1 | Pro Preview vám umožní 7 dní zdarma … Platební karta není potřeba a po skončení se nic neúčtuje. Je to něco jiného než bezplatná zkušební verze placeného předplatného … | Během období Pro zdarma můžete 7 dní používat všechny funkce Pro … Nic neplatíte a ani po skončení se nic automaticky neúčtuje. Je to něco jiného než zkušební verze zdarma u placeného předplatného … | Pro preview 용어 통일, ‘No credit card’ 관용구 직역 제거(앱 `proPreviewStarted`와 같은 방식), 스토어 체험은 앱 용어 ‘zkušební verze zdarma’로 (원칙 4, 1) |
| faq.a3 | … na mobilních datech a kancelářské Wi-Fi. | … na mobilních datech a v kancelářské Wi-Fi. | 전치사 누락으로 ‘na … Wi-Fi’로 읽힘 (문법) |
| faq.a9 | … Safari se možná před spuštěním Zappitu ptá. … | … Safari je možná nastavené tak, aby se před spuštěním Zappitu ptalo. … | 원문의 ‘설정되어 있을 수 있다’가 빠져 Safari가 원래 묻는 것처럼 읽힘 (원칙 6) |
| guide.step1Title | Nainstalujte Zappit na obě strany | Nainstalujte Zappit do počítače i telefonu | ‘both sides’ 직역으로 무엇을 가리키는지 불분명 (원칙 1, 6) |
| guide.f1Tip | … v nastavení ovladače → Rychlost při podržení. | … v Nastavení ovladače → Rychlost při podržení. | 앱 화면 이름 `remoteSettings` ‘Nastavení ovladače’를 그대로 인용 (공통 규칙: 메뉴 이름 일치) |
| guide.f2Body | … Klepněte na Sdílet (Share), … | … Klepněte na Sdílet, … | YouTube·TikTok 체코어 앱 버튼은 ‘Sdílet’. 영어 병기 불필요 (원칙 1) |
| guide.f4Title | Opakování úseku (A-B Loop) | Smyčka A-B | 앱 용어 ‘smyčka A-B’와 통일, 영어 병기 제거 (원칙 1, 9) |
| guide.f4Tip | … v nastavení ovladače → Počet opakování A-B Loop. | … v Nastavení ovladače → Počet opakování smyčky A-B. | 앱 메뉴 `abLoopCount` ‘Počet opakování smyčky A-B’와 정확히 일치시킴 (공통 규칙) |
| landing.demo.sub | … prohlížeč odpoví okamžitě. | … prohlížeč zareaguje okamžitě. | ‘odpoví’(대답하다)는 기기 반응에 어색 (원칙 1) |
| landing.demo.hint1 | Podržte ▶ pro 2× | Podržením ▶ zrychlíte na 2× | 영어식 ‘pro 2×’, 무엇이 되는지 불분명 (원칙 1, 6) |
| landing.demo.hint3 | Nastavte [ a ] pro smyčku | Smyčku nastavíte tlačítky [ a ] | 영어식 ‘pro + 명사’ (원칙 1) |
| landing.demo.hint4 | Pauza, pak táhněte stupnici | Pozastavte a táhněte stupnici | 명사와 명령형이 섞인 어색한 문장, 앱 동사 ‘Pozastavit’와 맞춤 (원칙 1) |
| landing.snack.abOn | A-B Loop {a} – {b} | Smyčka A-B {a} – {b} | 앱 용어 ‘smyčka A-B’로 통일 (원칙 9) |
| landing.snack.abOff | A-B Loop vypnut | Smyčka A-B vypnuta | 용어 통일, 성(여성) 일치 (원칙 9, 문법) |
| landing.snack.turnOffAbFirst | Nejdřív vypněte A-B Loop | Nejdřív vypněte smyčku A-B | 앱 `turnOffAbFirst`와 똑같이 (원칙 9) |
| landing.snack.replay | Přehrát znovu | Přehrát od začátku | 앱 `replay`와 똑같이 (원칙 9) |
| landing.a11y.replay | Přehrát znovu | Přehrát od začátku | 위와 같음 (원칙 9) |
| landing.a11y.back | O 10 sekund zpět | Zpět o 10 sekund | 앱 `backSeconds`에서 고친 자연 어순과 맞춤 (원칙 5) |
| landing.a11y.forward | O 10 sekund vpřed | Vpřed o 10 sekund | 위와 같음 (원칙 5) |
| get.unsupported | … zatím nefunguje. Zatím použijte Chrome nebo Safari. | … zatím nefunguje. Použijte Chrome nebo Safari. | ‘zatím’ 중복 (문체) |
| get.unsupportedNamed | … zatím nefunguje. Zatím použijte Chrome nebo Safari. | … zatím nefunguje. Použijte Chrome nebo Safari. | 위와 같음 |
| get.nextBody | … na panelu prohlížeče … | … na panelu nástrojů prohlížeče … | 다른 문구·앱(`onboarding2Body`)의 ‘panel nástrojů’와 통일 (원칙 9) |

## 앱 (교차 참조 수정)

| 키 | 수정 전 | 수정 후 | 문제 (한국어, 가이드 원칙 번호 포함) |
|---|---|---|---|
| pairPhoneLimit | … Pokud k ostatním telefonům nemáte přístup, klikněte v rozšíření Zappit v počítači na „Reset“. | … Pokud k ostatním telefonům nemáte přístup, otevřete v počítači rozšíření Zappit a v „Nastavení“ klikněte na „Resetovat“. | 확장 버튼 이름이 이제 ‘Resetovat’이고, 그 버튼은 ‘Nastavení’ 안에 있어 위치를 함께 알려 줌 (원칙 6, 9) |

앱의 다른 확장 인용 문구(`obAnimRemoteConnected` ‘Ovladač připojen’, `obAnimYourPhones` ‘Vaše telefony’, `obAnimNewCode`)는 확장 번역과 이미 같아 고치지 않았습니다.

## 결정이 필요한 사항

- **Tutorial / Guide 이름:** 앱 More의 `tutorial`은 ‘Návod’인데, 그 메뉴가 여는 웹 페이지 제목은 ‘Průvodce’입니다. 웹이 앱 메뉴 이름을 인용하지는 않아 그대로 두었지만, 같은 페이지를 두 이름으로 부르게 됩니다. 한쪽으로 맞출지 정해 주세요(앱을 ‘Průvodce’로 바꾸는 쪽을 권합니다).
- **Safari·Chrome·iOS·Android 메뉴 이름:** FAQ의 ‘Upravit webové stránky…’, ‘Při návštěvě jiných webových stránek’, ‘Může číst a měnit data webů’ 등은 기존 번역을 유지했습니다. 체코어 OS·브라우저 화면에서 실제 표기를 한 번 확인하면 좋습니다.
- **‘na obrazovce nákupu’:** FAQ a1의 ‘구매 화면’은 앱에 정해진 화면 이름이 없어 일반 표현으로 두었습니다.
