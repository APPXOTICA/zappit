# 확장 출시 과정 (Safari · Chrome)

기준일 2026-11-23. 확장 소스는 `../zappit_extension/`, Safari 컨테이너 Xcode 프로젝트는 `../zappit_safari/Zappit/`.
`☐` = 아직 안 했거나 확인이 필요한 일. 이미 끝난 일은 "완료된 것"에만 짧게 적었다.

## 0. 공통

### 완료된 것 (코드로 확인함)
- 확장 manifest 버전 `1.0.0` (`wxt.config.ts`). 권한: Chrome `storage, offscreen, alarms, scripting` + 호스트 `<all_urls>`, Safari(MV2) `storage, alarms, nativeMessaging` + `<all_urls>`.
- 개인정보처리방침 `https://zappit.tv/privacy`, 약관 `https://zappit.tv/terms` (웹 구현됨).
- 확장 아이콘 16/32/48/96/128 (`public/icon/`).

### 출시 전 공통으로 할 일
- ☐ **버전을 세 곳에서 맞춘다**: `wxt.config.ts`의 `version`, Xcode 두 타겟의 `MARKETING_VERSION`(지금 `1.0`), 빌드 번호 `CURRENT_PROJECT_VERSION`(지금 `1`). 업데이트를 낼 때마다 Safari 빌드 번호는 올려야 업로드가 된다.
- ☐ **빌드에는 `zappit_extension/.env`가 필요하다**(`VITE_FIREBASE_*`). 운영 값인지 확인하고 빌드한다.
- ☐ **테스트 로그 제거**: 앱 쪽 TEMP 로그(`[zappit-sound]`, `[zappit-ack]`, DeviceCheck 디버그 print)와 확장의 TEMP 코드(`src/lib/content/survey-probe.ts`와 `entrypoints/content/index.ts`의 `startSurveyProbe()` 호출)를 지운다.
- ☐ **권한 사유 문구 준비**(두 스토어 모두 물어봄). 한 줄 요약: "Zappit은 폰으로 모든 사이트의 영상을 조종하는 리모컨이라 어떤 사이트의 `<video>`에도 접근해야 한다. 페이지 내용은 수집하지 않고 재생 상태만 폰으로 보낸다."
  - `<all_urls>`: 아무 사이트의 영상 재생·일시정지·탐색
  - `storage`: 설정과 연결 상태 저장
  - `alarms`: 연결 유지, 슬립 타이머
  - `scripting`(Chrome): 확장 업데이트 전에 열려 있던 탭에 content script 다시 넣기
  - `offscreen`(Chrome): 연결·이동 효과음 재생
  - `nativeMessaging`(Safari): 컨테이너 앱으로 효과음 재생 요청
- ☐ **스토어 주소를 웹에 넣는다**: 출시 후 `zappit_web/src/lib/stores.ts`(Chrome·Safari 주소)를 채우고 웹을 배포한다. 비어 있으면 `/get`이 "출시일 표시"로 남는다. CLAUDE.md의 URLs 항목도 같이 갱신한다.

### 스토어에 올릴 공통 자료
- 스크린샷: 확장 팝업의 QR 화면, 연결된 상태, YouTube·Netflix가 폰으로 조종되는 브라우저 화면.
- 한 줄 설명(Chrome 요약은 132자 이내, 예: "Control any video in your computer's browser from your phone."), 상세 설명, 지원 이메일, 개인정보 URL.
- 심사 메모: 이 확장은 단독으로 동작하지 않고, 폰 앱 Zappit과 QR로 연결하는 컴패니언이다. 테스트 방법(앱 설치 → 확장 팝업의 QR 스캔 → YouTube 재생)을 영문으로 적는다. 앱이 심사에 필요하니 App Store 링크나 시연 영상을 같이 준다.

---

## 1. Safari (Mac App Store)

Safari 웹 확장은 zip 업로드가 아니라 **macOS 컨테이너 앱(+ 확장 타겟)을 Mac App Store에 올리는 방식**이다.

