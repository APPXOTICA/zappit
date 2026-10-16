# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## 목표
- zappit Flutter 프로젝트, zappit_extension을 모두 구현한다.
- zapit_web에 Privacy, Terms 페이지를 만든다, 메인 랜딩 페이지는 비워둔다.
- zapit_web은 Svelte로 구현한다.


## 저장소 구성

Zappit은 폰(Flutter 앱)으로 컴퓨터 브라우저의 영상 재생을 제어하는 리모컨이다. 형제 디렉터리 네 개가 함께 동작한다.

- `zappit/` (이 저장소): Flutter 앱. 리모컨 역할.
- `../zappit_extension/`: 브라우저 확장(WXT + Svelte 5 + TypeScript). 영상 페이지를 실제로 제어한다. `src/entrypoints/`에 `background.ts`, `content.ts`, `popup/`, `offscreen.html`이 있고 공용 코드는 `src/lib/`에 있다.
- `../zappit_firebase/`: Firestore 규칙(`firestore.rules`), RTDB 규칙(`database.rules.json`), Cloud Functions(`functions/index.js`, Node 22). `onUserCreated`, `onUserDeleted`, callable `delete_account`(앱에서 계정 삭제 시 호출).
- `../zappit_web/`: zappit.tv 정적 사이트(Render). 아직 비어 있다.
- `../zappit_assets/`: 디자인 시안·DS(`docs/design/`), 이미지, 사운드, Firebase 설정 파일 원본.


## 명령어

Flutter 앱 (`zappit/`):
```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs   # *.g.dart, *.freezed.dart 재생성 (개발 중엔 watch)
flutter analyze
flutter test                                               # 전체
flutter test test/widget_test.dart --plain-name "<이름>"    # 단일 테스트
flutter run
```
- 코드 생성 대상: `@riverpod`/`@Riverpod` provider, freezed 모델, json_serializable. 생성 파일은 커밋한다.
- 다국어: `flutter_intl`(pubspec의 `flutter_intl: enabled: true`). `lib/l10n/intl_en.arb`를 고치면 Flutter Intl IDE 플러그인이 `lib/generated/`를 다시 만든다. `lib/generated/`는 손으로 고치지 않는다.
- `test/widget_test.dart`는 템플릿 그대로라 존재하지 않는 `MyApp`을 참조한다. 테스트를 쓰기 전에 교체해야 한다.

확장 (`../zappit_extension/`, `.env` 필요: `VITE_FIREBASE_*`(`VITE_FIREBASE_DATABASE_URL` 포함), `VITE_ABLY_API_KEY`, `VITE_GOOGLE_OAUTH_CLIENT_ID`, `VITE_APPLE_SERVICES_ID`, 선택 `VITE_ABLY_CHANNEL_NAME`. 항목은 `.env.example` 참고):
```bash
npm run dev       # Chrome 개발 모드 (dev:firefox)
npm run build     # build:firefox, zip
npm run check     # svelte-check 타입 검사
```

Cloud Functions (`../zappit_firebase/functions/`): `npm run serve`(에뮬레이터), `npm run deploy`, `npm run logs`.
규칙 배포 (`../zappit_firebase/`): `firebase deploy --only database`, `firebase deploy --only firestore:rules`.


## Flutter 앱 구조

구조는 Riverpod 기반 Feature-Driven 아키텍처 + 단방향 데이터 흐름으로 확정했다. UseCase·Mapper 같은 Clean Architecture 계층은 만들지 않는다. 상세는 Notion Dev Strategies > App Architecture.

- 흐름: UI → 상태 Provider → Repository/Service → (Ably 채널 `zappit:{uid}` | RTDB `playback/{uid}`, `session/{uid}` | Firestore `users/{uid}.settings`).
- 추가할 폴더: `core/realtime/`(CommandBus 포함), `core/firebase/`, `core/analytics/`, `lib/protocol/`(앱↔확장 메시지 모델), `features/{shell,connection,remote,tabs,settings,purchase,onboarding,share_intent,voice}`, `shared/widgets/ds/`(DS 컴포넌트 위젯).
- 명령은 모두 `RemoteController` → `RemoteCommand`(sealed) → CommandBus로 보낸다. CommandBus가 `requestId`·`targetInstanceId`·`schema_version`·`timestamp`를 붙이고 'ack'를 기다린다.
- 리모컨 화면의 블록은 사이트 이름이 아니라 'target' 이벤트의 지원 기능 목록(capability)으로 보여줄지 정한다.
- 앱↔확장 메시지 예시 JSON은 `../zappit_assets/protocol/`에 두고, 앱과 확장 테스트가 같은 파일을 파싱한다.
- 다크 테마만 지원한다. 다국어는 나중에(지금은 영어만).
- 앱이 백그라운드로 가면 Ably `presence.leave()`, 돌아오면 `presence.enter()`.

