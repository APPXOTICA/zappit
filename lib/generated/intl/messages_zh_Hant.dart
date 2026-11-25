// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh_Hant locale. All the
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
  String get localeName => 'zh_Hant';

  static String m0(site) => "將 ${site} 加入我的最愛";

  static String m1(count) => "倒轉 ${count} 秒";

  static String m2(browser) => "${browser} 沒有回應。請確認瀏覽器已開啟。";

  static String m3(browsers) => "已與 ${browsers} 中斷連線";

  static String m4(name) => "頻道：${name}";

  static String m5(current, total) => "章節 ${current}/${total}";

  static String m6(browser) => "已連接到 ${browser}";

  static String m7(count) => "快轉 ${count} 秒";

  static String m8(count) => "${count} 天免費試用";

  static String m9(count) => "${count} 個月免費試用";

  static String m10(count) => "${count} 週免費試用";

  static String m11(count) => "${count} 年免費試用";

  static String m12(price) => "每月只要 ${price}";

  static String m13(count) => "${Intl.plural(count, other: '${count} 分鐘')}";

  static String m14(count) => "${count} 分鐘";

  static String m15(time) => "${time} 後更新 QR 碼";

  static String m16(url) => "在電腦的瀏覽器中開啟 ${url}，安裝 Zappit 擴充功能。";

  static String m17(current, total) => "${current} / ${total}";

  static String m18(current, total) => "第 ${current} 步，共 ${total} 步";

  static String m19(site) => "開啟 ${site}";

  static String m20(browser) => "已在 ${browser} 中開啟";

  static String m21(browser) => "正在 ${browser} 中開啟…";

  static String m22(price) => "${price} / 月";

  static String m23(price) => "${price} / 年";

  static String m24(date) =>
      "你的 Pro 免費體驗有效至 ${date}。在結束前訂閱，即可不間斷地繼續使用所有 Pro 功能。";

  static String m25(proName) => "你的 Pro 免費體驗已結束。訂閱 ${proName}，即可繼續使用所有 Pro 功能。";

  static String m26(days) => "${days} 天內免費暢享 Zappit Pro 全部功能。完全免費，不會自動扣款。";

  static String m27(date) => "Pro 免費體驗至 ${date}";

  static String m28(proName) => "已回復 ${proName}";

  static String m29(site) => "將 ${site} 從我的最愛中移除";

  static String m30(site) => "已將 ${site} 從我的最愛中移除";

  static String m31(site) => "調整 ${site} 的順序";

  static String m32(percent) => "省 ${percent}%";

  static String m33(number) => "第 ${number} 季";

  static String m34(count) => "${count} 秒";

  static String m35(site) => "${site} 設定";

  static String m36(count) => "已恢復 1 倍速。免費使用者可使用此速度 ${count} 秒。";

  static String m37(price, date) =>
      "你的免費試用明天結束。${date} 將收取 ${price}。如果不想繼續，請在那之前取消訂閱。";

  static String m38(price) => "先免費試用，之後每年 ${price}。";

  static String m39(count, price) => "先免費試用 ${count} 天，之後每年 ${price}。";

  static String m40(count, price) => "先免費試用 ${count} 個月，之後每年 ${price}。";

  static String m41(count, price) => "先免費試用 ${count} 年，之後每年 ${price}。";

  static String m42(count) => "即將播放 · ${count} 秒後開始";

  static String m43(count) => "Voice Boost 試用，剩餘 ${count} 秒";

  static String m44(count) =>
      "Voice Boost 已關閉。免費使用者可使用 Voice Boost ${count} 秒。";

  static String m45(proName) => "已成功升級為 ${proName}！";

  static String m46(number) => "視窗 ${number}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "abLoopCount": MessageLookupByLibrary.simpleMessage("區段循環次數"),
    "abOffForLive": MessageLookupByLibrary.simpleMessage("直播無法使用區段循環"),
    "account": MessageLookupByLibrary.simpleMessage("連線"),
    "adBadge": MessageLookupByLibrary.simpleMessage("廣告"),
    "addToFavorites": m0,
    "allCategories": MessageLookupByLibrary.simpleMessage("所有類別"),
    "allSites": MessageLookupByLibrary.simpleMessage("所有網站"),
    "alreadySubscribed": MessageLookupByLibrary.simpleMessage(
      "你已擁有此訂閱。請試試「回復購買」。",
    ),
    "back": MessageLookupByLibrary.simpleMessage("返回"),
    "backSeconds": m1,
    "browserDidNotAnswer": m2,
    "browserNotResponding": MessageLookupByLibrary.simpleMessage("瀏覽器沒有回應"),
    "browsers": MessageLookupByLibrary.simpleMessage("瀏覽器"),
    "browsersDisconnected": m3,
    "browsersDisconnectedBody": MessageLookupByLibrary.simpleMessage(
      "已有另一支手機連接到該瀏覽器。如需重新連線，請掃描那台電腦上的 QR 碼。",
    ),
    "cameraDenied": MessageLookupByLibrary.simpleMessage(
      "請在「設定」中允許存取相機，才能掃描代碼。",
    ),
    "cameraUnavailable": MessageLookupByLibrary.simpleMessage("目前無法使用相機。"),
    "cancel": MessageLookupByLibrary.simpleMessage("取消"),
    "cancelAnytime": MessageLookupByLibrary.simpleMessage("可隨時在訂閱管理中取消。"),
    "cantLoadPage": MessageLookupByLibrary.simpleMessage("無法載入此頁面"),
    "cantOpenOnPhone": MessageLookupByLibrary.simpleMessage("此影片無法在手機上開啟"),
    "cantReachBrowser": MessageLookupByLibrary.simpleMessage("無法連線到瀏覽器"),
    "cantSeekVideo": MessageLookupByLibrary.simpleMessage("此影片無法調整播放位置"),
    "captionLanguage": MessageLookupByLibrary.simpleMessage("字幕語言"),
    "captions": MessageLookupByLibrary.simpleMessage("字幕"),
    "captionsOff": MessageLookupByLibrary.simpleMessage("字幕已關閉"),
    "captionsOn": MessageLookupByLibrary.simpleMessage("字幕已開啟"),
    "categories": MessageLookupByLibrary.simpleMessage("類別"),
    "categoryFavoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "點一下類別上的星號即可加到這裡。",
    ),
    "channelLabel": m4,
    "chapterPosition": m5,
    "chapters": MessageLookupByLibrary.simpleMessage("章節"),
    "chaptersDuringAd": MessageLookupByLibrary.simpleMessage("廣告播放時無法跳轉章節"),
    "checkConnection": MessageLookupByLibrary.simpleMessage("請檢查網路連線後再試一次。"),
    "checkConnectionShort": MessageLookupByLibrary.simpleMessage("請檢查連線後再試一次。"),
    "chooseBrowser": MessageLookupByLibrary.simpleMessage("選擇瀏覽器"),
    "chooseNextVideo": MessageLookupByLibrary.simpleMessage("選擇下一部影片"),
    "clear": MessageLookupByLibrary.simpleMessage("清除"),
    "close": MessageLookupByLibrary.simpleMessage("關閉"),
    "connectBrowser": MessageLookupByLibrary.simpleMessage("連接瀏覽器"),
    "connectBrowserFirst": MessageLookupByLibrary.simpleMessage("請先連接瀏覽器"),
    "connected": MessageLookupByLibrary.simpleMessage("已連線"),
    "connectedTo": m6,
    "contactUs": MessageLookupByLibrary.simpleMessage("聯絡我們"),
    "contactUsKeepInfo": MessageLookupByLibrary.simpleMessage("請勿刪除以下資訊。"),
    "couldNotGetVideoLink": MessageLookupByLibrary.simpleMessage("無法取得影片連結"),
    "couldNotLoadEpisodes": MessageLookupByLibrary.simpleMessage("無法載入集數"),
    "couldNotLoadPlaylist": MessageLookupByLibrary.simpleMessage("無法載入播放清單"),
    "couldNotOpenLink": MessageLookupByLibrary.simpleMessage("無法開啟連結"),
    "couldNotReadQuality": MessageLookupByLibrary.simpleMessage("無法從頁面讀取畫質選項。"),
    "delete": MessageLookupByLibrary.simpleMessage("刪除"),
    "disconnect": MessageLookupByLibrary.simpleMessage("中斷連線"),
    "disconnectPhone": MessageLookupByLibrary.simpleMessage("中斷這支手機的連線"),
    "disconnectPhoneMessage": MessageLookupByLibrary.simpleMessage(
      "這支手機將不再控制你的電腦。如需重新連線，請掃描電腦上的 QR 碼。",
    ),
    "down": MessageLookupByLibrary.simpleMessage("下"),
    "endOfVideo": MessageLookupByLibrary.simpleMessage("影片結束時"),
    "enterValidLink": MessageLookupByLibrary.simpleMessage(
      "請輸入以 http 或 https 開頭的連結",
    ),
    "episodes": MessageLookupByLibrary.simpleMessage("集數"),
    "error": MessageLookupByLibrary.simpleMessage("錯誤"),
    "errorButtonNotFound": MessageLookupByLibrary.simpleMessage("在頁面上找不到該按鈕"),
    "errorDuringAd": MessageLookupByLibrary.simpleMessage("廣告播放時無法執行此操作"),
    "errorEndBeforeStart": MessageLookupByLibrary.simpleMessage("終點必須晚於起點"),
    "errorGeneric": MessageLookupByLibrary.simpleMessage("發生問題"),
    "errorInvalidUrl": MessageLookupByLibrary.simpleMessage("無法開啟此連結"),
    "errorNoBrowser": MessageLookupByLibrary.simpleMessage("尚未選擇瀏覽器"),
    "errorNoMedia": MessageLookupByLibrary.simpleMessage("沒有正在播放的影片"),
    "errorNotChanged": MessageLookupByLibrary.simpleMessage("網站沒有做出變更"),
    "errorNotSupported": MessageLookupByLibrary.simpleMessage("此網站不支援這項操作"),
    "errorStartAfterEnd": MessageLookupByLibrary.simpleMessage("起點必須早於終點"),
    "errorTabClosed": MessageLookupByLibrary.simpleMessage("該分頁已關閉"),
    "exitFullScreen": MessageLookupByLibrary.simpleMessage("結束全螢幕"),
    "extensionUpdatedReload": MessageLookupByLibrary.simpleMessage(
      "Zappit 擴充功能已更新。請在瀏覽器中重新載入頁面，以繼續使用所有控制功能。",
    ),
    "faq": MessageLookupByLibrary.simpleMessage("常見問題"),
    "favorites": MessageLookupByLibrary.simpleMessage("我的最愛"),
    "favoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "點一下網站上的星號即可加到這裡。",
    ),
    "forwardSeconds": m7,
    "frameByFrame": MessageLookupByLibrary.simpleMessage("逐格"),
    "freeTrial": MessageLookupByLibrary.simpleMessage("免費試用"),
    "freeTrialDays": m8,
    "freeTrialMonths": m9,
    "freeTrialWeeks": m10,
    "freeTrialYears": m11,
    "fullPowerUnlocked": MessageLookupByLibrary.simpleMessage("已解鎖全部功能"),
    "fullScreen": MessageLookupByLibrary.simpleMessage("全螢幕"),
    "generalSettings": MessageLookupByLibrary.simpleMessage("一般設定"),
    "gotIt": MessageLookupByLibrary.simpleMessage("知道了"),
    "hideChat": MessageLookupByLibrary.simpleMessage("隱藏聊天室"),
    "home": MessageLookupByLibrary.simpleMessage("首頁"),
    "justPerMonth": m12,
    "largerCaptions": MessageLookupByLibrary.simpleMessage("放大字幕"),
    "lastVideoInPlaylist": MessageLookupByLibrary.simpleMessage(
      "這是播放清單中的最後一部影片",
    ),
    "learnMore": MessageLookupByLibrary.simpleMessage("瞭解更多"),
    "left": MessageLookupByLibrary.simpleMessage("左"),
    "linkPanelHint": MessageLookupByLibrary.simpleMessage(
      "貼上影片連結並點一下「傳送」，就會在瀏覽器的新分頁中開啟。",
    ),
    "liveBadge": MessageLookupByLibrary.simpleMessage("直播"),
    "liveCantRewind": MessageLookupByLibrary.simpleMessage("此直播無法倒轉"),
    "longPressSpeed": MessageLookupByLibrary.simpleMessage("長按速度"),
    "loopEnd": MessageLookupByLibrary.simpleMessage("循環終點"),
    "loopOff": MessageLookupByLibrary.simpleMessage("循環已關閉"),
    "loopOn": MessageLookupByLibrary.simpleMessage("循環已開啟"),
    "loopStart": MessageLookupByLibrary.simpleMessage("循環起點"),
    "manageSubscription": MessageLookupByLibrary.simpleMessage("管理訂閱"),
    "minutesCount": m13,
    "minutesShort": m14,
    "mixCantRepeat": MessageLookupByLibrary.simpleMessage(
      "此播放清單會不斷播放新影片，因此無法重複播放",
    ),
    "mixCantShuffle": MessageLookupByLibrary.simpleMessage(
      "此播放清單會不斷播放新影片，因此無法隨機播放",
    ),
    "monthly": MessageLookupByLibrary.simpleMessage("月繳"),
    "multipleBrowsersMessage": MessageLookupByLibrary.simpleMessage(
      "有多個瀏覽器在線上。請選擇要用這個遙控器控制的瀏覽器。",
    ),
    "mute": MessageLookupByLibrary.simpleMessage("靜音"),
    "nextChapter": MessageLookupByLibrary.simpleMessage("下一個章節"),
    "nextEpisode": MessageLookupByLibrary.simpleMessage("下一集"),
    "nextTab": MessageLookupByLibrary.simpleMessage("下一個分頁"),
    "nextVideo": MessageLookupByLibrary.simpleMessage("下一部影片"),
    "noBrowser": MessageLookupByLibrary.simpleMessage("沒有瀏覽器"),
    "noBrowserConnectedShare": MessageLookupByLibrary.simpleMessage(
      "沒有已連接的瀏覽器。請開啟安裝了 Zappit 擴充功能的瀏覽器後再試一次。",
    ),
    "noBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "1. 在電腦上開啟已連接的瀏覽器。\n2. 如果仍未連線，請點選瀏覽器上方工具列中的 Zappit 圖示。",
    ),
    "noBrowserOnline": MessageLookupByLibrary.simpleMessage("沒有上線中的瀏覽器。"),
    "noBrowserOnlineShort": MessageLookupByLibrary.simpleMessage("沒有上線中的瀏覽器"),
    "noBrowserSelected": MessageLookupByLibrary.simpleMessage("尚未選擇瀏覽器"),
    "noCategoriesFound": MessageLookupByLibrary.simpleMessage("找不到類別"),
    "noLinkInShare": MessageLookupByLibrary.simpleMessage("分享的內容中找不到連結"),
    "noMoreTabs": MessageLookupByLibrary.simpleMessage("沒有更多分頁"),
    "noNextEpisode": MessageLookupByLibrary.simpleMessage("沒有下一集"),
    "noOpenTabs": MessageLookupByLibrary.simpleMessage("沒有開啟的分頁"),
    "noPreviousPage": MessageLookupByLibrary.simpleMessage("沒有可返回的上一頁"),
    "noSiteSettings": MessageLookupByLibrary.simpleMessage("此網站目前沒有設定。"),
    "noSubtitles": MessageLookupByLibrary.simpleMessage("此影片沒有字幕"),
    "noThanks": MessageLookupByLibrary.simpleMessage("不用了"),
    "noVideosOnPage": MessageLookupByLibrary.simpleMessage("瀏覽器目前的頁面上沒有影片。"),
    "notAvailableDuringAd": MessageLookupByLibrary.simpleMessage("廣告播放時無法使用"),
    "notAvailableForLive": MessageLookupByLibrary.simpleMessage("直播無法使用"),
    "notAvailableForLiveStreams": MessageLookupByLibrary.simpleMessage(
      "直播無法使用此功能",
    ),
    "notAvailableForPhotos": MessageLookupByLibrary.simpleMessage("相片貼文無法使用"),
    "notConnected": MessageLookupByLibrary.simpleMessage("未連線"),
    "nothingPlaying": MessageLookupByLibrary.simpleMessage("找不到影片"),
    "nothingPlayingMessage": MessageLookupByLibrary.simpleMessage(
      "此分頁中沒有影片。請選擇其他分頁，或貼上影片連結。",
    ),
    "nothingToRestore": MessageLookupByLibrary.simpleMessage("沒有可回復的購買項目"),
    "nothingToRestoreMessage": MessageLookupByLibrary.simpleMessage(
      "此帳號中找不到有效的 Zappit Pro 訂閱。",
    ),
    "obAnimAddExtension": MessageLookupByLibrary.simpleMessage("加入擴充功能"),
    "obAnimAdded": MessageLookupByLibrary.simpleMessage("已加入"),
    "obAnimConnectComputer": MessageLookupByLibrary.simpleMessage("連接到你的電腦"),
    "obAnimConnectPhone": MessageLookupByLibrary.simpleMessage("連接手機"),
    "obAnimNewCode": m15,
    "obAnimRemoteConnected": MessageLookupByLibrary.simpleMessage("遙控器已連線"),
    "obAnimScanCode": MessageLookupByLibrary.simpleMessage(
      "請用手機上的 Zappit App 掃描這個 QR 碼。",
    ),
    "obAnimTagline": MessageLookupByLibrary.simpleMessage("告別滑鼠。"),
    "obAnimYourPhones": MessageLookupByLibrary.simpleMessage("你的手機"),
    "off": MessageLookupByLibrary.simpleMessage("關閉"),
    "offline": MessageLookupByLibrary.simpleMessage("離線"),
    "offlineMessage": MessageLookupByLibrary.simpleMessage(
      "請檢查網路連線。Zappit 會自動重新連線。",
    ),
    "onboarding0AnimLabel": MessageLookupByLibrary.simpleMessage(
      "在 Zappit App 中點一下播放/暫停按鈕，筆電上的影片隨之暫停和繼續播放",
    ),
    "onboarding1AnimLabel": MessageLookupByLibrary.simpleMessage(
      "在瀏覽器中輸入 zappit.tv/get 並加入 Zappit 擴充功能",
    ),
    "onboarding1Body": m16,
    "onboarding1Title": MessageLookupByLibrary.simpleMessage(
      "首先，將 Zappit 擴充功能加入瀏覽器",
    ),
    "onboarding2AnimLabel": MessageLookupByLibrary.simpleMessage(
      "在瀏覽器中點選 Zappit 圖示，然後用手機掃描 QR 碼",
    ),
    "onboarding2Body": MessageLookupByLibrary.simpleMessage(
      "點選瀏覽器工具列中的 Zappit 圖示，然後將相機對準 QR 碼。",
    ),
    "onboarding2Title": MessageLookupByLibrary.simpleMessage("掃描 QR 碼"),
    "onboardingGetStarted": MessageLookupByLibrary.simpleMessage("開始使用"),
    "onboardingIconHelp": MessageLookupByLibrary.simpleMessage(
      "看不到 Zappit 圖示？",
    ),
    "onboardingIconHelpLabel": MessageLookupByLibrary.simpleMessage(
      "看不到 Zappit 圖示？在常見問題中開啟答案",
    ),
    "onboardingNext": MessageLookupByLibrary.simpleMessage("下一步"),
    "onboardingOpenQrScanner": MessageLookupByLibrary.simpleMessage(
      "開啟 QR 碼掃描器",
    ),
    "onboardingShareLink": MessageLookupByLibrary.simpleMessage("傳送安裝連結"),
    "onboardingStepCount": m17,
    "onboardingStepLabel": m18,
    "onboardingWelcomeBody": MessageLookupByLibrary.simpleMessage(
      "控制電腦上的任何影片。只要兩個簡單步驟即可完成設定。",
    ),
    "onboardingWelcomeTitle": MessageLookupByLibrary.simpleMessage("你的手機就是遙控器"),
    "openALink": MessageLookupByLibrary.simpleMessage("開啟連結"),
    "openBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "請開啟安裝了 Zappit 擴充功能的瀏覽器，以查看它的分頁。",
    ),
    "openLinkInBrowser": MessageLookupByLibrary.simpleMessage("在瀏覽器中開啟連結"),
    "openSite": m19,
    "openedIn": m20,
    "openingIn": m21,
    "pairCodeExpired": MessageLookupByLibrary.simpleMessage(
      "此代碼已過期。請掃描電腦上的新代碼。",
    ),
    "pairCodeInvalid": MessageLookupByLibrary.simpleMessage(
      "此代碼已失效。請掃描電腦上的新代碼。",
    ),
    "pairCodeUsed": MessageLookupByLibrary.simpleMessage("此代碼已使用過。請掃描電腦上的新代碼。"),
    "pairFailed": MessageLookupByLibrary.simpleMessage("無法連線。請檢查網路連線後再試一次。"),
    "pairHowToInstall": MessageLookupByLibrary.simpleMessage("如何安裝擴充功能"),
    "pairPhoneLimit": MessageLookupByLibrary.simpleMessage(
      "這台電腦已經連接 3 支手機。請在已連接的其他手機上開啟 Zappit，並在「更多」中點一下「中斷這支手機的連線」。如果無法使用其他已連接的手機，請在電腦上的 Zappit 擴充功能中開啟「設定」，點選「重設」。",
    ),
    "pairTitle": MessageLookupByLibrary.simpleMessage("連接到瀏覽器擴充功能"),
    "paste": MessageLookupByLibrary.simpleMessage("貼上"),
    "pasteALink": MessageLookupByLibrary.simpleMessage("貼上連結"),
    "pasteVideoLink": MessageLookupByLibrary.simpleMessage("貼上影片連結"),
    "pause": MessageLookupByLibrary.simpleMessage("暫停"),
    "paymentPending": MessageLookupByLibrary.simpleMessage("付款待確認"),
    "paymentPendingMessage": MessageLookupByLibrary.simpleMessage(
      "付款確認後，Pro 會立即開啟。",
    ),
    "phoneName": MessageLookupByLibrary.simpleMessage("手機名稱"),
    "phoneNameEmpty": MessageLookupByLibrary.simpleMessage("請輸入名稱。"),
    "phoneNameMessage": MessageLookupByLibrary.simpleMessage(
      "會顯示在電腦上的 Zappit 擴充功能中。",
    ),
    "pickATab": MessageLookupByLibrary.simpleMessage("選擇分頁"),
    "pickBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "請選擇這個遙控器要控制的瀏覽器，以查看它的分頁。",
    ),
    "pickVideosWithPro": MessageLookupByLibrary.simpleMessage(
      "使用 Pro 在手機上挑選影片",
    ),
    "play": MessageLookupByLibrary.simpleMessage("播放"),
    "playInApp": MessageLookupByLibrary.simpleMessage("在手機上繼續觀看"),
    "playNow": MessageLookupByLibrary.simpleMessage("立即播放"),
    "playVideoFirst": MessageLookupByLibrary.simpleMessage("請先在瀏覽器中播放影片"),
    "playing": MessageLookupByLibrary.simpleMessage("正在播放"),
    "playlist": MessageLookupByLibrary.simpleMessage("播放清單"),
    "playlistCantRepeat": MessageLookupByLibrary.simpleMessage("此播放清單無法重複播放"),
    "playlistCantShuffle": MessageLookupByLibrary.simpleMessage("此播放清單無法隨機播放"),
    "previousChapter": MessageLookupByLibrary.simpleMessage("上一個章節"),
    "previousTab": MessageLookupByLibrary.simpleMessage("上一個分頁"),
    "previousVideo": MessageLookupByLibrary.simpleMessage("上一部影片"),
    "pricePerMonth": m22,
    "pricePerYear": m23,
    "privacyPolicy": MessageLookupByLibrary.simpleMessage("隱私權政策"),
    "proBannerSubtitle": MessageLookupByLibrary.simpleMessage("發揮遙控器的完整實力"),
    "proFeatureAbLoop": MessageLookupByLibrary.simpleMessage("無限使用區段循環"),
    "proFeatureAllSpeeds": MessageLookupByLibrary.simpleMessage("可選擇所有播放速度"),
    "proFeatureDedicatedControllers": MessageLookupByLibrary.simpleMessage(
      "解鎖特定網站專屬遙控器",
    ),
    "proFeatureFullLoop": MessageLookupByLibrary.simpleMessage("無限使用整部影片循環"),
    "proFeatureVoiceBoost": MessageLookupByLibrary.simpleMessage(
      "無限使用 Voice Boost",
    ),
    "proPreviewActiveBanner": m24,
    "proPreviewEndedMessage": MessageLookupByLibrary.simpleMessage(
      "覺得 Zappit Pro 如何？訂閱後即可不間斷地繼續使用所有 Pro 功能。",
    ),
    "proPreviewEndedSubtitle": m25,
    "proPreviewEndedTitle": MessageLookupByLibrary.simpleMessage(
      "你的 Pro 免費體驗已結束",
    ),
    "proPreviewEndsTomorrow": MessageLookupByLibrary.simpleMessage(
      "Pro 免費體驗明天結束",
    ),
    "proPreviewStarted": m26,
    "proPreviewUntil": m27,
    "proRestored": m28,
    "proSubscriptionEnded": MessageLookupByLibrary.simpleMessage(
      "你的 Pro 訂閱已結束",
    ),
    "proSubtitle": MessageLookupByLibrary.simpleMessage("發揮遙控器的完整實力。"),
    "purchaseCancelled": MessageLookupByLibrary.simpleMessage("已取消購買"),
    "purchaseCancelledMessage": MessageLookupByLibrary.simpleMessage(
      "沒有產生任何費用。你隨時可以再試一次。",
    ),
    "purchaseFailed": MessageLookupByLibrary.simpleMessage("購買失敗"),
    "purchaseNotActivated": MessageLookupByLibrary.simpleMessage("購買尚未啟用"),
    "purchaseNotActivatedMessage": MessageLookupByLibrary.simpleMessage(
      "付款已完成，但 Pro 尚未啟用。請試試「回復購買」。",
    ),
    "purchasesNotAllowed": MessageLookupByLibrary.simpleMessage(
      "此裝置或帳號無法進行購買。",
    ),
    "qualityNotChanged": MessageLookupByLibrary.simpleMessage("畫質沒有改變"),
    "rateZappit": MessageLookupByLibrary.simpleMessage("為 Zappit 評分"),
    "reload": MessageLookupByLibrary.simpleMessage("重新載入"),
    "remindMe": MessageLookupByLibrary.simpleMessage("提醒我"),
    "remoteSettings": MessageLookupByLibrary.simpleMessage("遙控器設定"),
    "removeFromFavorites": m29,
    "removedFromFavorites": m30,
    "reorderHint": MessageLookupByLibrary.simpleMessage("按住項目並拖曳即可調整順序"),
    "reorderSite": m31,
    "repeatOff": MessageLookupByLibrary.simpleMessage("重複播放已關閉"),
    "repeatOffNotice": MessageLookupByLibrary.simpleMessage("重複播放已關閉"),
    "repeatOn": MessageLookupByLibrary.simpleMessage("重複播放已開啟"),
    "repeatingPlaylist": MessageLookupByLibrary.simpleMessage("正在重複播放此播放清單"),
    "replay": MessageLookupByLibrary.simpleMessage("從頭播放"),
    "restoreFailed": MessageLookupByLibrary.simpleMessage("回復失敗"),
    "restorePurchases": MessageLookupByLibrary.simpleMessage("回復購買"),
    "right": MessageLookupByLibrary.simpleMessage("右"),
    "save": MessageLookupByLibrary.simpleMessage("儲存"),
    "savePercent": m32,
    "searchCategories": MessageLookupByLibrary.simpleMessage("搜尋類別"),
    "seasonNumber": m33,
    "secondsShort": m34,
    "seekInterval": MessageLookupByLibrary.simpleMessage("快轉/倒轉間隔"),
    "select": MessageLookupByLibrary.simpleMessage("選取"),
    "selectVideoInBrowser": MessageLookupByLibrary.simpleMessage("沒有正在播放的內容"),
    "selectVideoInBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "在電腦上點選任一影片開始觀看，遙控器就會顯示在這裡。",
    ),
    "send": MessageLookupByLibrary.simpleMessage("傳送"),
    "settings": MessageLookupByLibrary.simpleMessage("設定"),
    "showChat": MessageLookupByLibrary.simpleMessage("顯示聊天室"),
    "shuffleOff": MessageLookupByLibrary.simpleMessage("隨機播放已關閉"),
    "shuffleOffNotice": MessageLookupByLibrary.simpleMessage("隨機播放已關閉"),
    "shuffleOn": MessageLookupByLibrary.simpleMessage("隨機播放已開啟"),
    "shufflingPlaylist": MessageLookupByLibrary.simpleMessage("正在隨機播放此播放清單"),
    "siteSettings": m35,
    "siteWeb": MessageLookupByLibrary.simpleMessage("網頁"),
    "skipAd": MessageLookupByLibrary.simpleMessage("略過廣告"),
    "skipIntro": MessageLookupByLibrary.simpleMessage("略過片頭"),
    "sleepTimer": MessageLookupByLibrary.simpleMessage("睡眠定時"),
    "sleepTimerLabel": MessageLookupByLibrary.simpleMessage("睡眠定時"),
    "smallerCaptions": MessageLookupByLibrary.simpleMessage("縮小字幕"),
    "soundBlockedMessage": MessageLookupByLibrary.simpleMessage("點一下查看如何開啟聲音。"),
    "soundBlockedTitle": MessageLookupByLibrary.simpleMessage("為什麼聽不到聲音？"),
    "soundHelpTitle": MessageLookupByLibrary.simpleMessage("聲音"),
    "speedTrialOver": m36,
    "startFreeTrial": MessageLookupByLibrary.simpleMessage("開始免費試用"),
    "storeProblem": MessageLookupByLibrary.simpleMessage("購買時發生問題。請稍後再試。"),
    "storeUnavailable": MessageLookupByLibrary.simpleMessage("目前無法購買。請稍後再試。"),
    "subscribe": MessageLookupByLibrary.simpleMessage("訂閱"),
    "success": MessageLookupByLibrary.simpleMessage("成功"),
    "support": MessageLookupByLibrary.simpleMessage("支援"),
    "supportedSites": MessageLookupByLibrary.simpleMessage("支援的網站"),
    "supportedSitesIntro": MessageLookupByLibrary.simpleMessage(
      "這些網站有專門打造的遙控器。在其他網站上，Zappit 會以標準遙控器運作。",
    ),
    "tabMore": MessageLookupByLibrary.simpleMessage("更多"),
    "tabRemote": MessageLookupByLibrary.simpleMessage("遙控器"),
    "tabTabs": MessageLookupByLibrary.simpleMessage("分頁"),
    "tapToKeepPro": MessageLookupByLibrary.simpleMessage("點一下即可繼續使用所有 Pro 功能。"),
    "tellAFriend": MessageLookupByLibrary.simpleMessage("推薦給朋友"),
    "termsOfService": MessageLookupByLibrary.simpleMessage("服務條款"),
    "theaterMode": MessageLookupByLibrary.simpleMessage("劇院模式"),
    "trialReminderBody": m37,
    "trialReminderChannel": MessageLookupByLibrary.simpleMessage("免費試用提醒"),
    "trialReminderChannelDescription": MessageLookupByLibrary.simpleMessage(
      "免費試用結束前的提醒",
    ),
    "trialReminderMessage": MessageLookupByLibrary.simpleMessage(
      "要在免費試用結束的前一天提醒你嗎？這樣就不會被意外扣款。",
    ),
    "trialReminderNotificationTitle": MessageLookupByLibrary.simpleMessage(
      "Zappit Pro 免費試用即將結束",
    ),
    "trialReminderTitle": MessageLookupByLibrary.simpleMessage("試用提醒"),
    "trialTerms": m38,
    "trialTermsDays": m39,
    "trialTermsMonths": m40,
    "trialTermsYears": m41,
    "tryAgain": MessageLookupByLibrary.simpleMessage("再試一次"),
    "turnOffAbFirst": MessageLookupByLibrary.simpleMessage("請先關閉區段循環"),
    "tutorial": MessageLookupByLibrary.simpleMessage("使用指南"),
    "unavailable": MessageLookupByLibrary.simpleMessage("無法使用"),
    "undo": MessageLookupByLibrary.simpleMessage("復原"),
    "unmute": MessageLookupByLibrary.simpleMessage("取消靜音"),
    "untitled": MessageLookupByLibrary.simpleMessage("未命名"),
    "up": MessageLookupByLibrary.simpleMessage("上"),
    "upNext": MessageLookupByLibrary.simpleMessage("即將播放"),
    "upNextCountdown": m42,
    "upgrade": MessageLookupByLibrary.simpleMessage("升級"),
    "videoLengthUnknown": MessageLookupByLibrary.simpleMessage("無法得知此影片的長度"),
    "videoQuality": MessageLookupByLibrary.simpleMessage("畫質"),
    "view": MessageLookupByLibrary.simpleMessage("查看"),
    "voiceBoostDuringAd": MessageLookupByLibrary.simpleMessage(
      "廣告播放時無法使用 Voice Boost",
    ),
    "voiceBoostOff": MessageLookupByLibrary.simpleMessage("Voice Boost 已關閉"),
    "voiceBoostOn": MessageLookupByLibrary.simpleMessage("Voice Boost 已開啟"),
    "voiceBoostTrialLeft": m43,
    "voiceBoostTrialOver": m44,
    "voiceBoostTurnedOn": MessageLookupByLibrary.simpleMessage(
      "Voice Boost 已開啟：人聲更清楚",
    ),
    "voiceBoostUnsupported": MessageLookupByLibrary.simpleMessage(
      "此影片不支援 Voice Boost",
    ),
    "volumeDown": MessageLookupByLibrary.simpleMessage("調低音量"),
    "volumeUp": MessageLookupByLibrary.simpleMessage("調高音量"),
    "waitingForBrowser": MessageLookupByLibrary.simpleMessage("正在等待瀏覽器…"),
    "watchAgain": MessageLookupByLibrary.simpleMessage("重新觀看"),
    "watching": MessageLookupByLibrary.simpleMessage("正在觀看"),
    "welcomeToPro": m45,
    "windowNumber": m46,
    "yearly": MessageLookupByLibrary.simpleMessage("年繳"),
    "yourBrowser": MessageLookupByLibrary.simpleMessage("你的瀏覽器"),
    "youreConnected": MessageLookupByLibrary.simpleMessage("已連線！"),
    "youreOffline": MessageLookupByLibrary.simpleMessage("你已離線"),
    "youtubeHome": MessageLookupByLibrary.simpleMessage("YouTube 首頁"),
    "ytCourses": MessageLookupByLibrary.simpleMessage("課程"),
    "ytDownloads": MessageLookupByLibrary.simpleMessage("下載內容"),
    "ytExplore": MessageLookupByLibrary.simpleMessage("探索"),
    "ytGaming": MessageLookupByLibrary.simpleMessage("遊戲"),
    "ytHistory": MessageLookupByLibrary.simpleMessage("觀看記錄"),
    "ytHype": MessageLookupByLibrary.simpleMessage("Hype"),
    "ytLikedVideos": MessageLookupByLibrary.simpleMessage("喜歡的影片"),
    "ytLive": MessageLookupByLibrary.simpleMessage("直播"),
    "ytMemberships": MessageLookupByLibrary.simpleMessage("會員資格"),
    "ytMusic": MessageLookupByLibrary.simpleMessage("音樂"),
    "ytPlaylists": MessageLookupByLibrary.simpleMessage("播放清單"),
    "ytPodcasts": MessageLookupByLibrary.simpleMessage("Podcast"),
    "ytShorts": MessageLookupByLibrary.simpleMessage("Shorts"),
    "ytSubscriptions": MessageLookupByLibrary.simpleMessage("訂閱內容"),
    "ytVideos": MessageLookupByLibrary.simpleMessage("影片"),
    "ytWatchLater": MessageLookupByLibrary.simpleMessage("稍後觀看"),
    "ytYou": MessageLookupByLibrary.simpleMessage("個人"),
  };
}
