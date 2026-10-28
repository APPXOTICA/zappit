# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## 목표
- zappit Flutter 프로젝트, zappit_extension을 모두 구현한다.
- zapit_web에 Privacy, Terms 페이지를 만든다, 메인 랜딩 페이지는 비워둔다.
- zapit_web은 Svelte로 구현한다.


## 저장소 구성

Zappit은 폰(Flutter 앱)으로 컴퓨터 브라우저의 영상 재생을 제어하는 리모컨이다. 형제 디렉터리 네 개가 함께 동작한다.

- `zappit/` (이 저장소): Flutter 앱. 리모컨 역할.
- `../zappit_extension/`: 브라우저 확장(WXT + Svelte 5 + TypeScript). 영상 페이지를 실제로 제어한다. 구조는 아래 "확장 구조" 참고.
- `../zappit_firebase/`: Firestore 규칙(`firestore.rules`), RTDB 규칙(`database.rules.json`), Cloud Functions(`functions/index.js`, Node 22). `onUserCreated`, `onUserDeleted`, callable `delete_account`(앱에서 계정 삭제 시 호출), callable `ably_token`(Ably 토큰 발급).
- `../zappit_web/`: zappit.tv 정적 사이트(Render). 아직 비어 있다.
- `../zappit_assets/`: 디자인 시안·DS(`docs/design/`), 앱↔확장 메시지 규격(`protocol/README.md`, `protocol/fixtures/`), 이미지, 사운드, Firebase 설정 파일 원본.


## 명령어

Flutter 앱 (`zappit/`):
```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs   # *.g.dart, *.freezed.dart 재생성 (개발 중엔 watch)
flutter analyze
flutter test                                                  # 전체
flutter test test/playback_math_test.dart --plain-name "<이름>" # 단일 테스트
flutter run
flutter run -t lib/dev/preview_main.dart --dart-define=SCENARIO=main   # 가짜 데이터로 화면 미리보기
```
- 코드 생성 대상: `@riverpod`/`@Riverpod` provider, freezed 모델, json_serializable. 생성 파일은 커밋한다.
- 다국어: `flutter_intl`. `lib/l10n/intl_en.arb`를 고친 뒤 `dart run intl_utils:generate`(또는 Flutter Intl IDE 플러그인)로 `lib/generated/`를 다시 만든다. `lib/generated/`는 손으로 고치지 않는다.
- 테스트: `test/protocol_fixtures_test.dart`가 `../zappit_assets/protocol/fixtures`를 읽는다(앱과 확장이 같은 파일로 메시지 규격을 검증).
- 화면 미리보기: `lib/dev/preview_main.dart`는 실제 앱에 포함되지 않는 개발용 진입점이다. 시나리오(main, ad, live, ab, upnext, pick, home, playlist, netflix, shorts, photo, web, disconnected, nobrowser, nothing, more, sites, settings, pro, login, tabs, sleep, episodes)별로 provider를 가짜 데이터로 덮어써서 디자인 PNG와 비교한다. 시뮬레이터에 한 번 빌드해 두면 앱 컨테이너의 `tmp/scenario.txt`에 시나리오 이름을 쓰고 다시 실행해 바꿀 수 있다.

확장 (`../zappit_extension/`, `.env` 필요: `VITE_FIREBASE_*`(`VITE_FIREBASE_DATABASE_URL` 포함), `VITE_GOOGLE_OAUTH_CLIENT_ID`, `VITE_APPLE_SERVICES_ID`. 항목은 `.env.example` 참고):
```bash
npm run dev       # Chrome 개발 모드 (dev:firefox)
npm run build     # build:firefox, zip
npm run check     # svelte-check 타입 검사
npm test          # vitest (프로토콜 fixtures, lrud 이동 판정, 사이트 판별, 셀렉터, 챕터 파싱)
npx vitest run src/lib/lrud.test.ts -t "<이름>"   # 단일 테스트
```

Cloud Functions (`../zappit_firebase/functions/`): `npm run serve`(에뮬레이터), `npm run deploy`, `npm run logs`.
규칙·호스팅 배포 (`../zappit_firebase/`): `firebase deploy --only database`, `--only firestore:rules`, `--only hosting`(확장의 원격 셀렉터 JSON `hosting/selectors/v1.json`, 사용법은 같은 폴더 README).


## Flutter 앱 구조

구조는 Riverpod 기반 Feature-Driven 아키텍처 + 단방향 데이터 흐름으로 확정했다. UseCase·Mapper 같은 Clean Architecture 계층은 만들지 않는다. 상세는 Notion Dev Strategies > App Architecture.

