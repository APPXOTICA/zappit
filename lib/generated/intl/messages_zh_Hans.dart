// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh_Hans locale. All the
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
  String get localeName => 'zh_Hans';

  static String m0(site) => "将 ${site} 添加到收藏";

  static String m1(count) => "后退 ${count} 秒";

  static String m2(browser) => "${browser} 没有响应。请确认浏览器已打开。";

  static String m3(browsers) => "已与 ${browsers} 断开连接";

  static String m4(name) => "频道：${name}";

  static String m5(current, total) => "章节 ${current}/${total}";

  static String m6(browser) => "已连接到 ${browser}";

  static String m7(count) => "前进 ${count} 秒";

  static String m8(count) => "${count} 天免费试用";

  static String m9(count) => "${count} 个月免费试用";

  static String m10(count) => "${count} 周免费试用";

  static String m11(count) => "${count} 年免费试用";

  static String m12(price) => "每月仅 ${price}";

  static String m13(count) => "${Intl.plural(count, other: '${count} 分钟')}";

  static String m14(count) => "${count} 分钟";

  static String m15(time) => "${time} 后更新代码";

  static String m16(url) => "在电脑浏览器中打开 ${url}，安装 Zappit 扩展程序。";

  static String m17(current, total) => "${current} / ${total}";

  static String m18(current, total) => "第 ${current} 步，共 ${total} 步";

  static String m19(site) => "打开 ${site}";

  static String m20(browser) => "已在 ${browser} 中打开";

  static String m21(browser) => "正在 ${browser} 中打开…";

  static String m22(price) => "${price} / 月";

  static String m23(price) => "${price} / 年";

  static String m24(date) =>
      "你的免费 Pro 体验有效期至 ${date}。在结束前订阅，即可无缝继续使用所有 Pro 功能。";

  static String m25(proName) => "你的 Pro 体验已结束。订阅 ${proName}，继续使用所有 Pro 功能。";

  static String m26(days) => "免费畅享 Zappit Pro 全部功能 ${days} 天。无需信用卡，不会自动扣费。";

  static String m27(date) => "Pro 体验至 ${date}";

  static String m28(proName) => "已恢复 ${proName}";

  static String m29(site) => "将 ${site} 从收藏中移除";

  static String m30(site) => "已将 ${site} 从收藏中移除";

  static String m31(site) => "调整 ${site} 的顺序";

  static String m32(percent) => "省 ${percent}%";

  static String m33(number) => "第 ${number} 季";

  static String m34(count) => "${count} 秒";

  static String m35(site) => "${site} 设置";

  static String m36(count) => "已恢复 1 倍速。免费用户可使用此速度 ${count} 秒。";

  static String m37(price, date) =>
      "你的免费试用明天结束。${date} 将扣费 ${price}。如果不想继续，请在此之前取消订阅。";

  static String m38(price) => "先免费试用，之后每年 ${price}。";

  static String m39(count, price) => "先免费试用 ${count} 天，之后每年 ${price}。";

  static String m40(count, price) => "先免费试用 ${count} 个月，之后每年 ${price}。";

  static String m41(count, price) => "先免费试用 ${count} 年，之后每年 ${price}。";

  static String m42(count) => "接下来播放 · ${count} 秒后开始";

  static String m43(count) => "Voice Boost 试用，剩余 ${count} 秒";

  static String m44(count) => "Voice Boost 已关闭。免费用户可使用 Voice Boost ${count} 秒。";

  static String m45(proName) => "欢迎使用 ${proName}";

  static String m46(number) => "窗口 ${number}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "abLoopCount": MessageLookupByLibrary.simpleMessage("区间循环次数"),
    "abOffForLive": MessageLookupByLibrary.simpleMessage("直播无法使用区间循环"),
    "account": MessageLookupByLibrary.simpleMessage("连接"),
    "adBadge": MessageLookupByLibrary.simpleMessage("广告"),
    "addToFavorites": m0,
    "allCategories": MessageLookupByLibrary.simpleMessage("所有类别"),
    "allSites": MessageLookupByLibrary.simpleMessage("所有网站"),
    "alreadySubscribed": MessageLookupByLibrary.simpleMessage(
      "你已拥有此订阅。请尝试“恢复购买”。",
    ),
    "back": MessageLookupByLibrary.simpleMessage("返回"),
    "backSeconds": m1,
    "banned": MessageLookupByLibrary.simpleMessage("抱歉，你的使用权限已被停用。"),
    "browserDidNotAnswer": m2,
    "browserNotResponding": MessageLookupByLibrary.simpleMessage("浏览器没有响应"),
    "browsers": MessageLookupByLibrary.simpleMessage("浏览器"),
    "browsersDisconnected": m3,
    "browsersDisconnectedBody": MessageLookupByLibrary.simpleMessage(
      "另一部手机已连接到它。如需再次使用，请扫描那台电脑上的 QR 码。",
    ),
    "cameraDenied": MessageLookupByLibrary.simpleMessage("请在“设置”中允许访问相机以扫描代码。"),
    "cameraUnavailable": MessageLookupByLibrary.simpleMessage("相机暂时无法使用。"),
    "cancel": MessageLookupByLibrary.simpleMessage("取消"),
    "cancelAnytime": MessageLookupByLibrary.simpleMessage("可随时在商店账户中取消。"),
    "cantLoadPage": MessageLookupByLibrary.simpleMessage("无法加载此页面"),
    "cantOpenOnPhone": MessageLookupByLibrary.simpleMessage("此视频无法在手机上打开"),
    "cantReachBrowser": MessageLookupByLibrary.simpleMessage("无法连接到浏览器"),
    "cantSeekVideo": MessageLookupByLibrary.simpleMessage("此视频无法拖动进度"),
    "captionLanguage": MessageLookupByLibrary.simpleMessage("字幕语言"),
    "captions": MessageLookupByLibrary.simpleMessage("字幕"),
    "captionsOff": MessageLookupByLibrary.simpleMessage("字幕已关闭"),
    "captionsOn": MessageLookupByLibrary.simpleMessage("字幕已开启"),
    "categories": MessageLookupByLibrary.simpleMessage("类别"),
    "categoryFavoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "点按类别上的星标即可添加到这里。",
    ),
    "channelLabel": m4,
    "chapterPosition": m5,
    "chapters": MessageLookupByLibrary.simpleMessage("章节"),
    "chaptersDuringAd": MessageLookupByLibrary.simpleMessage("广告期间无法跳转章节"),
    "checkConnection": MessageLookupByLibrary.simpleMessage("请检查网络连接后重试。"),
    "checkConnectionShort": MessageLookupByLibrary.simpleMessage("请检查连接后重试。"),
    "chooseBrowser": MessageLookupByLibrary.simpleMessage("选择浏览器"),
    "chooseNextVideo": MessageLookupByLibrary.simpleMessage("选择下一个视频"),
    "clear": MessageLookupByLibrary.simpleMessage("清除"),
    "close": MessageLookupByLibrary.simpleMessage("关闭"),
    "connectBrowser": MessageLookupByLibrary.simpleMessage("连接浏览器"),
    "connectBrowserFirst": MessageLookupByLibrary.simpleMessage("请先连接浏览器"),
    "connected": MessageLookupByLibrary.simpleMessage("已连接"),
    "connectedTo": m6,
    "contactUs": MessageLookupByLibrary.simpleMessage("联系我们"),
    "contactUsKeepInfo": MessageLookupByLibrary.simpleMessage("请勿删除以下信息。"),
    "couldNotGetVideoLink": MessageLookupByLibrary.simpleMessage("无法获取视频链接"),
    "couldNotLoadEpisodes": MessageLookupByLibrary.simpleMessage("无法加载剧集"),
    "couldNotLoadPlaylist": MessageLookupByLibrary.simpleMessage("无法加载播放列表"),
    "couldNotOpenLink": MessageLookupByLibrary.simpleMessage("无法打开链接"),
    "couldNotReadQuality": MessageLookupByLibrary.simpleMessage("无法从页面读取画质选项。"),
    "delete": MessageLookupByLibrary.simpleMessage("删除"),
    "disconnect": MessageLookupByLibrary.simpleMessage("断开"),
    "disconnectPhone": MessageLookupByLibrary.simpleMessage("断开此手机"),
    "disconnectPhoneMessage": MessageLookupByLibrary.simpleMessage(
      "这部手机将不再控制你的电脑。如需再次使用，请扫描电脑上的 QR 码。",
    ),
    "down": MessageLookupByLibrary.simpleMessage("下"),
    "endOfVideo": MessageLookupByLibrary.simpleMessage("视频结束时"),
    "enterValidLink": MessageLookupByLibrary.simpleMessage(
      "请输入以 http 或 https 开头的链接",
    ),
    "episodes": MessageLookupByLibrary.simpleMessage("剧集"),
    "error": MessageLookupByLibrary.simpleMessage("错误"),
    "errorButtonNotFound": MessageLookupByLibrary.simpleMessage("在页面上找不到该按钮"),
    "errorDuringAd": MessageLookupByLibrary.simpleMessage("广告期间无法执行此操作"),
    "errorEndBeforeStart": MessageLookupByLibrary.simpleMessage("结束点必须晚于开始点"),
    "errorGeneric": MessageLookupByLibrary.simpleMessage("出了点问题"),
    "errorInvalidUrl": MessageLookupByLibrary.simpleMessage("无法打开此链接"),
    "errorNoBrowser": MessageLookupByLibrary.simpleMessage("未选择浏览器"),
    "errorNoMedia": MessageLookupByLibrary.simpleMessage("没有正在播放的视频"),
    "errorNotChanged": MessageLookupByLibrary.simpleMessage("网站没有做出更改"),
    "errorNotSupported": MessageLookupByLibrary.simpleMessage("此网站不支持该操作"),
    "errorStartAfterEnd": MessageLookupByLibrary.simpleMessage("开始点必须早于结束点"),
    "errorTabClosed": MessageLookupByLibrary.simpleMessage("该标签页已关闭"),
    "exitFullScreen": MessageLookupByLibrary.simpleMessage("退出全屏"),
    "extensionUpdatedReload": MessageLookupByLibrary.simpleMessage(
      "Zappit 扩展程序已更新。请重新加载此页面，以继续使用所有控制功能。",
    ),
    "faq": MessageLookupByLibrary.simpleMessage("常见问题"),
    "favorites": MessageLookupByLibrary.simpleMessage("收藏"),
    "favoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "点按网站上的星标即可添加到这里。",
    ),
    "forwardSeconds": m7,
    "frameByFrame": MessageLookupByLibrary.simpleMessage("逐帧"),
    "freeTrial": MessageLookupByLibrary.simpleMessage("免费试用"),
    "freeTrialDays": m8,
    "freeTrialMonths": m9,
    "freeTrialWeeks": m10,
    "freeTrialYears": m11,
    "fullPowerUnlocked": MessageLookupByLibrary.simpleMessage("已解锁全部功能"),
    "fullScreen": MessageLookupByLibrary.simpleMessage("全屏"),
    "generalSettings": MessageLookupByLibrary.simpleMessage("通用设置"),
    "gotIt": MessageLookupByLibrary.simpleMessage("知道了"),
    "hideChat": MessageLookupByLibrary.simpleMessage("隐藏聊天"),
    "home": MessageLookupByLibrary.simpleMessage("首页"),
    "justPerMonth": m12,
    "largerCaptions": MessageLookupByLibrary.simpleMessage("放大字幕"),
    "lastVideoInPlaylist": MessageLookupByLibrary.simpleMessage(
      "这是播放列表中的最后一个视频",
    ),
    "learnMore": MessageLookupByLibrary.simpleMessage("了解更多"),
    "left": MessageLookupByLibrary.simpleMessage("左"),
    "linkPanelHint": MessageLookupByLibrary.simpleMessage(
      "粘贴视频链接并点按“发送”，它会在浏览器的新标签页中打开。",
    ),
    "liveBadge": MessageLookupByLibrary.simpleMessage("直播"),
    "liveCantRewind": MessageLookupByLibrary.simpleMessage("此直播无法回放"),
    "longPressSpeed": MessageLookupByLibrary.simpleMessage("长按速度"),
    "loopEnd": MessageLookupByLibrary.simpleMessage("循环终点"),
    "loopOff": MessageLookupByLibrary.simpleMessage("循环已关闭"),
    "loopOn": MessageLookupByLibrary.simpleMessage("循环已开启"),
    "loopStart": MessageLookupByLibrary.simpleMessage("循环起点"),
    "manageSubscription": MessageLookupByLibrary.simpleMessage("管理订阅"),
    "minutesCount": m13,
    "minutesShort": m14,
    "mixCantRepeat": MessageLookupByLibrary.simpleMessage(
      "此播放列表会不断播放新视频，因此无法循环播放",
    ),
    "mixCantShuffle": MessageLookupByLibrary.simpleMessage(
      "此播放列表会不断播放新视频，因此无法随机播放",
    ),
    "monthly": MessageLookupByLibrary.simpleMessage("按月"),
    "multipleBrowsersMessage": MessageLookupByLibrary.simpleMessage(
      "有多个浏览器在线。请选择要用此遥控器控制的浏览器。",
    ),
    "mute": MessageLookupByLibrary.simpleMessage("静音"),
    "nextChapter": MessageLookupByLibrary.simpleMessage("下一章节"),
    "nextEpisode": MessageLookupByLibrary.simpleMessage("下一集"),
    "nextTab": MessageLookupByLibrary.simpleMessage("下一个标签页"),
    "nextVideo": MessageLookupByLibrary.simpleMessage("下一个视频"),
    "noBrowser": MessageLookupByLibrary.simpleMessage("没有浏览器"),
    "noBrowserConnectedShare": MessageLookupByLibrary.simpleMessage(
      "没有已连接的浏览器。请打开安装了 Zappit 扩展程序的浏览器后重试。",
    ),
    "noBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "1. 在电脑上打开已连接的浏览器。\n2. 如果仍未连接，请点击浏览器顶部工具栏中的 Zappit 图标。",
    ),
    "noBrowserOnline": MessageLookupByLibrary.simpleMessage("没有在线的浏览器。"),
    "noBrowserOnlineShort": MessageLookupByLibrary.simpleMessage("没有在线的浏览器"),
    "noBrowserSelected": MessageLookupByLibrary.simpleMessage("未选择浏览器"),
    "noCategoriesFound": MessageLookupByLibrary.simpleMessage("未找到类别"),
    "noLinkInShare": MessageLookupByLibrary.simpleMessage("分享的内容中没有找到链接"),
    "noMoreTabs": MessageLookupByLibrary.simpleMessage("没有更多标签页"),
    "noNextEpisode": MessageLookupByLibrary.simpleMessage("没有下一集"),
    "noOpenTabs": MessageLookupByLibrary.simpleMessage("没有打开的标签页"),
    "noPreviousPage": MessageLookupByLibrary.simpleMessage("没有可返回的上一页"),
    "noSiteSettings": MessageLookupByLibrary.simpleMessage("此网站暂无设置。"),
    "noSubtitles": MessageLookupByLibrary.simpleMessage("此视频没有字幕"),
    "noThanks": MessageLookupByLibrary.simpleMessage("不用了"),
    "noVideosOnPage": MessageLookupByLibrary.simpleMessage("此页面上没有视频。"),
    "notAvailableDuringAd": MessageLookupByLibrary.simpleMessage("广告期间不可用"),
    "notAvailableForLive": MessageLookupByLibrary.simpleMessage("直播不可用"),
    "notAvailableForLiveStreams": MessageLookupByLibrary.simpleMessage(
      "直播不可使用此功能",
    ),
    "notAvailableForPhotos": MessageLookupByLibrary.simpleMessage("图片帖子不可用"),
    "notConnected": MessageLookupByLibrary.simpleMessage("未连接"),
    "nothingPlaying": MessageLookupByLibrary.simpleMessage("未找到视频"),
    "nothingPlayingMessage": MessageLookupByLibrary.simpleMessage(
      "此画面中没有视频。请选择其他标签页，或粘贴视频链接。",
    ),
    "nothingToRestore": MessageLookupByLibrary.simpleMessage("没有可恢复的购买"),
    "nothingToRestoreMessage": MessageLookupByLibrary.simpleMessage(
      "此商店账户中没有找到有效的 Zappit Pro 订阅。",
    ),
    "obAnimAddExtension": MessageLookupByLibrary.simpleMessage("添加扩展程序"),
    "obAnimAdded": MessageLookupByLibrary.simpleMessage("已添加"),
    "obAnimConnectComputer": MessageLookupByLibrary.simpleMessage("连接到你的电脑"),
    "obAnimConnectPhone": MessageLookupByLibrary.simpleMessage("连接你的手机"),
    "obAnimNewCode": m15,
    "obAnimRemoteConnected": MessageLookupByLibrary.simpleMessage("遥控器已连接"),
    "obAnimScanCode": MessageLookupByLibrary.simpleMessage(
      "用手机上的 Zappit 应用扫描此代码。",
    ),
    "obAnimTagline": MessageLookupByLibrary.simpleMessage("告别鼠标。"),
    "obAnimYourPhones": MessageLookupByLibrary.simpleMessage("你的手机"),
    "off": MessageLookupByLibrary.simpleMessage("关闭"),
    "offline": MessageLookupByLibrary.simpleMessage("离线"),
    "offlineMessage": MessageLookupByLibrary.simpleMessage(
      "请检查网络连接。Zappit 会自动重新连接。",
    ),
    "onboarding0AnimLabel": MessageLookupByLibrary.simpleMessage(
      "在 Zappit 应用中点按播放/暂停按钮，笔记本电脑上的视频随之暂停和继续播放",
    ),
    "onboarding1AnimLabel": MessageLookupByLibrary.simpleMessage(
      "在浏览器中输入 zappit.tv/get 并添加 Zappit 扩展程序",
    ),
    "onboarding1Body": m16,
    "onboarding1Title": MessageLookupByLibrary.simpleMessage(
      "首先，将 Zappit 扩展程序添加到浏览器",
    ),
    "onboarding2AnimLabel": MessageLookupByLibrary.simpleMessage(
      "在浏览器中点击 Zappit 图标，然后用手机扫描 QR 码",
    ),
    "onboarding2Body": MessageLookupByLibrary.simpleMessage(
      "点击浏览器工具栏中的 Zappit 图标，然后将相机对准 QR 码。",
    ),
    "onboarding2Title": MessageLookupByLibrary.simpleMessage("扫描 QR 码"),
    "onboardingGetStarted": MessageLookupByLibrary.simpleMessage("开始"),
    "onboardingIconHelp": MessageLookupByLibrary.simpleMessage(
      "看不到 Zappit 图标？",
    ),
    "onboardingIconHelpLabel": MessageLookupByLibrary.simpleMessage(
      "看不到 Zappit 图标？在常见问题中打开答案",
    ),
    "onboardingNext": MessageLookupByLibrary.simpleMessage("下一步"),
    "onboardingOpenQrScanner": MessageLookupByLibrary.simpleMessage(
      "打开 QR 码扫描器",
    ),
    "onboardingShareLink": MessageLookupByLibrary.simpleMessage("发送安装链接"),
    "onboardingStepCount": m17,
    "onboardingStepLabel": m18,
    "onboardingWelcomeBody": MessageLookupByLibrary.simpleMessage(
      "控制电脑上的任何视频。只需两个简单步骤即可完成设置。",
    ),
    "onboardingWelcomeTitle": MessageLookupByLibrary.simpleMessage("你的手机就是遥控器"),
    "openALink": MessageLookupByLibrary.simpleMessage("打开链接"),
    "openBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "请打开安装了 Zappit 扩展程序的浏览器，以查看其标签页。",
    ),
    "openLinkInBrowser": MessageLookupByLibrary.simpleMessage("在浏览器中打开链接"),
    "openSite": m19,
    "openedIn": m20,
    "openingIn": m21,
    "pairCodeExpired": MessageLookupByLibrary.simpleMessage(
      "此代码已过期。请扫描电脑上的新代码。",
    ),
    "pairCodeInvalid": MessageLookupByLibrary.simpleMessage(
      "此代码已失效。请扫描电脑上的新代码。",
    ),
    "pairCodeUsed": MessageLookupByLibrary.simpleMessage("此代码已被使用。请扫描电脑上的新代码。"),
    "pairFailed": MessageLookupByLibrary.simpleMessage("无法连接。请检查网络连接后重试。"),
    "pairHowToInstall": MessageLookupByLibrary.simpleMessage("如何安装扩展程序"),
    "pairPhoneLimit": MessageLookupByLibrary.simpleMessage(
      "这台电脑已经连接了 3 部手机。请在已连接的其他手机上打开 Zappit，在“更多”中点按“断开此手机”。如果那部手机已不在身边，请在电脑上的 Zappit 扩展程序中使用“Reset”。",
    ),
    "pairTitle": MessageLookupByLibrary.simpleMessage("连接到浏览器扩展程序"),
    "paste": MessageLookupByLibrary.simpleMessage("粘贴"),
    "pasteALink": MessageLookupByLibrary.simpleMessage("粘贴链接"),
    "pasteVideoLink": MessageLookupByLibrary.simpleMessage("粘贴视频链接"),
    "pause": MessageLookupByLibrary.simpleMessage("暂停"),
    "paymentPending": MessageLookupByLibrary.simpleMessage("付款待确认"),
    "paymentPendingMessage": MessageLookupByLibrary.simpleMessage(
      "商店确认付款后，Pro 将立即开启。",
    ),
    "phoneName": MessageLookupByLibrary.simpleMessage("手机名称"),
    "phoneNameEmpty": MessageLookupByLibrary.simpleMessage("请输入名称。"),
    "phoneNameMessage": MessageLookupByLibrary.simpleMessage(
      "会显示在电脑上的 Zappit 扩展程序中。",
    ),
    "pickATab": MessageLookupByLibrary.simpleMessage("选择标签页"),
    "pickBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "请选择此遥控器要控制的浏览器，以查看其标签页。",
    ),
    "pickVideosWithPro": MessageLookupByLibrary.simpleMessage(
      "使用 Pro 在手机上选择视频",
    ),
    "play": MessageLookupByLibrary.simpleMessage("播放"),
    "playInApp": MessageLookupByLibrary.simpleMessage("在手机上继续观看"),
    "playNow": MessageLookupByLibrary.simpleMessage("立即播放"),
    "playVideoFirst": MessageLookupByLibrary.simpleMessage("请先在浏览器中播放视频"),
    "playing": MessageLookupByLibrary.simpleMessage("正在播放"),
    "playlist": MessageLookupByLibrary.simpleMessage("播放列表"),
    "playlistCantRepeat": MessageLookupByLibrary.simpleMessage("此播放列表无法循环播放"),
    "playlistCantShuffle": MessageLookupByLibrary.simpleMessage("此播放列表无法随机播放"),
    "previousChapter": MessageLookupByLibrary.simpleMessage("上一章节"),
    "previousTab": MessageLookupByLibrary.simpleMessage("上一个标签页"),
    "previousVideo": MessageLookupByLibrary.simpleMessage("上一个视频"),
    "pricePerMonth": m22,
    "pricePerYear": m23,
    "privacyPolicy": MessageLookupByLibrary.simpleMessage("隐私政策"),
    "proBannerSubtitle": MessageLookupByLibrary.simpleMessage("释放遥控器的全部能力"),
    "proFeatureAbLoop": MessageLookupByLibrary.simpleMessage("无限使用区间循环"),
    "proFeatureAllSpeeds": MessageLookupByLibrary.simpleMessage("所有播放速度"),
    "proFeatureDedicatedControllers": MessageLookupByLibrary.simpleMessage(
      "解锁网站专属遥控器",
    ),
    "proFeatureFullLoop": MessageLookupByLibrary.simpleMessage("无限使用整片循环"),
    "proFeatureVoiceBoost": MessageLookupByLibrary.simpleMessage(
      "无限使用 Voice Boost",
    ),
    "proPreviewActiveBanner": m24,
    "proPreviewEndedMessage": MessageLookupByLibrary.simpleMessage(
      "感谢试用 Zappit Pro！订阅后即可无缝继续使用所有 Pro 功能。",
    ),
    "proPreviewEndedSubtitle": m25,
    "proPreviewEndedTitle": MessageLookupByLibrary.simpleMessage(
      "你的 Pro 体验已结束",
    ),
    "proPreviewEndsTomorrow": MessageLookupByLibrary.simpleMessage(
      "Pro 体验明天结束",
    ),
    "proPreviewStarted": m26,
    "proPreviewUntil": m27,
    "proRestored": m28,
    "proSubscriptionEnded": MessageLookupByLibrary.simpleMessage(
      "你的 Pro 订阅已结束",
    ),
    "proSubtitle": MessageLookupByLibrary.simpleMessage("释放遥控器的全部能力。"),
    "purchaseCancelled": MessageLookupByLibrary.simpleMessage("购买已取消"),
    "purchaseCancelledMessage": MessageLookupByLibrary.simpleMessage(
      "未产生任何费用。你可以随时重试。",
    ),
    "purchaseFailed": MessageLookupByLibrary.simpleMessage("购买失败"),
    "purchaseNotActivated": MessageLookupByLibrary.simpleMessage("购买未激活"),
    "purchaseNotActivatedMessage": MessageLookupByLibrary.simpleMessage(
      "付款已完成，但 Pro 尚未激活。请尝试“恢复购买”。",
    ),
    "purchasesNotAllowed": MessageLookupByLibrary.simpleMessage("此设备或账户不允许购买。"),
    "qualityNotChanged": MessageLookupByLibrary.simpleMessage("画质没有改变"),
    "rateZappit": MessageLookupByLibrary.simpleMessage("给 Zappit 评分"),
    "reload": MessageLookupByLibrary.simpleMessage("重新加载"),
    "remindMe": MessageLookupByLibrary.simpleMessage("提醒我"),
    "remoteSettings": MessageLookupByLibrary.simpleMessage("遥控器设置"),
    "removeFromFavorites": m29,
    "removedFromFavorites": m30,
    "reorderHint": MessageLookupByLibrary.simpleMessage("按住项目并拖动即可调整顺序"),
    "reorderSite": m31,
    "repeatOff": MessageLookupByLibrary.simpleMessage("循环播放已关闭"),
    "repeatOffNotice": MessageLookupByLibrary.simpleMessage("循环播放已关闭"),
    "repeatOn": MessageLookupByLibrary.simpleMessage("循环播放已开启"),
    "repeatingPlaylist": MessageLookupByLibrary.simpleMessage("正在循环播放此播放列表"),
    "replay": MessageLookupByLibrary.simpleMessage("从头播放"),
    "restoreFailed": MessageLookupByLibrary.simpleMessage("恢复失败"),
    "restorePurchases": MessageLookupByLibrary.simpleMessage("恢复购买"),
    "right": MessageLookupByLibrary.simpleMessage("右"),
    "save": MessageLookupByLibrary.simpleMessage("保存"),
    "savePercent": m32,
    "searchCategories": MessageLookupByLibrary.simpleMessage("搜索类别"),
    "seasonNumber": m33,
    "secondsShort": m34,
    "seekInterval": MessageLookupByLibrary.simpleMessage("快进/快退间隔"),
    "select": MessageLookupByLibrary.simpleMessage("选择"),
    "selectVideoInBrowser": MessageLookupByLibrary.simpleMessage("没有正在播放的内容"),
    "selectVideoInBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "在电脑上点击任意视频开始观看，遥控器会显示在这里。",
    ),
    "send": MessageLookupByLibrary.simpleMessage("发送"),
    "settings": MessageLookupByLibrary.simpleMessage("设置"),
    "showChat": MessageLookupByLibrary.simpleMessage("显示聊天"),
    "shuffleOff": MessageLookupByLibrary.simpleMessage("随机播放已关闭"),
    "shuffleOffNotice": MessageLookupByLibrary.simpleMessage("随机播放已关闭"),
    "shuffleOn": MessageLookupByLibrary.simpleMessage("随机播放已开启"),
    "shufflingPlaylist": MessageLookupByLibrary.simpleMessage("正在随机播放此播放列表"),
    "siteSettings": m35,
    "siteWeb": MessageLookupByLibrary.simpleMessage("网页"),
    "skipAd": MessageLookupByLibrary.simpleMessage("跳过广告"),
    "skipIntro": MessageLookupByLibrary.simpleMessage("跳过片头"),
    "sleepTimer": MessageLookupByLibrary.simpleMessage("睡眠定时"),
    "sleepTimerLabel": MessageLookupByLibrary.simpleMessage("睡眠定时"),
    "smallerCaptions": MessageLookupByLibrary.simpleMessage("缩小字幕"),
    "somethingWrong": MessageLookupByLibrary.simpleMessage("抱歉，出了点问题。"),
    "somethingWrongTryAgain": MessageLookupByLibrary.simpleMessage(
      "抱歉，出了点问题。请重试。",
    ),
    "soundBlockedMessage": MessageLookupByLibrary.simpleMessage("点按查看如何打开声音。"),
    "soundBlockedTitle": MessageLookupByLibrary.simpleMessage("为什么听不到声音？"),
    "soundHelpTitle": MessageLookupByLibrary.simpleMessage("声音"),
    "speedTrialOver": m36,
    "startFreeTrial": MessageLookupByLibrary.simpleMessage("开始免费试用"),
    "storeProblem": MessageLookupByLibrary.simpleMessage("商店出现问题。请稍后再试。"),
    "storeUnavailable": MessageLookupByLibrary.simpleMessage("商店暂时无法使用。请稍后再试。"),
    "subscribe": MessageLookupByLibrary.simpleMessage("订阅"),
    "success": MessageLookupByLibrary.simpleMessage("成功"),
    "support": MessageLookupByLibrary.simpleMessage("支持"),
    "supportedSites": MessageLookupByLibrary.simpleMessage("支持的网站"),
    "supportedSitesIntro": MessageLookupByLibrary.simpleMessage(
      "这些网站有专门打造的遥控器。在其他网站上，Zappit 作为标准遥控器使用。",
    ),
    "tabMore": MessageLookupByLibrary.simpleMessage("更多"),
    "tabRemote": MessageLookupByLibrary.simpleMessage("遥控器"),
    "tabTabs": MessageLookupByLibrary.simpleMessage("标签页"),
    "tapToKeepPro": MessageLookupByLibrary.simpleMessage("点按以继续使用所有 Pro 功能。"),
    "tellAFriend": MessageLookupByLibrary.simpleMessage("推荐给朋友"),
    "termsOfService": MessageLookupByLibrary.simpleMessage("服务条款"),
    "theaterMode": MessageLookupByLibrary.simpleMessage("影院模式"),
    "trialReminderBody": m37,
    "trialReminderChannel": MessageLookupByLibrary.simpleMessage("免费试用提醒"),
    "trialReminderChannelDescription": MessageLookupByLibrary.simpleMessage(
      "免费试用结束前的提醒",
    ),
    "trialReminderMessage": MessageLookupByLibrary.simpleMessage(
      "要在免费试用结束前一天提醒你吗？这样就不会被意外扣费。",
    ),
    "trialReminderNotificationTitle": MessageLookupByLibrary.simpleMessage(
      "Zappit Pro 免费试用即将结束",
    ),
    "trialReminderTitle": MessageLookupByLibrary.simpleMessage("试用提醒"),
    "trialTerms": m38,
    "trialTermsDays": m39,
    "trialTermsMonths": m40,
    "trialTermsYears": m41,
    "tryAgain": MessageLookupByLibrary.simpleMessage("重试"),
    "turnOffAbFirst": MessageLookupByLibrary.simpleMessage("请先关闭区间循环"),
    "tutorial": MessageLookupByLibrary.simpleMessage("使用教程"),
    "unavailable": MessageLookupByLibrary.simpleMessage("不可用"),
    "undo": MessageLookupByLibrary.simpleMessage("撤销"),
    "unmute": MessageLookupByLibrary.simpleMessage("取消静音"),
    "untitled": MessageLookupByLibrary.simpleMessage("无标题"),
    "up": MessageLookupByLibrary.simpleMessage("上"),
    "upNext": MessageLookupByLibrary.simpleMessage("接下来播放"),
    "upNextCountdown": m42,
    "upgrade": MessageLookupByLibrary.simpleMessage("升级"),
    "videoLengthUnknown": MessageLookupByLibrary.simpleMessage("无法获知此视频的时长"),
    "videoQuality": MessageLookupByLibrary.simpleMessage("画质"),
    "view": MessageLookupByLibrary.simpleMessage("查看"),
    "voiceBoostDuringAd": MessageLookupByLibrary.simpleMessage(
      "广告期间无法使用 Voice Boost",
    ),
    "voiceBoostOff": MessageLookupByLibrary.simpleMessage("Voice Boost 已关闭"),
    "voiceBoostOn": MessageLookupByLibrary.simpleMessage("Voice Boost 已开启"),
    "voiceBoostTrialLeft": m43,
    "voiceBoostTrialOver": m44,
    "voiceBoostTurnedOn": MessageLookupByLibrary.simpleMessage(
      "Voice Boost 已开启：人声更清晰",
    ),
    "voiceBoostUnsupported": MessageLookupByLibrary.simpleMessage(
      "此视频不支持 Voice Boost",
    ),
    "volumeDown": MessageLookupByLibrary.simpleMessage("降低音量"),
    "volumeUp": MessageLookupByLibrary.simpleMessage("提高音量"),
    "waitingForBrowser": MessageLookupByLibrary.simpleMessage("正在等待浏览器…"),
    "watchAgain": MessageLookupByLibrary.simpleMessage("重新观看"),
    "watching": MessageLookupByLibrary.simpleMessage("正在观看"),
    "welcomeToPro": m45,
    "windowNumber": m46,
    "yearly": MessageLookupByLibrary.simpleMessage("按年"),
    "yourBrowser": MessageLookupByLibrary.simpleMessage("你的浏览器"),
    "youreConnected": MessageLookupByLibrary.simpleMessage("已连接！"),
    "youreOffline": MessageLookupByLibrary.simpleMessage("你已离线"),
    "youtubeHome": MessageLookupByLibrary.simpleMessage("YouTube 首页"),
    "ytCourses": MessageLookupByLibrary.simpleMessage("课程"),
    "ytDownloads": MessageLookupByLibrary.simpleMessage("下载内容"),
    "ytExplore": MessageLookupByLibrary.simpleMessage("探索"),
    "ytGaming": MessageLookupByLibrary.simpleMessage("游戏"),
    "ytHistory": MessageLookupByLibrary.simpleMessage("历史记录"),
    "ytHype": MessageLookupByLibrary.simpleMessage("Hype"),
    "ytLikedVideos": MessageLookupByLibrary.simpleMessage("赞过的视频"),
    "ytLive": MessageLookupByLibrary.simpleMessage("直播"),
    "ytMemberships": MessageLookupByLibrary.simpleMessage("会员"),
    "ytMusic": MessageLookupByLibrary.simpleMessage("音乐"),
    "ytPlaylists": MessageLookupByLibrary.simpleMessage("播放列表"),
    "ytPodcasts": MessageLookupByLibrary.simpleMessage("播客"),
    "ytShorts": MessageLookupByLibrary.simpleMessage("Shorts"),
    "ytSubscriptions": MessageLookupByLibrary.simpleMessage("订阅内容"),
    "ytVideos": MessageLookupByLibrary.simpleMessage("视频"),
    "ytWatchLater": MessageLookupByLibrary.simpleMessage("稍后观看"),
    "ytYou": MessageLookupByLibrary.simpleMessage("我"),
  };
}
