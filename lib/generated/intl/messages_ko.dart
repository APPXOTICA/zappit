// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ko locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ko';

  static String m0(site) => "즐겨찾기에 ${site} 추가";

  static String m1(count) => "${count}초 뒤로";

  static String m2(browser) => "${browser}에서 응답이 없어요. 브라우저가 열려 있는지 확인해 주세요.";

  static String m3(browsers) => "${browsers}와(과) 연결이 끊겼어요";

  static String m4(name) => "채널: ${name}";

  static String m5(current, total) => "챕터 ${current}/${total}";

  static String m6(browser) => "${browser}에 연결되었어요";

  static String m7(count) => "${count}초 앞으로";

  static String m8(count) => "${count}일 무료 체험";

  static String m9(count) => "${count}개월 무료 체험";

  static String m10(count) => "${count}주 무료 체험";

  static String m11(count) => "${count}년 무료 체험";

  static String m12(price) => "월 ${price}";

  static String m13(count) => "${Intl.plural(count, other: '${count}분')}";

  static String m14(count) => "${count}분";

  static String m15(time) => "${time} 후 새 코드";

  static String m16(url) => "컴퓨터 브라우저에서 ${url}을 열어 Zappit 확장 프로그램을 설치하세요.";

  static String m17(current, total) => "${current} / ${total}";

  static String m18(current, total) => "${total}단계 중 ${current}단계";

  static String m19(site) => "${site} 열기";

  static String m20(browser) => "${browser}에서 열었어요";

  static String m21(browser) => "${browser}에서 여는 중…";

  static String m22(price) => "${price} / 월";

  static String m23(price) => "${price} / 년";

  static String m24(date) =>
      "Pro 무료 체험기간은 ${date}까지예요. 끝나기 전에 구독하면 모든 Pro 기능을 끊김 없이 계속 쓸 수 있어요.";

  static String m25(proName) =>
      "Pro 무료 체험기간이 종료되었어요. ${proName}로 모든 Pro 기능을 계속 이용하실 수 있어요.";

  static String m26(days) =>
      "${days}일 동안 Zappit Pro의 모든 기능을 무료로 써 보세요. 자동 결제되지 않는 완전 무료예요.";

  static String m27(date) => "${date}까지 Pro 무료 체험";

  static String m28(proName) => "${proName} 구매를 복원했어요";

  static String m29(site) => "즐겨찾기에서 ${site} 빼기";

  static String m30(site) => "즐겨찾기에서 ${site}을(를) 뺐어요";

  static String m31(site) => "${site} 순서 바꾸기";

  static String m32(percent) => "${percent}% 할인";

  static String m33(number) => "시즌 ${number}";

  static String m34(count) => "${count}초";

  static String m35(site) => "${site} 설정";

  static String m36(count) =>
      "1배속으로 돌아왔어요. 무료 사용자는 이 속도를 ${count}초 동안만 쓸 수 있어요.";

  static String m37(price, date) =>
      "무료 체험이 내일 끝나요. ${date}에 ${price} 요금이 결제돼요. 계속 이용하지 않으시려면 그 전에 구독을 해지해 주세요.";

  static String m38(price) => "무료 체험이 끝나면 연 ${price} 요금이 자동 결제돼요.";

  static String m39(count, price) =>
      "${count}일 무료 체험이 끝나면 연 ${price} 요금이 자동 결제돼요.";

  static String m40(count, price) =>
      "${count}개월 무료 체험이 끝나면 연 ${price} 요금이 자동 결제돼요.";

  static String m41(count, price) =>
      "${count}년 무료 체험이 끝나면 연 ${price} 요금이 자동 결제돼요.";

  static String m42(count) => "다음 영상 · ${count}초 후 재생";

  static String m43(count) => "Voice Boost 체험, ${count}초 남음";

  static String m44(count) =>
      "Voice Boost가 꺼졌어요. 무료 사용자는 Voice Boost를 ${count}초 동안만 쓸 수 있어요.";

  static String m45(proName) => "${proName} 업그레이드 완료!";

  static String m46(number) => "창 ${number}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "abLoopCount": MessageLookupByLibrary.simpleMessage("구간 반복 횟수"),
    "abOffForLive": MessageLookupByLibrary.simpleMessage(
      "라이브 방송에서는 구간 반복을 쓸 수 없어요",
    ),
    "account": MessageLookupByLibrary.simpleMessage("연결"),
    "adBadge": MessageLookupByLibrary.simpleMessage("광고"),
    "addToFavorites": m0,
    "allCategories": MessageLookupByLibrary.simpleMessage("모든 카테고리"),
    "allSites": MessageLookupByLibrary.simpleMessage("모든 사이트"),
    "alreadySubscribed": MessageLookupByLibrary.simpleMessage(
      "이미 구독 중이에요. 구매 복원을 눌러 보세요.",
    ),
    "back": MessageLookupByLibrary.simpleMessage("뒤로"),
    "backSeconds": m1,
    "browserDidNotAnswer": m2,
    "browserNotResponding": MessageLookupByLibrary.simpleMessage(
      "브라우저가 응답하지 않아요",
    ),
    "browsers": MessageLookupByLibrary.simpleMessage("브라우저"),
    "browsersDisconnected": m3,
    "browsersDisconnectedBody": MessageLookupByLibrary.simpleMessage(
      "다른 폰이 대신 연결되었어요. 다시 연결하려면 해당 컴퓨터의 QR 코드를 스캔하세요.",
    ),
    "cameraDenied": MessageLookupByLibrary.simpleMessage(
      "코드를 스캔하려면 설정에서 카메라 접근을 허용하세요.",
    ),
    "cameraUnavailable": MessageLookupByLibrary.simpleMessage(
      "지금은 카메라를 쓸 수 없어요.",
    ),
    "cancel": MessageLookupByLibrary.simpleMessage("취소"),
    "cancelAnytime": MessageLookupByLibrary.simpleMessage(
      "구매 페이지에서 언제든지 해지할 수 있어요.",
    ),
    "cantLoadPage": MessageLookupByLibrary.simpleMessage("페이지를 불러올 수 없어요"),
    "cantOpenOnPhone": MessageLookupByLibrary.simpleMessage(
      "이 영상은 폰에서 열 수 없어요",
    ),
    "cantReachBrowser": MessageLookupByLibrary.simpleMessage("브라우저에 연결할 수 없어요"),
    "cantSeekVideo": MessageLookupByLibrary.simpleMessage("이 영상은 탐색할 수 없어요"),
    "captionLanguage": MessageLookupByLibrary.simpleMessage("자막 언어"),
    "captions": MessageLookupByLibrary.simpleMessage("자막"),
    "captionsOff": MessageLookupByLibrary.simpleMessage("자막 꺼짐"),
    "captionsOn": MessageLookupByLibrary.simpleMessage("자막 켜짐"),
    "categories": MessageLookupByLibrary.simpleMessage("카테고리"),
    "categoryFavoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "카테고리의 별을 탭하면 여기에 추가돼요.",
    ),
    "channelLabel": m4,
    "chapterPosition": m5,
    "chapters": MessageLookupByLibrary.simpleMessage("챕터"),
    "chaptersDuringAd": MessageLookupByLibrary.simpleMessage(
      "광고 중에는 챕터를 넘길 수 없어요",
    ),
    "checkConnection": MessageLookupByLibrary.simpleMessage(
      "인터넷 연결을 확인하고 다시 시도해 주세요.",
    ),
    "checkConnectionShort": MessageLookupByLibrary.simpleMessage(
      "연결을 확인하고 다시 시도하세요.",
    ),
    "chooseBrowser": MessageLookupByLibrary.simpleMessage("브라우저 선택"),
    "chooseNextVideo": MessageLookupByLibrary.simpleMessage("다음 영상 고르기"),
    "clear": MessageLookupByLibrary.simpleMessage("지우기"),
    "close": MessageLookupByLibrary.simpleMessage("닫기"),
    "connectBrowser": MessageLookupByLibrary.simpleMessage("브라우저 연결"),
    "connectBrowserFirst": MessageLookupByLibrary.simpleMessage(
      "먼저 브라우저에 연결하세요",
    ),
    "connected": MessageLookupByLibrary.simpleMessage("연결됨"),
    "connectedTo": m6,
    "contactUs": MessageLookupByLibrary.simpleMessage("문의하기"),
    "contactUsKeepInfo": MessageLookupByLibrary.simpleMessage(
      "아래 정보는 지우지 말아 주세요.",
    ),
    "couldNotGetVideoLink": MessageLookupByLibrary.simpleMessage(
      "영상 링크를 가져오지 못했어요",
    ),
    "couldNotLoadEpisodes": MessageLookupByLibrary.simpleMessage(
      "에피소드를 불러오지 못했어요",
    ),
    "couldNotLoadPlaylist": MessageLookupByLibrary.simpleMessage(
      "재생목록을 불러오지 못했어요",
    ),
    "couldNotOpenLink": MessageLookupByLibrary.simpleMessage("링크를 열지 못했어요"),
    "couldNotReadQuality": MessageLookupByLibrary.simpleMessage(
      "화질 옵션을 불러오지 못했어요.",
    ),
    "delete": MessageLookupByLibrary.simpleMessage("삭제"),
    "disconnect": MessageLookupByLibrary.simpleMessage("연결 해제"),
    "disconnectPhone": MessageLookupByLibrary.simpleMessage("이 폰 연결 해제"),
    "disconnectPhoneMessage": MessageLookupByLibrary.simpleMessage(
      "이 폰으로 더 이상 컴퓨터를 제어하지 않아요. 다시 연결하려면 컴퓨터의 QR 코드를 스캔하세요.",
    ),
    "down": MessageLookupByLibrary.simpleMessage("아래"),
    "endOfVideo": MessageLookupByLibrary.simpleMessage("영상이 끝날 때"),
    "enterValidLink": MessageLookupByLibrary.simpleMessage(
      "http 또는 https로 시작하는 링크를 입력하세요",
    ),
    "episodes": MessageLookupByLibrary.simpleMessage("에피소드"),
    "error": MessageLookupByLibrary.simpleMessage("오류"),
    "errorButtonNotFound": MessageLookupByLibrary.simpleMessage(
      "페이지에서 해당 버튼을 찾지 못했어요",
    ),
    "errorDuringAd": MessageLookupByLibrary.simpleMessage("광고 중에는 할 수 없어요"),
    "errorEndBeforeStart": MessageLookupByLibrary.simpleMessage(
      "끝 지점은 시작 지점보다 뒤여야 해요",
    ),
    "errorGeneric": MessageLookupByLibrary.simpleMessage("문제가 발생했어요"),
    "errorInvalidUrl": MessageLookupByLibrary.simpleMessage("이 링크는 열 수 없어요"),
    "errorNoBrowser": MessageLookupByLibrary.simpleMessage("선택된 브라우저가 없어요"),
    "errorNoMedia": MessageLookupByLibrary.simpleMessage("재생 중인 영상이 없어요"),
    "errorNotChanged": MessageLookupByLibrary.simpleMessage("사이트에 반영되지 않았어요"),
    "errorNotSupported": MessageLookupByLibrary.simpleMessage(
      "이 사이트에서는 지원하지 않는 기능이에요",
    ),
    "errorStartAfterEnd": MessageLookupByLibrary.simpleMessage(
      "시작 지점은 끝 지점보다 앞이어야 해요",
    ),
    "errorTabClosed": MessageLookupByLibrary.simpleMessage("이미 닫힌 탭이에요"),
    "exitFullScreen": MessageLookupByLibrary.simpleMessage("전체 화면 종료"),
    "extensionUpdatedReload": MessageLookupByLibrary.simpleMessage(
      "Zappit 확장 프로그램이 업데이트되었어요. 모든 기능을 계속 쓰려면 브라우저를 새로고침하세요.",
    ),
    "faq": MessageLookupByLibrary.simpleMessage("자주 묻는 질문"),
    "favorites": MessageLookupByLibrary.simpleMessage("즐겨찾기"),
    "favoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "사이트의 별을 탭하면 여기에 추가돼요.",
    ),
    "forwardSeconds": m7,
    "frameByFrame": MessageLookupByLibrary.simpleMessage("프레임 단위 이동"),
    "freeTrial": MessageLookupByLibrary.simpleMessage("무료 체험"),
    "freeTrialDays": m8,
    "freeTrialMonths": m9,
    "freeTrialWeeks": m10,
    "freeTrialYears": m11,
    "fullPowerUnlocked": MessageLookupByLibrary.simpleMessage("모든 기능 잠금 해제됨"),
    "fullScreen": MessageLookupByLibrary.simpleMessage("전체 화면"),
    "generalSettings": MessageLookupByLibrary.simpleMessage("일반 설정"),
    "gotIt": MessageLookupByLibrary.simpleMessage("확인"),
    "hideChat": MessageLookupByLibrary.simpleMessage("채팅 숨기기"),
    "home": MessageLookupByLibrary.simpleMessage("홈"),
    "justPerMonth": m12,
    "largerCaptions": MessageLookupByLibrary.simpleMessage("자막 크게"),
    "lastVideoInPlaylist": MessageLookupByLibrary.simpleMessage(
      "재생목록의 마지막 영상이에요",
    ),
    "learnMore": MessageLookupByLibrary.simpleMessage("더 알아보기"),
    "left": MessageLookupByLibrary.simpleMessage("왼쪽"),
    "linkPanelHint": MessageLookupByLibrary.simpleMessage(
      "영상 링크를 붙여넣고 보내기를 누르세요. 브라우저의 새 탭에서 열려요.",
    ),
    "liveBadge": MessageLookupByLibrary.simpleMessage("LIVE"),
    "liveCantRewind": MessageLookupByLibrary.simpleMessage(
      "이 라이브 방송은 되감을 수 없어요",
    ),
    "longPressSpeed": MessageLookupByLibrary.simpleMessage("길게 누르기 속도"),
    "loopEnd": MessageLookupByLibrary.simpleMessage("반복 끝 지점"),
    "loopOff": MessageLookupByLibrary.simpleMessage("반복 꺼짐"),
    "loopOn": MessageLookupByLibrary.simpleMessage("반복 켜짐"),
    "loopStart": MessageLookupByLibrary.simpleMessage("반복 시작 지점"),
    "manageSubscription": MessageLookupByLibrary.simpleMessage("구독 관리"),
    "minutesCount": m13,
    "minutesShort": m14,
    "mixCantRepeat": MessageLookupByLibrary.simpleMessage(
      "이 재생목록은 새 영상이 끝없이 이어져서 반복할 수 없어요",
    ),
    "mixCantShuffle": MessageLookupByLibrary.simpleMessage(
      "이 재생목록은 새 영상이 끝없이 이어져서 셔플할 수 없어요",
    ),
    "monthly": MessageLookupByLibrary.simpleMessage("월간"),
    "multipleBrowsersMessage": MessageLookupByLibrary.simpleMessage(
      "여러 브라우저가 온라인 상태예요. 이 리모컨으로 제어할 브라우저를 고르세요.",
    ),
    "mute": MessageLookupByLibrary.simpleMessage("음소거"),
    "nextChapter": MessageLookupByLibrary.simpleMessage("다음 챕터"),
    "nextEpisode": MessageLookupByLibrary.simpleMessage("다음 화"),
    "nextTab": MessageLookupByLibrary.simpleMessage("다음 탭"),
    "nextVideo": MessageLookupByLibrary.simpleMessage("다음 영상"),
    "noBrowser": MessageLookupByLibrary.simpleMessage("브라우저 없음"),
    "noBrowserConnectedShare": MessageLookupByLibrary.simpleMessage(
      "연결된 브라우저가 없어요. Zappit 확장 프로그램이 있는 브라우저를 열고 다시 시도하세요.",
    ),
    "noBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "1. 컴퓨터에서 연결된 브라우저를 여세요.\n2. 연결되지 않으면 브라우저 상단 툴바의 Zappit 아이콘을 클릭하세요.",
    ),
    "noBrowserOnline": MessageLookupByLibrary.simpleMessage(
      "온라인 상태인 브라우저가 없어요.",
    ),
    "noBrowserOnlineShort": MessageLookupByLibrary.simpleMessage("온라인 브라우저 없음"),
    "noBrowserSelected": MessageLookupByLibrary.simpleMessage("선택된 브라우저 없음"),
    "noCategoriesFound": MessageLookupByLibrary.simpleMessage("카테고리를 찾지 못했어요"),
    "noLinkInShare": MessageLookupByLibrary.simpleMessage(
      "공유한 내용에서 링크를 찾지 못했어요",
    ),
    "noMoreTabs": MessageLookupByLibrary.simpleMessage("더 이상 탭이 없어요"),
    "noNextEpisode": MessageLookupByLibrary.simpleMessage("다음 화가 없어요"),
    "noOpenTabs": MessageLookupByLibrary.simpleMessage("열린 탭이 없어요"),
    "noPreviousPage": MessageLookupByLibrary.simpleMessage("돌아갈 이전 페이지가 없어요"),
    "noSiteSettings": MessageLookupByLibrary.simpleMessage(
      "이 사이트에는 아직 설정이 없어요.",
    ),
    "noSubtitles": MessageLookupByLibrary.simpleMessage("이 영상에는 자막이 없어요"),
    "noThanks": MessageLookupByLibrary.simpleMessage("괜찮아요"),
    "noVideosOnPage": MessageLookupByLibrary.simpleMessage(
      "브라우저의 현재 페이지에 영상이 없어요.",
    ),
    "notAvailableDuringAd": MessageLookupByLibrary.simpleMessage(
      "광고 중에는 사용할 수 없어요",
    ),
    "notAvailableForLive": MessageLookupByLibrary.simpleMessage(
      "라이브에서는 사용할 수 없음",
    ),
    "notAvailableForLiveStreams": MessageLookupByLibrary.simpleMessage(
      "라이브 방송에서는 사용할 수 없어요",
    ),
    "notAvailableForPhotos": MessageLookupByLibrary.simpleMessage(
      "사진 게시물에서는 사용할 수 없어요",
    ),
    "notConnected": MessageLookupByLibrary.simpleMessage("연결 안 됨"),
    "nothingPlaying": MessageLookupByLibrary.simpleMessage("영상을 찾지 못했어요"),
    "nothingPlayingMessage": MessageLookupByLibrary.simpleMessage(
      "브라우저의 현재 탭에 영상이 없어요. 다른 탭을 고르거나 영상 링크를 붙여넣으세요.",
    ),
    "nothingToRestore": MessageLookupByLibrary.simpleMessage("복원할 구매가 없어요"),
    "nothingToRestoreMessage": MessageLookupByLibrary.simpleMessage(
      "이 계정에서 활성화된 Zappit Pro 구독을 찾지 못했어요.",
    ),
    "obAnimAddExtension": MessageLookupByLibrary.simpleMessage("확장 프로그램 추가"),
    "obAnimAdded": MessageLookupByLibrary.simpleMessage("추가됨"),
    "obAnimConnectComputer": MessageLookupByLibrary.simpleMessage("컴퓨터에 연결하세요"),
    "obAnimConnectPhone": MessageLookupByLibrary.simpleMessage("폰 연결하기"),
    "obAnimNewCode": m15,
    "obAnimRemoteConnected": MessageLookupByLibrary.simpleMessage("리모컨 연결됨"),
    "obAnimScanCode": MessageLookupByLibrary.simpleMessage(
      "폰의 Zappit 앱으로 이 코드를 스캔하세요.",
    ),
    "obAnimTagline": MessageLookupByLibrary.simpleMessage("마우스는 이제 그만."),
    "obAnimYourPhones": MessageLookupByLibrary.simpleMessage("내 폰"),
    "off": MessageLookupByLibrary.simpleMessage("끄기"),
    "offline": MessageLookupByLibrary.simpleMessage("오프라인"),
    "offlineMessage": MessageLookupByLibrary.simpleMessage(
      "인터넷 연결을 확인하세요. 연결되면 Zappit이 자동으로 다시 연결해요.",
    ),
    "onboarding0AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Zappit 앱에서 재생/일시정지 버튼을 탭하면 노트북의 영상이 멈췄다가 다시 재생되는 모습",
    ),
    "onboarding1AnimLabel": MessageLookupByLibrary.simpleMessage(
      "브라우저에 zappit.tv/get을 입력하고 Zappit 확장 프로그램을 추가하는 모습",
    ),
    "onboarding1Body": m16,
    "onboarding1Title": MessageLookupByLibrary.simpleMessage(
      "먼저 브라우저에 Zappit 확장 프로그램을 추가하세요",
    ),
    "onboarding2AnimLabel": MessageLookupByLibrary.simpleMessage(
      "브라우저에서 Zappit 아이콘을 클릭하고 폰으로 QR 코드를 스캔하는 모습",
    ),
    "onboarding2Body": MessageLookupByLibrary.simpleMessage(
      "브라우저 툴바의 Zappit 아이콘을 클릭한 뒤, QR 코드를 스캔하세요. 연결되면 YouTube 영상을 재생하고 마법 같은 순간을 확인해 보세요!",
    ),
    "onboarding2Title": MessageLookupByLibrary.simpleMessage("QR 코드를 스캔하세요"),
    "onboardingGetStarted": MessageLookupByLibrary.simpleMessage("시작하기"),
    "onboardingIconHelp": MessageLookupByLibrary.simpleMessage(
      "Zappit 아이콘이 안 보이나요?",
    ),
    "onboardingIconHelpLabel": MessageLookupByLibrary.simpleMessage(
      "Zappit 아이콘이 안 보이나요? 자주 묻는 질문에서 답변을 확인할 수 있어요",
    ),
    "onboardingNext": MessageLookupByLibrary.simpleMessage("다음"),
    "onboardingOpenQrScanner": MessageLookupByLibrary.simpleMessage(
      "QR 스캐너 열기",
    ),
    "onboardingShareLink": MessageLookupByLibrary.simpleMessage("설치 링크 보내기"),
    "onboardingStepCount": m17,
    "onboardingStepLabel": m18,
    "onboardingWelcomeBody": MessageLookupByLibrary.simpleMessage(
      "브라우저에서 재생 중인 모든 영상을 조작하세요. 설정은 간단한 두 단계면 끝나요.",
    ),
    "onboardingWelcomeTitle": MessageLookupByLibrary.simpleMessage(
      "이제 폰이 리모컨이 돼요",
    ),
    "openALink": MessageLookupByLibrary.simpleMessage("링크 열기"),
    "openBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "탭을 보려면 Zappit 확장 프로그램이 있는 브라우저를 여세요.",
    ),
    "openLinkInBrowser": MessageLookupByLibrary.simpleMessage("브라우저에서 링크 열기"),
    "openSite": m19,
    "openedIn": m20,
    "openingIn": m21,
    "pairCodeExpired": MessageLookupByLibrary.simpleMessage(
      "만료된 코드예요. 컴퓨터에 나온 새 코드를 스캔하세요.",
    ),
    "pairCodeInvalid": MessageLookupByLibrary.simpleMessage(
      "더 이상 유효하지 않은 코드예요. 컴퓨터에 나온 새 코드를 스캔하세요.",
    ),
    "pairCodeUsed": MessageLookupByLibrary.simpleMessage(
      "이미 사용한 코드예요. 컴퓨터에 나온 새 코드를 스캔하세요.",
    ),
    "pairFailed": MessageLookupByLibrary.simpleMessage(
      "연결하지 못했어요. 인터넷 연결을 확인하고 다시 시도하세요.",
    ),
    "pairHowToInstall": MessageLookupByLibrary.simpleMessage("확장 프로그램 설치 방법"),
    "pairPhoneLimit": MessageLookupByLibrary.simpleMessage(
      "이 컴퓨터에는 이미 폰 3대가 연결되어 있어요. 연결된 다른 폰에서 Zappit을 열고 ‘더보기’의 ‘이 폰 연결 해제’를 누르세요. 다른 폰에 접근할 수 없다면 컴퓨터의 Zappit 확장 프로그램에서 ‘설정’의 ‘초기화’를 하세요.",
    ),
    "pairTitle": MessageLookupByLibrary.simpleMessage("브라우저 확장 프로그램에 연결하세요"),
    "paste": MessageLookupByLibrary.simpleMessage("붙여넣기"),
    "pasteALink": MessageLookupByLibrary.simpleMessage("링크 붙여넣기"),
    "pasteVideoLink": MessageLookupByLibrary.simpleMessage("영상 링크 붙여넣기"),
    "pause": MessageLookupByLibrary.simpleMessage("일시정지"),
    "paymentPending": MessageLookupByLibrary.simpleMessage("결제 대기 중"),
    "paymentPendingMessage": MessageLookupByLibrary.simpleMessage(
      "결제가 확인되면 바로 Pro가 켜져요.",
    ),
    "phoneName": MessageLookupByLibrary.simpleMessage("폰 이름"),
    "phoneNameEmpty": MessageLookupByLibrary.simpleMessage("이름을 입력하세요."),
    "phoneNameMessage": MessageLookupByLibrary.simpleMessage(
      "컴퓨터의 Zappit 확장 프로그램에 표시돼요.",
    ),
    "pickATab": MessageLookupByLibrary.simpleMessage("탭 고르기"),
    "pickBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "탭을 보려면 이 리모컨으로 제어할 브라우저를 고르세요.",
    ),
    "pickVideosWithPro": MessageLookupByLibrary.simpleMessage(
      "Pro로 폰에서 영상 고르기",
    ),
    "play": MessageLookupByLibrary.simpleMessage("재생"),
    "playInApp": MessageLookupByLibrary.simpleMessage("폰에서 이어 보기"),
    "playNow": MessageLookupByLibrary.simpleMessage("지금 재생"),
    "playVideoFirst": MessageLookupByLibrary.simpleMessage(
      "먼저 브라우저에서 영상을 재생하세요",
    ),
    "playing": MessageLookupByLibrary.simpleMessage("재생 중"),
    "playlist": MessageLookupByLibrary.simpleMessage("재생목록"),
    "playlistCantRepeat": MessageLookupByLibrary.simpleMessage(
      "이 재생목록은 반복할 수 없어요",
    ),
    "playlistCantShuffle": MessageLookupByLibrary.simpleMessage(
      "이 재생목록은 셔플할 수 없어요",
    ),
    "previousChapter": MessageLookupByLibrary.simpleMessage("이전 챕터"),
    "previousTab": MessageLookupByLibrary.simpleMessage("이전 탭"),
    "previousVideo": MessageLookupByLibrary.simpleMessage("이전 영상"),
    "pricePerMonth": m22,
    "pricePerYear": m23,
    "privacyPolicy": MessageLookupByLibrary.simpleMessage("개인정보 처리방침"),
    "proBannerSubtitle": MessageLookupByLibrary.simpleMessage(
      "리모컨의 모든 기능을 마음껏 쓰세요",
    ),
    "proFeatureAbLoop": MessageLookupByLibrary.simpleMessage("무제한 구간 반복"),
    "proFeatureAllSpeeds": MessageLookupByLibrary.simpleMessage(
      "모든 재생 속도 선택 가능",
    ),
    "proFeatureDedicatedControllers": MessageLookupByLibrary.simpleMessage(
      "특정 사이트 전용 리모컨 잠금 해제",
    ),
    "proFeatureFullLoop": MessageLookupByLibrary.simpleMessage("무제한 전체 반복"),
    "proFeatureVoiceBoost": MessageLookupByLibrary.simpleMessage(
      "무제한 Voice Boost",
    ),
    "proPreviewActiveBanner": m24,
    "proPreviewEndedMessage": MessageLookupByLibrary.simpleMessage(
      "Zappit Pro 어떠셨나요? 구독하면 모든 Pro 기능을 끊김 없이 계속 쓸 수 있어요.",
    ),
    "proPreviewEndedSubtitle": m25,
    "proPreviewEndedTitle": MessageLookupByLibrary.simpleMessage(
      "Pro 무료 체험이 끝났어요",
    ),
    "proPreviewEndsTomorrow": MessageLookupByLibrary.simpleMessage(
      "Pro 무료 체험이 내일 끝나요",
    ),
    "proPreviewStarted": m26,
    "proPreviewUntil": m27,
    "proRestored": m28,
    "proSubscriptionEnded": MessageLookupByLibrary.simpleMessage(
      "Pro 구독이 끝났어요",
    ),
    "proSubtitle": MessageLookupByLibrary.simpleMessage("리모컨의 모든 기능을 마음껏 쓰세요."),
    "purchaseCancelled": MessageLookupByLibrary.simpleMessage("구매가 취소되었어요"),
    "purchaseCancelledMessage": MessageLookupByLibrary.simpleMessage(
      "결제된 금액은 없어요. 언제든지 다시 시도할 수 있어요.",
    ),
    "purchaseFailed": MessageLookupByLibrary.simpleMessage("구매에 실패했어요"),
    "purchaseNotActivated": MessageLookupByLibrary.simpleMessage(
      "구매가 아직 반영되지 않았어요",
    ),
    "purchaseNotActivatedMessage": MessageLookupByLibrary.simpleMessage(
      "결제는 완료되었지만 아직 Pro가 켜지지 않았어요. 구매 복원을 눌러 보세요.",
    ),
    "purchasesNotAllowed": MessageLookupByLibrary.simpleMessage(
      "이 기기나 계정에서는 구매할 수 없어요.",
    ),
    "qualityNotChanged": MessageLookupByLibrary.simpleMessage("화질이 바뀌지 않았어요"),
    "rateZappit": MessageLookupByLibrary.simpleMessage("Zappit 평가하기"),
    "reload": MessageLookupByLibrary.simpleMessage("새로고침"),
    "remindMe": MessageLookupByLibrary.simpleMessage("알려 주세요"),
    "remoteSettings": MessageLookupByLibrary.simpleMessage("리모컨 설정"),
    "removeFromFavorites": m29,
    "removedFromFavorites": m30,
    "reorderHint": MessageLookupByLibrary.simpleMessage(
      "항목을 길게 누른 채 끌어서 순서를 바꾸세요",
    ),
    "reorderSite": m31,
    "repeatOff": MessageLookupByLibrary.simpleMessage("반복 꺼짐"),
    "repeatOffNotice": MessageLookupByLibrary.simpleMessage("반복 꺼짐"),
    "repeatOn": MessageLookupByLibrary.simpleMessage("반복 켜짐"),
    "repeatingPlaylist": MessageLookupByLibrary.simpleMessage(
      "이 재생목록을 반복 재생해요",
    ),
    "replay": MessageLookupByLibrary.simpleMessage("처음부터 재생"),
    "restoreFailed": MessageLookupByLibrary.simpleMessage("복원에 실패했어요"),
    "restorePurchases": MessageLookupByLibrary.simpleMessage("구매 복원"),
    "right": MessageLookupByLibrary.simpleMessage("오른쪽"),
    "save": MessageLookupByLibrary.simpleMessage("저장"),
    "savePercent": m32,
    "searchCategories": MessageLookupByLibrary.simpleMessage("카테고리 검색"),
    "seasonNumber": m33,
    "secondsShort": m34,
    "seekInterval": MessageLookupByLibrary.simpleMessage("건너뛰기 간격"),
    "select": MessageLookupByLibrary.simpleMessage("선택"),
    "selectVideoInBrowser": MessageLookupByLibrary.simpleMessage("재생 중인 영상 없음"),
    "selectVideoInBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "컴퓨터에서 아무 영상이나 클릭해 시청을 시작하세요. 리모컨이 여기에 나타나요.",
    ),
    "send": MessageLookupByLibrary.simpleMessage("보내기"),
    "settings": MessageLookupByLibrary.simpleMessage("설정"),
    "showChat": MessageLookupByLibrary.simpleMessage("채팅 보기"),
    "shuffleOff": MessageLookupByLibrary.simpleMessage("셔플 꺼짐"),
    "shuffleOffNotice": MessageLookupByLibrary.simpleMessage("셔플 꺼짐"),
    "shuffleOn": MessageLookupByLibrary.simpleMessage("셔플 켜짐"),
    "shufflingPlaylist": MessageLookupByLibrary.simpleMessage(
      "이 재생목록을 셔플 재생해요",
    ),
    "siteSettings": m35,
    "siteWeb": MessageLookupByLibrary.simpleMessage("웹"),
    "skipAd": MessageLookupByLibrary.simpleMessage("광고 건너뛰기"),
    "skipIntro": MessageLookupByLibrary.simpleMessage("오프닝 건너뛰기"),
    "sleepTimer": MessageLookupByLibrary.simpleMessage("취침 타이머"),
    "sleepTimerLabel": MessageLookupByLibrary.simpleMessage("취침 타이머"),
    "smallerCaptions": MessageLookupByLibrary.simpleMessage("자막 작게"),
    "soundBlockedMessage": MessageLookupByLibrary.simpleMessage(
      "탭해서 소리를 켜는 방법을 확인하세요.",
    ),
    "soundBlockedTitle": MessageLookupByLibrary.simpleMessage("왜 소리가 안 나나요?"),
    "soundHelpTitle": MessageLookupByLibrary.simpleMessage("소리"),
    "speedTrialOver": m36,
    "startFreeTrial": MessageLookupByLibrary.simpleMessage("무료 체험 시작"),
    "storeProblem": MessageLookupByLibrary.simpleMessage(
      "구매 중 문제가 발생했어요. 잠시 후 다시 시도해 주세요.",
    ),
    "storeUnavailable": MessageLookupByLibrary.simpleMessage(
      "지금은 구매하실 수 없어요. 잠시 후 다시 시도해 주세요.",
    ),
    "subscribe": MessageLookupByLibrary.simpleMessage("구독하기"),
    "success": MessageLookupByLibrary.simpleMessage("완료"),
    "support": MessageLookupByLibrary.simpleMessage("고객 지원"),
    "supportedSites": MessageLookupByLibrary.simpleMessage("지원 사이트"),
    "supportedSitesIntro": MessageLookupByLibrary.simpleMessage(
      "이 사이트들에서는 사이트에 맞춘 전용 리모컨을 쓸 수 있어요. 다른 사이트에서는 Zappit이 기본 리모컨으로 동작해요.",
    ),
    "tabMore": MessageLookupByLibrary.simpleMessage("더보기"),
    "tabRemote": MessageLookupByLibrary.simpleMessage("리모컨"),
    "tabTabs": MessageLookupByLibrary.simpleMessage("탭"),
    "tapToKeepPro": MessageLookupByLibrary.simpleMessage(
      "구독하고 모든 Pro 기능을 계속 쓰려면 탭하세요.",
    ),
    "tellAFriend": MessageLookupByLibrary.simpleMessage("친구에게 알리기"),
    "termsOfService": MessageLookupByLibrary.simpleMessage("이용약관"),
    "theaterMode": MessageLookupByLibrary.simpleMessage("영화관 모드"),
    "trialReminderBody": m37,
    "trialReminderChannel": MessageLookupByLibrary.simpleMessage("무료 체험 알림"),
    "trialReminderChannelDescription": MessageLookupByLibrary.simpleMessage(
      "무료 체험이 끝나기 전에 보내는 알림",
    ),
    "trialReminderMessage": MessageLookupByLibrary.simpleMessage(
      "예상치 못한 결제가 없도록 무료 체험이 끝나기 하루 전에 알려 드릴까요?",
    ),
    "trialReminderNotificationTitle": MessageLookupByLibrary.simpleMessage(
      "Zappit Pro 구독 무료 체험이 곧 끝나요",
    ),
    "trialReminderTitle": MessageLookupByLibrary.simpleMessage("체험 종료 알림"),
    "trialTerms": m38,
    "trialTermsDays": m39,
    "trialTermsMonths": m40,
    "trialTermsYears": m41,
    "tryAgain": MessageLookupByLibrary.simpleMessage("다시 시도"),
    "turnOffAbFirst": MessageLookupByLibrary.simpleMessage("먼저 구간 반복을 끄세요"),
    "tutorial": MessageLookupByLibrary.simpleMessage("가이드"),
    "unavailable": MessageLookupByLibrary.simpleMessage("이용할 수 없음"),
    "undo": MessageLookupByLibrary.simpleMessage("실행 취소"),
    "unmute": MessageLookupByLibrary.simpleMessage("음소거 해제"),
    "untitled": MessageLookupByLibrary.simpleMessage("제목 없음"),
    "up": MessageLookupByLibrary.simpleMessage("위"),
    "upNext": MessageLookupByLibrary.simpleMessage("다음 영상"),
    "upNextCountdown": m42,
    "upgrade": MessageLookupByLibrary.simpleMessage("업그레이드"),
    "videoLengthUnknown": MessageLookupByLibrary.simpleMessage(
      "이 영상의 길이를 알 수 없어요",
    ),
    "videoQuality": MessageLookupByLibrary.simpleMessage("화질"),
    "view": MessageLookupByLibrary.simpleMessage("보기"),
    "voiceBoostDuringAd": MessageLookupByLibrary.simpleMessage(
      "광고 중에는 Voice Boost를 쓸 수 없어요",
    ),
    "voiceBoostOff": MessageLookupByLibrary.simpleMessage("Voice Boost 꺼짐"),
    "voiceBoostOn": MessageLookupByLibrary.simpleMessage("Voice Boost 켜짐"),
    "voiceBoostTrialLeft": m43,
    "voiceBoostTrialOver": m44,
    "voiceBoostTurnedOn": MessageLookupByLibrary.simpleMessage(
      "Voice Boost 켜짐: 목소리가 더 잘 들려요",
    ),
    "voiceBoostUnsupported": MessageLookupByLibrary.simpleMessage(
      "이 영상은 Voice Boost를 지원하지 않아요",
    ),
    "volumeDown": MessageLookupByLibrary.simpleMessage("볼륨 낮추기"),
    "volumeUp": MessageLookupByLibrary.simpleMessage("볼륨 높이기"),
    "waitingForBrowser": MessageLookupByLibrary.simpleMessage("브라우저를 기다리는 중…"),
    "watchAgain": MessageLookupByLibrary.simpleMessage("다시 보기"),
    "watching": MessageLookupByLibrary.simpleMessage("시청 중"),
    "welcomeToPro": m45,
    "windowNumber": m46,
    "yearly": MessageLookupByLibrary.simpleMessage("연간"),
    "yourBrowser": MessageLookupByLibrary.simpleMessage("브라우저"),
    "youreConnected": MessageLookupByLibrary.simpleMessage("연결되었어요!"),
    "youreOffline": MessageLookupByLibrary.simpleMessage("오프라인 상태예요"),
    "youtubeHome": MessageLookupByLibrary.simpleMessage("YouTube 홈"),
    "ytCourses": MessageLookupByLibrary.simpleMessage("강좌"),
    "ytDownloads": MessageLookupByLibrary.simpleMessage("오프라인 저장 동영상"),
    "ytExplore": MessageLookupByLibrary.simpleMessage("탐색"),
    "ytGaming": MessageLookupByLibrary.simpleMessage("게임"),
    "ytHistory": MessageLookupByLibrary.simpleMessage("시청 기록"),
    "ytHype": MessageLookupByLibrary.simpleMessage("Hype"),
    "ytLikedVideos": MessageLookupByLibrary.simpleMessage("좋아요 표시한 동영상"),
    "ytLive": MessageLookupByLibrary.simpleMessage("라이브"),
    "ytMemberships": MessageLookupByLibrary.simpleMessage("멤버십"),
    "ytMusic": MessageLookupByLibrary.simpleMessage("음악"),
    "ytPlaylists": MessageLookupByLibrary.simpleMessage("재생목록"),
    "ytPodcasts": MessageLookupByLibrary.simpleMessage("팟캐스트"),
    "ytShorts": MessageLookupByLibrary.simpleMessage("Shorts"),
    "ytSubscriptions": MessageLookupByLibrary.simpleMessage("구독"),
    "ytVideos": MessageLookupByLibrary.simpleMessage("동영상"),
    "ytWatchLater": MessageLookupByLibrary.simpleMessage("나중에 볼 동영상"),
    "ytYou": MessageLookupByLibrary.simpleMessage("내 페이지"),
  };
}