- 흐름: UI → 상태 Provider → Repository/Service → (Ably 채널 `zappit:{uid}` | RTDB `playback/{uid}`, `session/{uid}` | Firestore `users/{uid}.settings`, `users/{uid}/browserTabs/{instanceId}`).
- 폴더:
  - `lib/protocol/`: 앱↔확장 메시지 모델(`RemoteCommand`, `TargetInfo`, `SiteState`, `Ack`, `PlaybackSnapshot`, `BrowserInstance`, `BrowserTab`). 규격은 `../zappit_assets/protocol/README.md`.
  - `lib/core/realtime/`: `RealtimeService`(Ably 연결), `zappit_channel.dart`(채널, 이벤트 버스, `BrowserPresence`: 포그라운드에서 presence enter / 백그라운드에서 leave), `command_bus.dart`.
  - `lib/core/firebase/`: RTDB `session`·`playback` 스트림과 선택(`session_repository.dart`), Firestore 설정(`user_settings_repository.dart`), 탭 목록(`browser_tabs_repository.dart`).
  - `lib/core/theme/app_tokens.dart`: 디자인 토큰(`context.tokens`)과 글자 스타일(`AppText`). 다크 테마만 있다.
  - `lib/shared/widgets/ds/`: DS 컴포넌트 위젯(`Zp*`). `ds.dart` 하나로 import.
  - `lib/features/`: `auth`, `shell`(하단 탭 Remote·Tabs·More), `connection`(연결 상태, 브라우저 선택), `remote`(리모컨 화면·블록·시트·컨트롤러), `tabs`, `settings`(More, 리모컨 설정 모달), `sites`(Supported sites 화면, 사이트 순서 `users/{uid}.settings.siteOrder`, 사이트 홈 URL), `purchase`(Pro 화면과 `isPro`), `onboarding`(연결 방법), `share_intent`, `voice`(인터페이스만).
- 명령은 모두 `RemoteController`(`features/remote/controllers/remote_controller.dart`)의 메서드 → `RemoteCommand` → `CommandBus`로 보낸다. CommandBus가 `requestId`·`targetInstanceId`·`schema_version`·`timestamp`를 붙이고 'ack'를 기다린다. 4초 안에 응답이 없으면 상단 스낵바("Browser not responding"), 실패 ack는 스낵바.
- 화면 상태는 `remoteModeProvider` 하나가 계산한다(disconnected · chooseBrowser · waiting · nothing · home · playing). YouTube 종료 화면은 `endScreenModeProvider`. glass 뷰 4개는 `glass_overlays.dart`.
- 블록은 사이트 이름이 아니라 'target' 이벤트의 capability로 보여줄지 정한다(`remote_page.dart`의 `_PlayingBlocks`).
- 재생 위치는 `PlaybackController`가 RTDB 값을 받은 로컬 시각 기준으로 보간한다(서버 `updatedAt`을 쓰지 않아 폰 시계 오차와 무관). seek·속도·볼륨은 앱이 먼저 바꾸고 맞는 값이 오거나 2초가 지날 때까지 들어오는 값을 무시한다. 규칙은 `playback_math.dart`(단위 테스트 있음).
- Pro 여부는 `proControllerProvider`: RevenueCat entitlement `zappit_pro`. customer info 리스너로 구매·복원·만료·계정 전환이 바로 반영된다. 디버그 빌드에서는 Pro 화면의 스위치로 강제로 켤 수 있다.
- 결제는 `features/purchase/purchase_service.dart`. RevenueCat App User ID는 Firebase UID다(시작 시 configure, 로그인·로그아웃 시 `syncUser`). Pro 화면은 디자인 시안대로 직접 만든 화면이고 현재 offering의 연간 패키지(`yearly`)를 판다. Pro 사용자의 구독 관리는 RevenueCat Customer Center.
- 다크 테마만 지원한다. 다국어는 나중에(지금은 영어만).
- 상태 관리는 Riverpod 3 + `riverpod_generator`. 전역 접근이 필요한 것(`S` 로컬라이제이션, `Logger`)만 GetIt(`core/services/service_locator.dart`의 `getIt`)에 등록한다. 컨텍스트 없이 문자열이 필요하면 `getIt<S>()`. Riverpod 3에는 StreamProvider의 `.stream`이 없으므로, 모든 이벤트가 필요하면 `ChannelEventBus`처럼 스트림을 객체로 감싸 제공한다.
- import는 barrel 파일을 쓴다: `core/barrel_files/riverpod_core.dart`, `ui_core.dart`, `localization.dart`, `logging.dart`.
- 시작 흐름: `main.dart`에서 Firebase 초기화 → `registerSingletons()` → `SharedPreferences` override → `initializerProvider`(Remote Config + Ably 초기화) 동안 `LoadingPage` → `_AppServices`(공유 링크 수신, PostHog identify, Voice Control 시작/중지).
- 라우팅: `core/routes/router_provider.dart`. 경로 이름은 `app_routes.dart`. 인증 상태에 따라 `/login` ↔ `/remote`로 redirect. 하단 탭은 `StatefulShellRoute.indexedStack`, Pro·리모컨 설정·연결 방법·웹뷰는 root navigator 위의 화면.
- 인증: `auth_state_provider.dart`. 계정 삭제 시 iOS Apple 로그인 사용자는 Apple 토큰을 먼저 해지한다(`revokeTokenWithAuthorizationCode`). 로그아웃·삭제 실패는 인증 상태를 바꾸지 않고 스낵바로 알린다.
- 상수: `core/constants/config.dart`(OAuth 클라이언트 ID, Functions region, 웹 URL, 공유 URL, App Store ID, PostHog).
- Firebase 네이티브 설정(`ios/Runner/GoogleService-Info.plist`의 `DATABASE_URL`, `android/app/google-services.json`의 `firebase_url`)은 `lib/firebase_options.dart`와 값이 같아야 한다. 다르면 시작할 때 `[core/duplicate-app]`으로 실패한다.