### 완료된 것 (프로젝트에서 확인함)
- Xcode 프로젝트 `zappit_safari/Zappit/Zappit.xcodeproj`에 타겟 2개: 호스트 앱 `Zappit`(번들 ID `tv.zappit.safari`), 확장 `Zappit Extension`(`tv.zappit.safari.Extension`). 접두사가 일치한다.
- Team `CAR2QJ93ZS`, 자동 서명, 최소 macOS 12.0.
- App Sandbox + Hardened Runtime 켜짐(두 타겟). 호스트 앱은 Outgoing Connections 켜짐.
- 컨테이너 앱 창(`Main.html`)이 확장 켜는 법을 안내하고 "Open Safari Extensions Preferences" 버튼이 있다(심사 필수 항목 충족).
- 확장은 MV2 persistent background page로 빌드한다(`npm run build:safari` → `.output/safari-mv2`, Xcode 프로젝트가 이 폴더를 참조).
- 소리는 컨테이너 앱의 `SafariWebExtensionHandler.swift`가 재생(`sendNativeMessage`).

### 아직 할 일
1. ☐ **App Store Connect에 macOS 앱 레코드 만들기** (이미 만들었는지 먼저 확인).
   - 새 앱 → 플랫폼 macOS, 번들 ID `tv.zappit.safari`(Apple Developer 포털에 없으면 먼저 등록), SKU 예 `zappit-macos-safari`.
   - 이름은 iOS 앱 `Zappit`과 겹치면 `Zappit for Safari` 같은 이름을 쓴다.
2. ☐ **Info.plist 보완 (업로드 검증에서 막히기 쉬운 곳)**
   - `LSApplicationCategoryType` 추가(예: `public.app-category.utilities`). Mac App Store 업로드에 필수.
   - 암호화 수출 규정: `ITSAppUsesNonExemptEncryption`을 `NO`로 넣으면 빌드마다 묻는 질문이 사라진다(HTTPS 외 자체 암호화가 없으면 NO).
   - 두 타겟의 앱 아이콘(1024) 확인. 컨테이너 앱 `Assets.xcassets/AppIcon`이 채워져 있어야 한다.
3. ☐ **확장 빌드를 최신으로**: `cd zappit_extension && npm run build:safari` → 그 다음 Xcode. 버전·빌드 번호를 위 0번 규칙대로 맞춘다. (Safari 빌드는 ASCII만 쓰는 설정이 적용돼 있다.)
4. ☐ **Archive 후 업로드**
   - 실행 대상 `Any Mac (Apple Silicon, Intel)` → Product → Archive → Organizer → Distribute App → App Store Connect → Upload.
   - Xcode 외 다른 곳에서 `xcodebuild`로 컨테이너 앱을 빌드하지 않는다(확장이 두 번 등록됨).
5. ☐ **메타데이터** (빌드 처리가 끝난 뒤 App Store Connect)
   - 스크린샷: Mac 16:10 규격(1280×800, 1440×900, 2560×1600, 2880×1800) 중 하나. Safari 툴바에 아이콘과 팝업이 보이는 화면, 재생 중 화면.
   - 개인정보: URL `https://zappit.tv/privacy`. 데이터 수집 항목은 iOS 앱과 같게 설정(iOS 앱은 6개 유형으로 게시됨).
   - 심사 정보: 연락처, 위 "심사 메모". 로그인 필요 없음.
   - 연령 등급, 콘텐츠 권한(Content Rights), 가격(무료), 판매 지역(중국 본토 제외). iOS 앱에서 정한 값과 맞춘다.
6. ☐ **심사 제출**. 승인 후 출시. 첫 심사는 며칠 걸린다.
7. ☐ **사용자 안내**: 설치 후 Safari 설정 → 확장 프로그램에서 Zappit을 켜고, 모든 웹사이트 접근을 허용해야 한다(FAQ `safari-access` 항목이 이를 설명한다).

---

## 2. Chrome (Chrome 웹 스토어)

Chrome은 zip을 올리는 방식이다. 심사에 보통 며칠이 걸리고, `<all_urls>` 호스트 권한 때문에 **심층 심사**로 분류돼 더 걸릴 수 있다.

### 아직 할 일 (전부 미완료)
1. ☐ **개발자 계정 등록**: Chrome 웹 스토어 개발자 대시보드(`chrome.google.com/webstore/devconsole`)에서 가입(1회 등록비 US$5), Google 계정 2단계 인증 필요.
   - 판매자 구분(Trader/Non-trader, EU DSA)과 연락처 이메일 인증을 완료해야 공개할 수 있다.