- 상태 관리는 Riverpod 3 + `riverpod_generator`. 전역 접근이 필요한 것(`S` 로컬라이제이션, `Logger`)만 GetIt(`core/services/service_locator.dart`의 `getIt`)에 등록한다. 컨텍스트 없이 문자열이 필요하면 `getIt<S>()`.
- import는 barrel 파일을 쓴다: `core/barrel_files/riverpod_core.dart`(riverpod + annotation), `ui_core.dart`, `localization.dart`, `logging.dart`.
- 폴더: `lib/core/`(설정·라우팅·테마·실시간·저장소 등 공용 인프라), `lib/features/<기능>/{data,presentation/{controllers,pages}}`, `lib/shared/`(여러 기능이 쓰는 provider·모델·위젯·리포지토리).
- 시작 흐름: `main.dart`에서 Firebase 초기화 → `registerSingletons()` → `SharedPreferences`를 `sharedPreferencesProvider`에 override 해서 `ProviderScope` 생성. `MaterialApp.router`의 builder가 `initializerProvider`(Remote Config + Ably 초기화)를 기다리는 동안 `LoadingPage`를 보여주고, 전역 `ActivityIndicatorOverlay`를 위에 겹친다.
- 라우팅: `core/routes/router_provider.dart`의 GoRouter. `RouteNotifier`가 `authStateProvider`를 listen 해서 redirect 한다(`/loading` → 인증 여부에 따라 `/home` 또는 `/login`). 새 화면은 여기 `_routes`에 추가한다.
- 인증: `features/auth/presentation/controllers/auth_state_provider.dart`(keepAlive). FirebaseAuth로 Apple/Google 로그인, 상태는 sealed `AuthenticationState`(`AuthStateAuthenticated`/`Unauthenticated`/`Error`). 마지막 로그인 방식은 `preferencesProvider`에 저장.
- 테마: 지금은 `core/theme/`의 `lightTheme`/`darkTheme`와 `AppCustomColors`가 있다. 디자인 토큰을 `AppTokens` ThemeExtension 하나로 옮겨 이를 대체하고, 위젯은 토큰만 참조한다.
- 상수: `core/constants/config.dart`(OAuth 클라이언트 ID, Functions region, Ably 키·clientId, 약관 URL), `strings.dart`, `dimensions.dart`.


## 앱 ↔ 확장 실시간 통신 (Ably)

- 앱과 확장은 Firebase에 같은 계정으로 로그인하고, 같은 Ably 채널 `zappit:<Firebase UID>`를 쓴다(소문자. Ably 키 권한이 `zappit:*`로 제한돼 있어 대소문자가 다르면 연결되지 않는다). 이름 규칙은 앱 `core/realtime/channel_provider.dart`의 `RealtimeChannelNames`와 확장 `src/lib/ably-channel.ts`의 `getAblyChannelName`에 각각 있다. 바꾸려면 두 곳을 같이 바꾼다.
- `RealtimeService`(`core/realtime/realtime_service.dart`)는 `ably.Realtime` 싱글턴 래퍼다. 앱 clientId는 `zappit-flutter`.
- 연결 상태는 presence로 판단한다. `PresenceStateProvider`가 앱을 `{type: 'remote'}`로 presence에 넣고, data가 `'extension'`이거나 clientId가 `extension-`으로 시작하는 멤버 수를 `ExtensionPresence`로 내보낸다. 채널이 다시 attach되거나 앱이 resume되면 재진입한다. 현재 코드는 백그라운드 전환 시 leave하지 않지만, leave 하도록 바꾼다(위 결정).
- 확장 background ↔ popup 간 상태는 `chrome.storage` 키 `zappitAblyStatus`로 동기화한다.
- 영상 상태(재생 위치, 볼륨 등)는 Ably가 아니라 Firebase RTDB(us-central1, `https://zappit-23ad8-default-rtdb.firebaseio.com`)로 확장 → 앱 단방향 전달한다. 경로는 `playback/{uid}`, `session/{uid}/selectedInstanceId`이고 본인 uid만 읽고 쓸 수 있다.


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


## IAP 

- IAP 기능은 화면만 만든다. IAP 구현은 기능 테스트 완료 후 진행 예정


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
- `https://zappit.tv/supported-sites`: 전용 재생기(지원 사이트) 목록 웹뷰
- `https://zappit.tv/voice-control`: Voice Control 사용법 웹뷰
- `https://zappit.tv/auth`: Safari 확장용 로그인 페이지


## Keys

- Gemini API Key: `CLAUDE.local.md`에 있다(git에 올리지 않음).
- PostHog (US 리전, host `https://us.i.posthog.com`) : phc_usorcyR7jf7RQGrgFmHFKmPbSs65kyBs2aEpsKziXdiQ



