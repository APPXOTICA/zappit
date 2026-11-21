# Onboarding · Tutorial · FAQ 개발 지시

디자인 시안은 `/Users/vincentgigandet/Documents/Project/zappit_assets/docs/design/`에 있다. 아래에서 `docs/design/...`은 이 폴더 기준 경로다.

`docs/design/onboarding-animations.md`와 `screens/onboarding-frames/`를 기준으로 온보딩 애니메이션을 구현하고, `docs/design/web/HANDOFF.md`의 FAQ 절도 다시 읽어.

### 1. Onboarding 구현 (모바일 앱 네이티브)
- **디자인:** `docs/design/boards/OB-0.dc.html`, `OB-1.dc.html`, `OB-2.dc.html`, 정지 화면 `docs/design/screens/49-OB-0.png`, `45-OB-1.png`, `46-OB-2.png`. 화면 설명은 `docs/design/HANDOFF.md`의 "화면 목록 → 온보딩"에 있다.
- **노출 조건:** 현재 앱을 처음 실행하면 바로 QR 스캔 화면이 나오는데, 최초 실행 시(온보딩 미완료 상태) QR 스캔 화면 직전에 온보딩을 먼저 보여줘. 흐름: `Welcome` → (`Get started`) → `Step 1 (1 / 2)` → (`Next`) → `Step 2 (2 / 2)` → (`Done`) → QR 스캔 화면. (온보딩 완료 후에는 기존처럼 바로 QR 스캔 화면으로 진입)
- **공통 레이아웃:** 배경 `#01020A`(QR 스캔 화면과 같음), 위쪽 줄에 2칸 진행 막대와 `1 / 2`, `2 / 2` 표시(Step 1, Step 2만. Welcome에는 없다), 가운데 정렬 제목(26pt)과 설명(16pt), 그 아래 애니메이션 무대(콘텐츠 폭, 16:10), 맨 아래 accent 주 버튼(높이 56pt, pill).
- **애니메이션:** 세 화면 모두 7초 무한 반복. 시점별 동작, 단위 환산(`cqw` = 무대 폭의 1%), keyframes 값은 `docs/design/onboarding-animations.md`, 프레임별 모습은 `docs/design/screens/onboarding-frames/`(5%마다 20장씩)와 `screens/50-OB-0-anim-frames.png`, `47-OB-1-anim-frames.png`, `48-OB-2-anim-frames.png`를 기준으로 맞춘다.
- **Welcome (Step 1 직전):**
  - 위쪽 진행 막대와 `1 / 2` 표시 없음. 위쪽 44pt는 빈 줄로 두어 제목 높이를 Step 1·2와 맞춘다.
  - 제목: `Your phone is now your remote` (두 줄로 고르게: "Your phone is / now your remote")
  - 설명: `Control any video on your computer. Setup takes just two quick steps.`
  - 애니메이션: 폰 리모컨의 재생/일시정지 버튼을 탭하면 노트북 영상이 멈췄다가 다시 재생되는 7초 반복. 무대는 화면 폭 전체(390pt, 비율 1:0.84)를 쓰고 배경 카드가 없다. 위아래 남는 공간의 가운데에 놓는다. 시점별 동작과 값은 `onboarding-animations.md`의 OB-0 절(`gw-*`).
  - 하단 버튼: `Get started` (탭하면 Step 1로 이동)
- **Step 1 (브라우저 익스텐션 설치 안내):**
  - 제목: `First, add Zappit to your browser`
  - 설명: `Open this link in Chrome or Safari on your computer to install the free extension.` (이미 앱을 설치한 상태이므로 앱 설치 안내는 제외)
  - 애니메이션: 브라우저 주소창에 `zappit.tv/get` 입력 → 페이지의 Add extension 클릭 → Added → 툴바에 Zappit 아이콘이 나타남.
  - 애니메이션 아래에 `zappit.tv/get` 주소 카드(링크 아이콘, 주소, `Tap to copy`, 복사 아이콘)를 배치하고, 카드를 탭하면 클립보드 복사(`Link copied` 스낵바)가 된다.
  - 카드 아래 `Share link` 버튼(공유 아이콘)을 탭하면 OS 네이티브 공유 시트(Share Sheet)가 열려 `https://zappit.tv/get` 링크를 AirDrop, 메신저, 메일 등으로 공유할 수 있게 함. 주소는 `config.dart`의 `getExtensionUrl`을 쓴다.
  - 하단 버튼: `Next` (탭하면 Step 2로 이동)