2. ☐ **zip 만들기**: `cd zappit_extension && npm run zip` → `.output/zappit-1.0.0-chrome.zip`. 업로드 전에 `.output/chrome-mv3`을 크롬에 "압축해제된 확장 로드"로 직접 시험한다.
3. ☐ **manifest의 `key` 필드 정리**: 지금 `wxt.config.ts`에 개발용 고정 키가 들어 있다(확장 ID를 개발 중 고정하려는 용도). 업로드 전에 제거하거나 스토어가 부여한 공개 키로 교체한다(스토어 ID는 대시보드의 Package 탭). ID에 의존하는 곳(Firebase 설정, 허용 목록 등)이 없는지 확인한다.
4. ☐ **새 항목 만들고 zip 업로드**: Add new item → zip 업로드.
5. ☐ **Store listing 탭**
   - 이름 `Zappit`, 요약(132자 이내), 상세 설명, 카테고리(예: Productivity), 언어.
   - 아이콘 128×128(있음), 스크린샷 1~5장(1280×800 또는 640×400), **작은 프로모션 타일 440×280(필수)**, 마키 1400×560(선택).
   - 홈페이지 `https://zappit.tv`, 지원 URL/이메일.
   - 확장은 22개 언어(`public/_locales`)로 번역돼 있다. 대시보드가 manifest의 이름·설명(`extName`·`extDescription`)을 언어별로 읽고, 상세 설명과 스크린샷은 언어별로 따로 넣는다(영어만 넣어도 된다).
6. ☐ **Privacy practices 탭 (심사의 핵심)**
   - Single purpose: "폰으로 컴퓨터 브라우저의 영상을 조종하는 리모컨".
   - 권한별 사유(0번의 문구 그대로). 특히 `<all_urls>`의 사유를 구체적으로 쓴다.
   - Remote code: **없음**으로 답한다. 원격 셀렉터 JSON(`zappit-23ad8.web.app/selectors/v1.json`)은 코드가 아니라 데이터다.
   - 데이터 사용 공개: 수집 항목(예: 인증 정보로서 익명 계정 ID, 웹 기록에 해당하는 현재 탭의 주소·제목을 폰으로 전달)을 정직하게 체크하고, 판매하지 않음, 서비스 제공 목적 외에 사용하지 않음에 동의한다. 개인정보 URL `https://zappit.tv/privacy`.
7. ☐ **Distribution 탭**: 공개 범위(처음에는 Unlisted나 Trusted testers로 시험해도 됨), 지역(전체, 중국 제외 여부는 앱 설정과 맞춤), 무료.
8. ☐ **심사 메모(Test instructions)**: 위 공통 심사 메모를 붙인다. 폰 앱이 있어야 연결이 확인되므로, 앱 설치 링크나 시연 영상 링크를 같이 적는다.
9. ☐ **제출 → 승인 후 게시**: 게시 방식(승인 즉시 / 수동 게시)을 고를 수 있다. 수동 게시로 두면 Safari 출시 시점과 맞추기 쉽다. 이후 웹 `stores.ts`에 Chrome 주소를 넣는다.

### 업데이트할 때 (Chrome)
- `wxt.config.ts`의 `version`을 올리고 `npm run zip` → 대시보드 Package 탭에서 새 zip 업로드 → 제출. 권한을 늘리면 사용자에게 재동의 경고가 뜨고 심사도 길어지니, 가능하면 권한은 늘리지 않는다.
- 사이트 UI가 바뀌어서 생기는 문제는 스토어 심사 없이 원격 셀렉터 JSON(`zappit_firebase/hosting/selectors/v1.json`, `firebase deploy --only hosting`)으로 고친다.

---

## 3. 출시 순서 제안
1. 위 0번(로그 제거, 버전, 권한 문구)을 끝낸다.
2. Chrome과 Safari를 같은 날 제출한다. 두 심사는 서로 독립적이다.
3. 둘 다 승인되면 `stores.ts`에 주소를 넣고 웹을 배포한 뒤 앱(iOS·Android)을 게시한다. 앱을 먼저 게시하면 설치한 사용자가 확장을 찾지 못한다.
