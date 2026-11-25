# 번역 검토 결과 (앱 21개 언어)

`docs/번역 가이드.md` 기준으로 `lib/l10n/intl_<언어>.arb`를 언어별 전문가 에이전트가 검토·수정하고, 같은 에이전트가 체크리스트와 역번역으로 다시 검수했다. 언어별 보고서(`<언어>.md`)에 바뀐 키마다 수정 전·수정 후·문제·적용 원칙이 있다. 영어(`intl_en.arb`)는 원문이라 바꾸지 않았다. 확장(zappit_extension)은 UI가 영어로만 되어 있고 번역 파일이 없어 대상이 아니다.

## 언어별 수정 수

| 언어 | 수정 키 | 언어 | 수정 키 | 언어 | 수정 키 |
|---|---|---|---|---|---|
| ar | 42 | id | 27 | ru | 37 |
| cs | 34 | it | 28 | th | 42 |
| de | 33 | ja | 30 | tr | 47 |
| es | 25 | ko | 19 | uk | 26 |
| fr | 34 | pl | 34 | vi | 38 |
| hi | 31 | pt | 39 | zh_Hans | 38 |
| hu | 36 | ro | 28 | zh_Hant | 24 |

## 여러 언어에 공통으로 있던 문제

- "Pro preview"를 그 언어에 없는 직역어(미리 보기·체험판 등)로 옮긴 것. 각 언어에서 쓰는 "무료 체험" 계열 말로 바꾸고, 스토어 무료 체험(자동 결제)과 구분되게 했다.
- 결제 문구의 "스토어", "스토어 계정".
- "Welcome to", "Thanks for trying", "No credit card required" 직역.
- 폰에 보이는데 "이 페이지", "이 화면", "그 폰"처럼 대상이 모호한 문구.
- 1개월·1년 같은 숫자에서 복수형이 틀리는 문구. 아래 키에 영어 원문에 없는 ICU plural을 넣었다.

## 빌드 전에 확인할 것

- **새 ICU plural:** ar(freeTrial*·trialTerms*·proPreviewStarted·backSeconds·forwardSeconds·speedTrialOver·voiceBoostTrial*), de·pt(freeTrial*·trialTerms*), es(freeTrialDays/Months/Years·trialTerms*), it(freeTrialMonths/Years·trialTermsMonths/Years). placeholder는 모두 int라 문법상 맞지만 `dart run intl_utils:generate` 후 생성 코드와 화면을 확인한다.

## 웹 번역과 맞춰야 할 메뉴 이름 (menu-name: yes)

웹 가이드·FAQ(`zappit_web/src/lib/i18n/messages/`)가 앱 메뉴 이름을 인용하므로, 아래 키가 웹에 나오면 웹도 같이 고친다.

- cs: yearly, monthly, ytWatchLater, abLoopCount
- fr: sleepTimer, ytLikedVideos, proPreviewUntil, abLoopCount
- hu: selectVideoInBrowser
- ko: support
- pl: startFreeTrial, learnMore, abLoopCount
- pt: sleepTimer
- ru: startFreeTrial
- th: chapters, selectVideoInBrowser
- tr: sleepTimer, tellAFriend, abLoopCount
- uk: startFreeTrial, noThanks, pickVideosWithPro, phoneName
- zh_Hans: sleepTimer, longPressSpeed, onboardingOpenQrScanner, onboarding2Title

또 Pro preview 용어 자체가 대부분 언어에서 바뀌었으므로, 웹 FAQ에 Pro preview 설명이 있으면 각 언어의 새 용어로 맞춘다.

## 결정이 필요한 점

각 보고서 마지막 절에 언어별로 정리돼 있다. 대표적인 것: YouTube·Netflix 공식 메뉴 이름을 실제 화면에서 확인하지 못한 키(ytExplore, skipIntro 등), "A-B Loop"를 영어로 둘지 번역할지, Netflix 용어(카테고리/장르, 에피소드/회차).