## 앱 ↔ 확장 실시간 통신 (Ably)

- 앱과 확장은 Firebase에 같은 계정으로 로그인하고, 같은 Ably 채널 `zappit:<Firebase UID>`를 쓴다.
- 인증은 Ably 토큰: 앱(`RealtimeService`)과 확장(`ably-link.ts`)이 `authCallback`에서 Cloud Function `ably_token`을 부른다. 토큰은 본인 채널 `zappit:{uid}`에만 publish·subscribe·presence 권한, 1시간. 클라이언트에 Ably 키를 두지 않는다(키는 Secret Manager `ABLY_API_KEY`). 앱은 로그인 시 연결, 계정 전환 시 `authorize()`, 로그아웃 시 close. 이름 규칙은 앱 `core/realtime/channel_provider.dart`의 `RealtimeChannelNames`와 확장 `src/lib/ably-channel.ts`의 `getAblyChannelName`에 각각 있다. 바꾸려면 두 곳을 같이 바꾼다.
- 앱 clientId는 `zappit-flutter`, presence data `{device: 'flutter', type: 'remote'}`. 확장 clientId는 `extension-{instanceId}`, presence data에 `instanceId`·브라우저·OS·기기 이름·대상 탭 제목.
- 선택된 브라우저(`session/{uid}/selectedInstanceId`)만 'target'·'state'·'ack'를 보내고 RTDB에 쓴다. 온라인 브라우저가 하나뿐이고 선택이 비었으면 앱과 확장이 같은 RTDB transaction 규칙으로 그 브라우저를 선택한다.
- 확장 background ↔ popup 간 상태는 `chrome.storage` 키 `zappitAblyStatus`(`PopupStatus`)로 동기화한다.
- 영상 상태(재생 위치, 볼륨 등)는 Ably가 아니라 Firebase RTDB(us-central1, `https://zappit-23ad8-default-rtdb.firebaseio.com`)로 확장 → 앱 단방향 전달한다. 경로는 `playback/{uid}`, `session/{uid}/selectedInstanceId`이고 본인 uid만 읽고 쓸 수 있다.


## 확장 구조 (`../zappit_extension/src/`)