- **Step 2 (QR 코드 스캔 연결 안내):**
  - 왼쪽 위 뒤로 버튼: Step 1로 돌아간다.
  - 제목: `Scan the QR code`
  - 설명: `Click the Zappit icon in your browser toolbar, then point your camera at the QR code.`
  - 애니메이션: 툴바의 Zappit 아이콘 클릭 → 확장 팝업의 QR → 폰으로 스캔 → 연결. 웹 가이드 시작하기 Step 2와 같은 애니메이션이다.
  - 애니메이션 아래 도움말 줄(퍼즐 아이콘, 문구 `Don't see the Zappit icon?`, 오른쪽 `>` 화살표). 줄 전체가 버튼이고, 탭하면 인앱 웹뷰(상단 네이티브 뒤로가기 앱바 유지)로 `https://zappit.tv/faq?embed=1#toolbar-icon`을 연다. 주소는 `config.dart`에 상수로 추가한다. Chrome·Safari별 해결 방법은 화면에 쓰지 않고 그 FAQ 항목(13번)에서 보여 준다.
  - 하단 버튼: `Done` (탭하면 온보딩 완료 상태를 저장하고 즉시 QR 코드 스캔 화면을 띄움)


### 2. Tutorial(Guide) 구현 (모바일 앱 + 웹 연동)
- **모바일 앱:** `More` 화면의 `Support` 섹션에 `Tutorial` 메뉴 항목(우측 끝에 `>` 화살표 아이콘 포함)을 만들고, 탭하면 인앱 웹뷰(WebView)로 `https://zappit.tv/guide?embed=1`을 띄워 줘. (상단에는 네이티브 뒤로가기 앱바 유지) 지금 `config.dart`의 `tutorialUrl`은 `https://zappit.tv/tutorial`이라 `?embed=1`이 없으니 함께 바꾼다.
- **웹(`zappit.tv/guide`) 임베드 모드 분기 처리:**
  - 일반 웹 브라우저 접속(`?embed=1` 없음) 시에는 `How to start` 1단계에 *"Add the Zappit extension to Chrome or Safari on your computer, and install the Zappit app on your iPhone or Android phone."* 문구를 그대로 보여줘.
  - 반면 모바일 앱 내 웹뷰(`?embed=1` 파라미터 포함)로 열렸을 때는 이미 앱이 설치된 상태이므로, 1단계 문구에서 모바일 앱 설치 안내를 제외한 *"Add the Zappit extension to Chrome or Safari on your computer (`zappit.tv/get`)."* 형태로 자동 분기해서 보여줘. (다국어 번역 키도 함께 대응)
  - 이 분기 문구는 디자인 시안(`docs/design/web/`)에 아직 반영되어 있지 않다. 시안의 1단계 문구 키는 `guide.step1Body`이고, 임베드용 키는 새로 추가한다.

### 3. FAQ 구현 (모바일 앱 + 웹)
- **모바일 앱:** `More` 화면에서 `Tutorial` 메뉴 바로 아래에 `FAQ` 메뉴 항목(우측 끝에 `>` 화살표 아이콘 포함)을 만들고, 탭하면 인앱 웹뷰(WebView)로 `https://zappit.tv/faq?embed=1`을 띄워 줘.
- **웹:** 항목 13개, 두 묶음(General, Permissions & troubleshooting), 항목별 고정 앵커 id, 번호·점 목록과 굵은 UI 이름. 자세한 내용은 `docs/design/web/HANDOFF.md`의 FAQ 절과 `docs/design/web/screens/18` ~ `26`.
- **앵커로 열기:** `#id`로 열면 그 항목만 펼치고 그 위치로 스크롤한다. 앱 알림이 관련 항목을 열 때 이 주소를 쓴다(예: `https://zappit.tv/faq?embed=1#site-access`). 앱이 이미 여는 `https://zappit.tv/faq#sound-blocked`(`config.dart`의 `soundBlockedHelpUrl`)도 이 규칙을 따르며, id는 바꾸지 않는다.


### 번역
- 일단 영어 버전으로 구현하고, 구현이 완성된 후 사용자가 지시할 때 번역을 진행한다.