- `entrypoints/background.ts`: 인증 상태에 따라 `lib/background/controller.ts`(`Controller`)를 시작/중지하고 알람·메시지를 연결한다.
- `lib/background/`: `ably-link.ts`(Ably, presence, command 구독), `session.ts`(선택된 브라우저, 자동 선택), `target-tracker.ts`(마지막 포커스된 일반 창의 활성 탭, 프레임별 미디어 보고), `playback-writer.ts`(RTDB `playback/{uid}`, 1초 throttle), `tabs-sync.ts`(Firestore Lite로 탭 목록), `sleep-timer.ts`, `activity.ts`(60일 미사용 로그아웃), `sounds.ts`(offscreen 사운드, 없는 브라우저는 생략).
- `entrypoints/content/index.ts`: 모든 페이지·모든 프레임. 사이트 어댑터(`lib/content/adapters/`: generic, youtube, netflix, shortform)와 `MediaController`(제어할 video 선택: 장식용 후순위, 보이는 것, 재생 중, 크기 순. Loop·A-B·속도 맛보기·슬립 페이드)를 연결한다. 사이트 UI 상태는 최상위 프레임만 보낸다.
- `entrypoints/main-world.ts`: YouTube·Netflix 페이지 컨텍스트에서 플레이어 API를 부른다(자막, 볼륨, Netflix seek·메타데이터). `lib/content/bridge.ts`가 분리된 `<script>` 요소의 CustomEvent로 요청한다.
- `lib/lrud.ts`: BBC lrud-spatial의 이동 판정 이식(Apache-2.0). 다른 점은 파일 머리 주석 참고. `lib/content/focus-navigator.ts`가 가상 포커스로 홈 화면·종료 화면 카드를 이동한다.
- `lib/selectors.ts`: 사이트별 기본 셀렉터와 원격 JSON(`https://zappit-23ad8.web.app/selectors/v1.json`) 병합. 사이트 UI가 바뀌면 원격 JSON만 고쳐 배포한다(1시간마다 갱신). 명령이 필요한 요소를 못 찾으면 어댑터가 `missing('<셀렉터 이름>')`을 돌려주고, background가 PostHog `extension_selector_missing`(site·셀렉터 이름·명령만, 브라우저별 조합당 하루 1회)으로 보고한다(`lib/background/selector-telemetry.ts`).
- `lib/protocol.ts`: 앱과 같은 메시지 규격(TypeScript). `lib/sites.ts`: URL로 사이트·페이지 판별과 capability 목록.


## 지원 브라우저 (확장)

- 초기 버전은 Chrome, Safari만 지원한다. Edge, Firefox는 출시 후 추가한다(따라서 구현시 브라우저 추가를 고려해 설계한다.).
- MV3만 사용한다. MV2는 절대 쓰지 않는다(장시간 연결 유지 문제가 있어도 MV2 persistent 백그라운드로 해결하지 않는다).
- Safari에는 `identity` API와 `offscreen` API가 없다. Safari 로그인은 zappit.tv의 로그인 웹 페이지를 거쳐 확장으로 결과를 넘기는 방식으로 구현한다. 배포는 macOS 컨테이너 앱(Xcode Safari Web Extension)으로 한다.
- Chrome 전용 API(`chrome.identity.getAuthToken`, `chrome.offscreen`)를 쓰는 코드는 브라우저별로 분기할 수 있게 둔다.


## 개발 참조
- Notion 의 Dev Strategies를 참고한다.
https://app.notion.com/p/Dev-Strategies-3eb30e346279803992f7fe674ffc93d3?source=copy_link
- 구현 중 중요 결정사항은 사용자에게 물어보고 진행한다.
- 문서의 내용보다 더 나은 방법이 있다고 판단되면 더 나은 방법으로 개발한다.
- Voice control 부분은 일단 함수만 만들어놓고, 추후 구현. Wake word는 "Hey Zappit", 감지 엔진은 Sherpa-ONNX Keyword Spotting(Porcupine 아님), 명령 해석은 Gemini API.
- 현재 익스텐션 구현은 장시간 세션 유지를 하고 있다.


## 디자인 참조

디자인 시안과 디자인 시스템은 `zappit_assets/docs/design/`에 있다. 화면을 만들거나 고칠 때 아래 파일을 본다.

- `docs/design/HANDOFF.md`: 가장 먼저 읽는다. 폴더 구성, 화면 목록과 번호, 구조 규칙, 토큰 요약이 있다.
- `docs/design/screens/NN-이름.png`: 화면별 시안 이미지. 화면 모양은 이 이미지를 보고 확인한다. 구현 후에는 앱 스크린샷을 같은 PNG와 나란히 비교해서 어긋난 곳을 고친다.
- `docs/design/boards/*.dc.html`: 같은 화면의 마크업. 구조, 클래스, 값을 읽는 용도다. 브라우저에서 직접 열면 렌더링되지 않는다.
- `docs/design/zappit-app.css`: 앱 레이아웃 값(`za-*` 클래스). 같은 선택자가 여러 번 나오면 아래쪽(버전 번호가 큰 쪽)이 적용된다.
- `docs/design/zappit-tokens.css`, `docs/design/ds/tokens.json`: 색, 간격, 반경, 크기 토큰과 토큰별 사용 규칙. Flutter 테마 토큰으로 한 번 옮긴 뒤 위젯은 토큰만 참조한다.
- `docs/design/ds/components/bundle.css`, `bundle.js`: DS 컴포넌트(`zp-*`)의 스타일과 정의. 컴포넌트마다 위젯 하나로 만든다.
- `docs/design/canvas.json`: 화면 제목, 크기(폰 390×1000, 태블릿 834×1194), 배치 순서.
- `icon_list.md`: 아이콘 목록. 지정된 아이콘은 이 파일을 따른다.
- 동작 규칙(상태 전이, 명령, 데이터 경로)은 Notion의 UI Strategies와 Dev Strategies가 기준이다. 디자인과 어긋나면 구현 전에 물어본다.
- Notion 의 UI Strategies 등의 문서와 디자인 시안 내용이 다를 경우, 디자인 시안을 우선한다.
- 디자인 시안의 UI Element 크기, 간격 등이 완벽하지 않다. 개발하면서 보기좋게 조정하라.
- 폰트는 시스템 폰트를 사용한다.


## 아이콘

- 앱에서 쓰는 아이콘 목록은 `icon_list.md`를 참고한다. 지정된 아이콘은 그대로 쓰고, 목록에 없는 아이콘은 디자인 시안과 같은 모양으로 쓴다.
- 이미지 아이콘은 `assets/images/...` 경로로 불러온다.


## Sound

- Flutter <-> Extension 상호 연결 및 콘트롤 가능한 상태가 됐을 때 : connected.mp3
- Flutter 앱 종료/백그라운드 진입 등 콘트롤 불가능 상태가 됐을 때 : disconnected.mp3
- Spatial Navigation으로 카드 이동시 : move.mp3


## IAP 

- RevenueCat(`purchases_flutter`, `purchases_ui_flutter`). entitlement `zappit_pro`, 상품 `yearly`(연간 구독), API 키는 `config.dart`의 `revenueCatApiKey`.
- `test_` 키는 RevenueCat Test Store 키다. 출시 빌드 전에 플랫폼별 키(`appl_`, `goog_`)로 바꾼다.
- Android `MainActivity`는 `FlutterFragmentActivity`여야 한다(Customer Center·Paywall).
- Android release 서명: `keystore.properties`(저장소 루트)와 `android/app/upload-keystore.p12`(Play 업로드 키). 둘 다 gitignore이며 저장소 밖에 백업한다. 없으면 debug 키로 서명된다.
- 광고가 없으므로 Firebase Analytics가 넣는 `AD_ID`·`ACCESS_ADSERVICES_*` 권한을 매니페스트에서 제거했다(Play Console 광고 ID 선언 = No). 다시 넣지 않는다.


## More tab

- Tutorial은 웹뷰로 띄울 예정이다. 추후 구현

- Contact us : 이메일 클라이언트를 띄운다. sssurf와 동일. 이메일 주소는 Remote Config에서 받아온다. Key = support_email_address

- Tell a friend : 아래 코드 이용해서 텍스트 공유
onelink 공유 URL : https://onelink.to/ngsjzu

<code>
	"shareContent": "Control your computer's video without leaving your bed."

	final text = "Zappit\n${getIt<S>().shareContent}\n\n${Constant.shareAppUrl}";

	SharePlus.instance.share...
</code>

- Rate Zappit : 아래 코드처럼 리뷰페이지 여는 함수 호출, appStoreId = 6823437118
<code>
	InAppReview.instance.openStoreListing(
	    appStoreId: appStoreId,
	);
</code>


## URLs

Render static site custom domain 세팅 완료
const termsOfServiceUrl = 'https://zappit.tv/terms';
const privacyPolicyUrl = 'https://zappit.tv/privacy';

웹은 아직 구현하지 않았다(지금은 모두 404). 개발 중 웹 URL이 필요하면 아래 가상 URL을 쓰고, 나중에 웹을 구현할 때 이 경로 그대로 만든다. 새 URL을 만들면 이 목록에 추가한다.
- `https://zappit.tv/get`: 확장 설치 안내(온보딩). 접속한 브라우저에 맞는 스토어로 보낸다
- `https://zappit.tv/tutorial`: Tutorial 웹뷰
- `https://zappit.tv/voice-control`: Voice Control 사용법 웹뷰
- `https://zappit.tv/faq#sound-blocked`: Q&A 중 "소리가 안 나는 이유"(Chrome 자동 재생 정책) 항목. 앱의 `sound_blocked` 상단 스낵바를 탭하면 웹뷰로 연다
- `https://zappit.tv/auth`: Safari 확장용 로그인 페이지


## Keys

- Gemini API Key: `CLAUDE.local.md`에 있다(git에 올리지 않음).
- PostHog (US 리전, host `https://us.i.posthog.com`) : phc_usorcyR7jf7RQGrgFmHFKmPbSs65kyBs2aEpsKziXdiQ



