// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
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
  String get localeName => 'ar';

  static String m0(site) => "إضافة ${site} إلى المفضّلة";

  static String m1(count) => "رجوع ${count} ثانية";

  static String m2(browser) => "لم يستجب ${browser}. تأكد من أن المتصفح مفتوح.";

  static String m3(browsers) => "تم الفصل عن ${browsers}";

  static String m4(name) => "القناة: ${name}";

  static String m5(current, total) => "الفصل ${current}/${total}";

  static String m6(browser) => "تم الاتصال بـ ${browser}";

  static String m7(count) => "تقديم ${count} ثانية";

  static String m8(count) => "تجربة مجانية: ${count} يوم";

  static String m9(count) => "تجربة مجانية: ${count} شهر";

  static String m10(count) => "تجربة مجانية: ${count} أسبوع";

  static String m11(count) => "تجربة مجانية: ${count} سنة";

  static String m12(price) => "فقط ${price} شهريًا";

  static String m13(count) =>
      "${Intl.plural(count, zero: '${count} دقيقة', one: 'دقيقة واحدة', two: 'دقيقتان', few: '${count} دقائق', many: '${count} دقيقة', other: '${count} دقيقة')}";

  static String m14(count) => "${count} د";

  static String m15(time) => "رمز جديد بعد ${time}";

  static String m16(url) => "افتح ${url} في متصفح حاسوبك لتثبيت إضافة Zappit.";

  static String m17(current, total) => "${current} / ${total}";

  static String m18(current, total) => "الخطوة ${current} من ${total}";

  static String m19(site) => "فتح ${site}";

  static String m20(browser) => "تم الفتح في ${browser}";

  static String m21(browser) => "جارٍ الفتح في ${browser}…";

  static String m22(price) => "${price} / شهر";

  static String m23(price) => "${price} / سنة";

  static String m24(date) =>
      "تجربة Pro المجانية سارية حتى ${date}. اشترك قبل انتهائها لتواصل استخدام كل ميزات Pro دون انقطاع.";

  static String m25(proName) =>
      "انتهت تجربة Pro. احتفظ بكل ميزات Pro مع ${proName}.";

  static String m26(days) =>
      "استمتع بكل ميزات Zappit Pro مجانًا لمدة ${days} يوم. لا حاجة إلى بطاقة ائتمان ولا خصم تلقائي.";

  static String m27(date) => "تجربة Pro حتى ${date}";

  static String m28(proName) => "تمت استعادة ${proName}";

  static String m29(site) => "إزالة ${site} من المفضّلة";

  static String m30(site) => "تمت إزالة ${site} من المفضّلة";

  static String m31(site) => "إعادة ترتيب ${site}";

  static String m32(percent) => "وفّر ${percent}%";

  static String m33(number) => "الموسم ${number}";

  static String m34(count) => "${count} ث";

  static String m35(site) => "إعدادات ${site}";

  static String m36(count) =>
      "عادت السرعة إلى 1x. من دون Pro يمكنك استخدام هذه السرعة لمدة ${count} ثانية.";

  static String m37(price, date) =>
      "تنتهي تجربتك المجانية غدًا. سيتم خصم ${price} في ${date}. إذا كنت لا تريد المتابعة، فألغِ اشتراكك قبل ذلك.";

  static String m38(price) => "تبدأ بتجربة مجانية، ثم ${price} سنويًا.";

  static String m39(count, price) =>
      "تبدأ بتجربة مجانية لمدة ${count} يوم، ثم ${price} سنويًا.";

  static String m40(count, price) =>
      "تبدأ بتجربة مجانية لمدة ${count} شهر، ثم ${price} سنويًا.";

  static String m41(count, price) =>
      "تبدأ بتجربة مجانية لمدة ${count} سنة، ثم ${price} سنويًا.";

  static String m42(count) => "التالي · يبدأ بعد ${count} ث";

  static String m43(count) => "تجربة Voice Boost، متبقٍ ${count} ثانية";

  static String m44(count) =>
      "تم إيقاف Voice Boost. من دون Pro يمكنك استخدام Voice Boost لمدة ${count} ثانية.";

  static String m45(proName) => "مرحبًا بك في ${proName}";

  static String m46(number) => "النافذة ${number}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "abLoopCount": MessageLookupByLibrary.simpleMessage("عدد مرات A-B Loop"),
    "abOffForLive": MessageLookupByLibrary.simpleMessage(
      "A-B Loop متوقف في البث المباشر",
    ),
    "account": MessageLookupByLibrary.simpleMessage("الاتصال"),
    "adBadge": MessageLookupByLibrary.simpleMessage("إعلان"),
    "addToFavorites": m0,
    "allCategories": MessageLookupByLibrary.simpleMessage("كل الفئات"),
    "allSites": MessageLookupByLibrary.simpleMessage("كل المواقع"),
    "alreadySubscribed": MessageLookupByLibrary.simpleMessage(
      "لديك هذا الاشتراك بالفعل. جرّب «استعادة المشتريات».",
    ),
    "back": MessageLookupByLibrary.simpleMessage("رجوع"),
    "backSeconds": m1,
    "banned": MessageLookupByLibrary.simpleMessage("عذرًا، تم حظر الوصول."),
    "browserDidNotAnswer": m2,
    "browserNotResponding": MessageLookupByLibrary.simpleMessage(
      "المتصفح لا يستجيب",
    ),
    "browsers": MessageLookupByLibrary.simpleMessage("المتصفحات"),
    "browsersDisconnected": m3,
    "browsersDisconnectedBody": MessageLookupByLibrary.simpleMessage(
      "اتصل به هاتف آخر. لاستخدامه مجددًا، امسح رمز QR على ذلك الحاسوب.",
    ),
    "cameraDenied": MessageLookupByLibrary.simpleMessage(
      "اسمح بالوصول إلى الكاميرا من الإعدادات لمسح الرمز.",
    ),
    "cameraUnavailable": MessageLookupByLibrary.simpleMessage(
      "الكاميرا غير متاحة حاليًا.",
    ),
    "cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
    "cancelAnytime": MessageLookupByLibrary.simpleMessage(
      "يمكنك الإلغاء في أي وقت من حسابك في المتجر.",
    ),
    "cantLoadPage": MessageLookupByLibrary.simpleMessage(
      "تعذّر تحميل هذه الصفحة",
    ),
    "cantOpenOnPhone": MessageLookupByLibrary.simpleMessage(
      "لا يمكن فتح هذا الفيديو على الهاتف",
    ),
    "cantReachBrowser": MessageLookupByLibrary.simpleMessage(
      "تعذّر الوصول إلى المتصفح",
    ),
    "cantSeekVideo": MessageLookupByLibrary.simpleMessage(
      "لا يمكن التنقل في هذا الفيديو",
    ),
    "captionLanguage": MessageLookupByLibrary.simpleMessage("لغة الترجمة"),
    "captions": MessageLookupByLibrary.simpleMessage("الترجمة"),
    "captionsOff": MessageLookupByLibrary.simpleMessage("الترجمة متوقفة"),
    "captionsOn": MessageLookupByLibrary.simpleMessage("الترجمة مفعّلة"),
    "categories": MessageLookupByLibrary.simpleMessage("الفئات"),
    "categoryFavoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "انقر على النجمة بجانب أي فئة لإضافتها هنا.",
    ),
    "channelLabel": m4,
    "chapterPosition": m5,
    "chapters": MessageLookupByLibrary.simpleMessage("الفصول"),
    "chaptersDuringAd": MessageLookupByLibrary.simpleMessage(
      "لا يمكن تخطي الفصول أثناء الإعلان",
    ),
    "checkConnection": MessageLookupByLibrary.simpleMessage(
      "تحقق من اتصالك بالإنترنت وحاول مرة أخرى.",
    ),
    "checkConnectionShort": MessageLookupByLibrary.simpleMessage(
      "تحقق من الاتصال وحاول مرة أخرى.",
    ),
    "chooseBrowser": MessageLookupByLibrary.simpleMessage("اختر متصفحًا"),
    "chooseNextVideo": MessageLookupByLibrary.simpleMessage(
      "اختر الفيديو التالي",
    ),
    "clear": MessageLookupByLibrary.simpleMessage("مسح"),
    "close": MessageLookupByLibrary.simpleMessage("إغلاق"),
    "connectBrowser": MessageLookupByLibrary.simpleMessage("ربط متصفح"),
    "connectBrowserFirst": MessageLookupByLibrary.simpleMessage(
      "اتصل بمتصفح أولًا",
    ),
    "connected": MessageLookupByLibrary.simpleMessage("متصل"),
    "connectedTo": m6,
    "contactUs": MessageLookupByLibrary.simpleMessage("اتصل بنا"),
    "contactUsKeepInfo": MessageLookupByLibrary.simpleMessage(
      "يُرجى عدم حذف المعلومات أدناه.",
    ),
    "couldNotGetVideoLink": MessageLookupByLibrary.simpleMessage(
      "تعذّر الحصول على رابط الفيديو",
    ),
    "couldNotLoadEpisodes": MessageLookupByLibrary.simpleMessage(
      "تعذّر تحميل الحلقات",
    ),
    "couldNotLoadPlaylist": MessageLookupByLibrary.simpleMessage(
      "تعذّر تحميل قائمة التشغيل",
    ),
    "couldNotOpenLink": MessageLookupByLibrary.simpleMessage(
      "تعذّر فتح الرابط",
    ),
    "couldNotReadQuality": MessageLookupByLibrary.simpleMessage(
      "تعذّرت قراءة خيارات الجودة من الصفحة.",
    ),
    "delete": MessageLookupByLibrary.simpleMessage("حذف"),
    "disconnect": MessageLookupByLibrary.simpleMessage("فصل"),
    "disconnectPhone": MessageLookupByLibrary.simpleMessage("فصل هذا الهاتف"),
    "disconnectPhoneMessage": MessageLookupByLibrary.simpleMessage(
      "لن يتحكم هذا الهاتف في حاسوبك بعد الآن. لاستخدامه مجددًا، امسح رمز QR على حاسوبك.",
    ),
    "down": MessageLookupByLibrary.simpleMessage("أسفل"),
    "endOfVideo": MessageLookupByLibrary.simpleMessage("نهاية الفيديو"),
    "enterValidLink": MessageLookupByLibrary.simpleMessage(
      "أدخل رابطًا يبدأ بـ http أو https",
    ),
    "episodes": MessageLookupByLibrary.simpleMessage("الحلقات"),
    "error": MessageLookupByLibrary.simpleMessage("خطأ"),
    "errorButtonNotFound": MessageLookupByLibrary.simpleMessage(
      "تعذّر العثور على هذا الزر في الصفحة",
    ),
    "errorDuringAd": MessageLookupByLibrary.simpleMessage(
      "لا يمكن فعل ذلك أثناء الإعلان",
    ),
    "errorEndBeforeStart": MessageLookupByLibrary.simpleMessage(
      "يجب أن تكون نقطة النهاية بعد نقطة البداية",
    ),
    "errorGeneric": MessageLookupByLibrary.simpleMessage("حدث خطأ ما"),
    "errorInvalidUrl": MessageLookupByLibrary.simpleMessage(
      "لا يمكن فتح هذا الرابط",
    ),
    "errorNoBrowser": MessageLookupByLibrary.simpleMessage(
      "لم يتم اختيار متصفح",
    ),
    "errorNoMedia": MessageLookupByLibrary.simpleMessage(
      "لا يوجد فيديو قيد التشغيل",
    ),
    "errorNotChanged": MessageLookupByLibrary.simpleMessage(
      "لم يطبّق الموقع التغيير",
    ),
    "errorNotSupported": MessageLookupByLibrary.simpleMessage(
      "هذا الموقع لا يدعم ذلك",
    ),
    "errorStartAfterEnd": MessageLookupByLibrary.simpleMessage(
      "يجب أن تكون نقطة البداية قبل نقطة النهاية",
    ),
    "errorTabClosed": MessageLookupByLibrary.simpleMessage(
      "علامة التبويب هذه مغلقة بالفعل",
    ),
    "exitFullScreen": MessageLookupByLibrary.simpleMessage(
      "الخروج من ملء الشاشة",
    ),
    "extensionUpdatedReload": MessageLookupByLibrary.simpleMessage(
      "تم تحديث إضافة Zappit. أعد تحميل هذه الصفحة لمواصلة استخدام كل عناصر التحكم.",
    ),
    "faq": MessageLookupByLibrary.simpleMessage("الأسئلة الشائعة"),
    "favorites": MessageLookupByLibrary.simpleMessage("المفضّلة"),
    "favoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "انقر على النجمة بجانب أي موقع لإضافته هنا.",
    ),
    "forwardSeconds": m7,
    "frameByFrame": MessageLookupByLibrary.simpleMessage("إطارًا بإطار"),
    "freeTrial": MessageLookupByLibrary.simpleMessage("تجربة مجانية"),
    "freeTrialDays": m8,
    "freeTrialMonths": m9,
    "freeTrialWeeks": m10,
    "freeTrialYears": m11,
    "fullPowerUnlocked": MessageLookupByLibrary.simpleMessage(
      "تم فتح كل الميزات",
    ),
    "fullScreen": MessageLookupByLibrary.simpleMessage("ملء الشاشة"),
    "generalSettings": MessageLookupByLibrary.simpleMessage("الإعدادات العامة"),
    "gotIt": MessageLookupByLibrary.simpleMessage("حسنًا"),
    "hideChat": MessageLookupByLibrary.simpleMessage("إخفاء الدردشة"),
    "home": MessageLookupByLibrary.simpleMessage("الرئيسية"),
    "justPerMonth": m12,
    "largerCaptions": MessageLookupByLibrary.simpleMessage("ترجمة أكبر"),
    "lastVideoInPlaylist": MessageLookupByLibrary.simpleMessage(
      "هذا آخر فيديو في قائمة التشغيل",
    ),
    "learnMore": MessageLookupByLibrary.simpleMessage("معرفة المزيد"),
    "left": MessageLookupByLibrary.simpleMessage("يسار"),
    "linkPanelHint": MessageLookupByLibrary.simpleMessage(
      "الصق رابط فيديو وانقر على «إرسال». سيُفتح في علامة تبويب جديدة في متصفحك.",
    ),
    "liveBadge": MessageLookupByLibrary.simpleMessage("مباشر"),
    "liveCantRewind": MessageLookupByLibrary.simpleMessage(
      "لا يمكن الرجوع في هذا البث المباشر",
    ),
    "longPressSpeed": MessageLookupByLibrary.simpleMessage(
      "السرعة عند الضغط المطوّل",
    ),
    "loopEnd": MessageLookupByLibrary.simpleMessage("نهاية التكرار"),
    "loopOff": MessageLookupByLibrary.simpleMessage("التكرار متوقف"),
    "loopOn": MessageLookupByLibrary.simpleMessage("التكرار مفعّل"),
    "loopStart": MessageLookupByLibrary.simpleMessage("بداية التكرار"),
    "manageSubscription": MessageLookupByLibrary.simpleMessage(
      "إدارة الاشتراك",
    ),
    "minutesCount": m13,
    "minutesShort": m14,
    "mixCantRepeat": MessageLookupByLibrary.simpleMessage(
      "تشغّل قائمة التشغيل هذه فيديوهات جديدة بلا توقف، لذلك لا يمكن تكرارها",
    ),
    "mixCantShuffle": MessageLookupByLibrary.simpleMessage(
      "تشغّل قائمة التشغيل هذه فيديوهات جديدة بلا توقف، لذلك لا يمكن تشغيلها عشوائيًا",
    ),
    "monthly": MessageLookupByLibrary.simpleMessage("شهري"),
    "multipleBrowsersMessage": MessageLookupByLibrary.simpleMessage(
      "هناك عدة متصفحات متصلة. اختر المتصفح الذي سيتحكم فيه جهاز التحكم هذا.",
    ),
    "mute": MessageLookupByLibrary.simpleMessage("كتم الصوت"),
    "nextChapter": MessageLookupByLibrary.simpleMessage("الفصل التالي"),
    "nextEpisode": MessageLookupByLibrary.simpleMessage("الحلقة التالية"),
    "nextTab": MessageLookupByLibrary.simpleMessage("علامة التبويب التالية"),
    "nextVideo": MessageLookupByLibrary.simpleMessage("الفيديو التالي"),
    "noBrowser": MessageLookupByLibrary.simpleMessage("لا يوجد متصفح"),
    "noBrowserConnectedShare": MessageLookupByLibrary.simpleMessage(
      "لا يوجد متصفح متصل. افتح متصفحك الذي يحتوي على إضافة Zappit وحاول مرة أخرى.",
    ),
    "noBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "1. افتح المتصفح المرتبط على حاسوبك.\n2. إذا لم يتصل، فانقر على أيقونة Zappit في شريط أدوات المتصفح بالأعلى.",
    ),
    "noBrowserOnline": MessageLookupByLibrary.simpleMessage(
      "لا يوجد متصفح متصل.",
    ),
    "noBrowserOnlineShort": MessageLookupByLibrary.simpleMessage(
      "لا يوجد متصفح متصل",
    ),
    "noBrowserSelected": MessageLookupByLibrary.simpleMessage(
      "لم يتم اختيار متصفح",
    ),
    "noCategoriesFound": MessageLookupByLibrary.simpleMessage(
      "لم يتم العثور على فئات",
    ),
    "noLinkInShare": MessageLookupByLibrary.simpleMessage(
      "لا يوجد رابط فيما شاركته",
    ),
    "noMoreTabs": MessageLookupByLibrary.simpleMessage(
      "لا توجد علامات تبويب أخرى",
    ),
    "noNextEpisode": MessageLookupByLibrary.simpleMessage("لا توجد حلقة تالية"),
    "noOpenTabs": MessageLookupByLibrary.simpleMessage(
      "لا توجد علامات تبويب مفتوحة",
    ),
    "noPreviousPage": MessageLookupByLibrary.simpleMessage(
      "لا توجد صفحة سابقة للرجوع إليها",
    ),
    "noSiteSettings": MessageLookupByLibrary.simpleMessage(
      "لا توجد إعدادات لهذا الموقع بعد.",
    ),
    "noSubtitles": MessageLookupByLibrary.simpleMessage(
      "لا توجد ترجمة لهذا الفيديو",
    ),
    "noThanks": MessageLookupByLibrary.simpleMessage("لا، شكرًا"),
    "noVideosOnPage": MessageLookupByLibrary.simpleMessage(
      "لا توجد فيديوهات في هذه الصفحة.",
    ),
    "notAvailableDuringAd": MessageLookupByLibrary.simpleMessage(
      "غير متاح أثناء الإعلان",
    ),
    "notAvailableForLive": MessageLookupByLibrary.simpleMessage(
      "غير متاح للبث المباشر",
    ),
    "notAvailableForLiveStreams": MessageLookupByLibrary.simpleMessage(
      "غير متاح في البث المباشر",
    ),
    "notAvailableForPhotos": MessageLookupByLibrary.simpleMessage(
      "غير متاح لمنشورات الصور",
    ),
    "notConnected": MessageLookupByLibrary.simpleMessage("غير متصل"),
    "nothingPlaying": MessageLookupByLibrary.simpleMessage(
      "لم يتم العثور على فيديو",
    ),
    "nothingPlayingMessage": MessageLookupByLibrary.simpleMessage(
      "لا يوجد فيديو في علامة التبويب هذه. اختر علامة تبويب أخرى أو الصق رابط فيديو.",
    ),
    "nothingToRestore": MessageLookupByLibrary.simpleMessage(
      "لا يوجد ما يمكن استعادته",
    ),
    "nothingToRestoreMessage": MessageLookupByLibrary.simpleMessage(
      "لم يتم العثور على اشتراك Zappit Pro نشط في حساب المتجر هذا.",
    ),
    "obAnimAddExtension": MessageLookupByLibrary.simpleMessage("إضافة الإضافة"),
    "obAnimAdded": MessageLookupByLibrary.simpleMessage("تمت الإضافة"),
    "obAnimConnectComputer": MessageLookupByLibrary.simpleMessage(
      "اتصل بحاسوبك",
    ),
    "obAnimConnectPhone": MessageLookupByLibrary.simpleMessage("اربط هاتفك"),
    "obAnimNewCode": m15,
    "obAnimRemoteConnected": MessageLookupByLibrary.simpleMessage(
      "جهاز التحكم متصل",
    ),
    "obAnimScanCode": MessageLookupByLibrary.simpleMessage(
      "امسح هذا الرمز بتطبيق Zappit على هاتفك.",
    ),
    "obAnimTagline": MessageLookupByLibrary.simpleMessage("وداعًا للماوس."),
    "obAnimYourPhones": MessageLookupByLibrary.simpleMessage("هواتفك"),
    "off": MessageLookupByLibrary.simpleMessage("إيقاف"),
    "offline": MessageLookupByLibrary.simpleMessage("غير متصل"),
    "offlineMessage": MessageLookupByLibrary.simpleMessage(
      "تحقق من اتصالك بالإنترنت. سيعيد Zappit الاتصال تلقائيًا.",
    ),
    "onboarding0AnimLabel": MessageLookupByLibrary.simpleMessage(
      "النقر على زر التشغيل/الإيقاف المؤقت في تطبيق Zappit يوقف الفيديو على الحاسوب المحمول ثم يستأنفه",
    ),
    "onboarding1AnimLabel": MessageLookupByLibrary.simpleMessage(
      "كتابة zappit.tv/get في المتصفح وإضافة إضافة Zappit",
    ),
    "onboarding1Body": m16,
    "onboarding1Title": MessageLookupByLibrary.simpleMessage(
      "أولًا، أضف إضافة Zappit إلى متصفحك",
    ),
    "onboarding2AnimLabel": MessageLookupByLibrary.simpleMessage(
      "النقر على أيقونة Zappit في المتصفح، ثم مسح رمز QR بالهاتف",
    ),
    "onboarding2Body": MessageLookupByLibrary.simpleMessage(
      "انقر على أيقونة Zappit في شريط أدوات المتصفح، ثم وجّه الكاميرا نحو رمز QR.",
    ),
    "onboarding2Title": MessageLookupByLibrary.simpleMessage("امسح رمز QR"),
    "onboardingGetStarted": MessageLookupByLibrary.simpleMessage("ابدأ"),
    "onboardingIconHelp": MessageLookupByLibrary.simpleMessage(
      "لا ترى أيقونة Zappit؟",
    ),
    "onboardingIconHelpLabel": MessageLookupByLibrary.simpleMessage(
      "لا ترى أيقونة Zappit؟ يفتح الإجابة في الأسئلة الشائعة",
    ),
    "onboardingNext": MessageLookupByLibrary.simpleMessage("التالي"),
    "onboardingOpenQrScanner": MessageLookupByLibrary.simpleMessage(
      "فتح ماسح رمز QR",
    ),
    "onboardingShareLink": MessageLookupByLibrary.simpleMessage(
      "إرسال رابط التثبيت",
    ),
    "onboardingStepCount": m17,
    "onboardingStepLabel": m18,
    "onboardingWelcomeBody": MessageLookupByLibrary.simpleMessage(
      "تحكّم في أي فيديو على حاسوبك. الإعداد خطوتان سريعتان فقط.",
    ),
    "onboardingWelcomeTitle": MessageLookupByLibrary.simpleMessage(
      "أصبح هاتفك جهاز التحكم",
    ),
    "openALink": MessageLookupByLibrary.simpleMessage("فتح رابط"),
    "openBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "افتح متصفحك الذي يحتوي على إضافة Zappit لرؤية علامات التبويب فيه.",
    ),
    "openLinkInBrowser": MessageLookupByLibrary.simpleMessage(
      "فتح رابط في المتصفح",
    ),
    "openSite": m19,
    "openedIn": m20,
    "openingIn": m21,
    "pairCodeExpired": MessageLookupByLibrary.simpleMessage(
      "انتهت صلاحية هذا الرمز. امسح الرمز الجديد على حاسوبك.",
    ),
    "pairCodeInvalid": MessageLookupByLibrary.simpleMessage(
      "لم يعد هذا الرمز صالحًا. امسح الرمز الجديد على حاسوبك.",
    ),
    "pairCodeUsed": MessageLookupByLibrary.simpleMessage(
      "تم استخدام هذا الرمز من قبل. امسح الرمز الجديد على حاسوبك.",
    ),
    "pairFailed": MessageLookupByLibrary.simpleMessage(
      "تعذّر الاتصال. تحقق من اتصالك بالإنترنت وحاول مرة أخرى.",
    ),
    "pairHowToInstall": MessageLookupByLibrary.simpleMessage(
      "كيفية تثبيت الإضافة",
    ),
    "pairPhoneLimit": MessageLookupByLibrary.simpleMessage(
      "هذا الحاسوب متصل بالفعل بـ 3 هواتف. افتح Zappit على أحد هواتفك الأخرى المتصلة وانقر على «فصل هذا الهاتف» في «المزيد». إذا لم يعد ذلك الهاتف معك، فاستخدم «Reset» في إضافة Zappit على حاسوبك.",
    ),
    "pairTitle": MessageLookupByLibrary.simpleMessage("اتصل بإضافة المتصفح"),
    "paste": MessageLookupByLibrary.simpleMessage("لصق"),
    "pasteALink": MessageLookupByLibrary.simpleMessage("الصق رابطًا"),
    "pasteVideoLink": MessageLookupByLibrary.simpleMessage("الصق رابط فيديو"),
    "pause": MessageLookupByLibrary.simpleMessage("إيقاف مؤقت"),
    "paymentPending": MessageLookupByLibrary.simpleMessage(
      "الدفع قيد الانتظار",
    ),
    "paymentPendingMessage": MessageLookupByLibrary.simpleMessage(
      "يتم تفعيل Pro بمجرد أن يؤكد المتجر الدفع.",
    ),
    "phoneName": MessageLookupByLibrary.simpleMessage("اسم الهاتف"),
    "phoneNameEmpty": MessageLookupByLibrary.simpleMessage("أدخل اسمًا."),
    "phoneNameMessage": MessageLookupByLibrary.simpleMessage(
      "يظهر في إضافة Zappit على حاسوبك.",
    ),
    "pickATab": MessageLookupByLibrary.simpleMessage("اختر علامة تبويب"),
    "pickBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "اختر المتصفح الذي سيتحكم فيه جهاز التحكم هذا لرؤية علامات التبويب فيه.",
    ),
    "pickVideosWithPro": MessageLookupByLibrary.simpleMessage(
      "اختر الفيديوهات من هاتفك مع Pro",
    ),
    "play": MessageLookupByLibrary.simpleMessage("تشغيل"),
    "playInApp": MessageLookupByLibrary.simpleMessage("المتابعة على الهاتف"),
    "playNow": MessageLookupByLibrary.simpleMessage("شغّل الآن"),
    "playVideoFirst": MessageLookupByLibrary.simpleMessage(
      "شغّل فيديو في المتصفح أولًا",
    ),
    "playing": MessageLookupByLibrary.simpleMessage("قيد التشغيل"),
    "playlist": MessageLookupByLibrary.simpleMessage("قائمة التشغيل"),
    "playlistCantRepeat": MessageLookupByLibrary.simpleMessage(
      "لا يمكن تكرار قائمة التشغيل هذه",
    ),
    "playlistCantShuffle": MessageLookupByLibrary.simpleMessage(
      "لا يمكن تشغيل قائمة التشغيل هذه عشوائيًا",
    ),
    "previousChapter": MessageLookupByLibrary.simpleMessage("الفصل السابق"),
    "previousTab": MessageLookupByLibrary.simpleMessage(
      "علامة التبويب السابقة",
    ),
    "previousVideo": MessageLookupByLibrary.simpleMessage("الفيديو السابق"),
    "pricePerMonth": m22,
    "pricePerYear": m23,
    "privacyPolicy": MessageLookupByLibrary.simpleMessage("سياسة الخصوصية"),
    "proBannerSubtitle": MessageLookupByLibrary.simpleMessage(
      "أطلق كامل قدرات جهاز التحكم",
    ),
    "proFeatureAbLoop": MessageLookupByLibrary.simpleMessage(
      "A-B Loop بلا حدود",
    ),
    "proFeatureAllSpeeds": MessageLookupByLibrary.simpleMessage(
      "كل سرعات التشغيل",
    ),
    "proFeatureDedicatedControllers": MessageLookupByLibrary.simpleMessage(
      "افتح أجهزة تحكم مخصصة لكل موقع",
    ),
    "proFeatureFullLoop": MessageLookupByLibrary.simpleMessage(
      "تكرار الفيديو كاملًا بلا حدود",
    ),
    "proFeatureVoiceBoost": MessageLookupByLibrary.simpleMessage(
      "Voice Boost بلا حدود",
    ),
    "proPreviewActiveBanner": m24,
    "proPreviewEndedMessage": MessageLookupByLibrary.simpleMessage(
      "شكرًا لتجربتك Zappit Pro! اشترك لتواصل الاستمتاع بكل ميزات Pro دون انقطاع.",
    ),
    "proPreviewEndedSubtitle": m25,
    "proPreviewEndedTitle": MessageLookupByLibrary.simpleMessage(
      "انتهت تجربة Pro",
    ),
    "proPreviewEndsTomorrow": MessageLookupByLibrary.simpleMessage(
      "تنتهي تجربة Pro غدًا",
    ),
    "proPreviewStarted": m26,
    "proPreviewUntil": m27,
    "proRestored": m28,
    "proSubscriptionEnded": MessageLookupByLibrary.simpleMessage(
      "انتهى اشتراك Pro",
    ),
    "proSubtitle": MessageLookupByLibrary.simpleMessage(
      "أطلق كامل قدرات جهاز التحكم.",
    ),
    "purchaseCancelled": MessageLookupByLibrary.simpleMessage(
      "تم إلغاء الشراء",
    ),
    "purchaseCancelledMessage": MessageLookupByLibrary.simpleMessage(
      "لم يُخصم أي مبلغ. يمكنك المحاولة مجددًا في أي وقت.",
    ),
    "purchaseFailed": MessageLookupByLibrary.simpleMessage("فشل الشراء"),
    "purchaseNotActivated": MessageLookupByLibrary.simpleMessage(
      "لم يتم تفعيل الشراء",
    ),
    "purchaseNotActivatedMessage": MessageLookupByLibrary.simpleMessage(
      "تم الدفع لكن Pro لم يُفعَّل بعد. جرّب «استعادة المشتريات».",
    ),
    "purchasesNotAllowed": MessageLookupByLibrary.simpleMessage(
      "الشراء غير مسموح على هذا الجهاز أو الحساب.",
    ),
    "qualityNotChanged": MessageLookupByLibrary.simpleMessage(
      "لم تتغير الجودة",
    ),
    "rateZappit": MessageLookupByLibrary.simpleMessage("قيّم Zappit"),
    "reload": MessageLookupByLibrary.simpleMessage("إعادة تحميل"),
    "remindMe": MessageLookupByLibrary.simpleMessage("ذكّرني"),
    "remoteSettings": MessageLookupByLibrary.simpleMessage(
      "إعدادات جهاز التحكم",
    ),
    "removeFromFavorites": m29,
    "removedFromFavorites": m30,
    "reorderHint": MessageLookupByLibrary.simpleMessage(
      "المس أي عنصر مع الاستمرار، ثم اسحبه لإعادة الترتيب",
    ),
    "reorderSite": m31,
    "repeatOff": MessageLookupByLibrary.simpleMessage("التكرار متوقف"),
    "repeatOffNotice": MessageLookupByLibrary.simpleMessage("تم إيقاف التكرار"),
    "repeatOn": MessageLookupByLibrary.simpleMessage("التكرار مفعّل"),
    "repeatingPlaylist": MessageLookupByLibrary.simpleMessage(
      "يتم تكرار قائمة التشغيل",
    ),
    "replay": MessageLookupByLibrary.simpleMessage("التشغيل من البداية"),
    "restoreFailed": MessageLookupByLibrary.simpleMessage("فشلت الاستعادة"),
    "restorePurchases": MessageLookupByLibrary.simpleMessage(
      "استعادة المشتريات",
    ),
    "right": MessageLookupByLibrary.simpleMessage("يمين"),
    "save": MessageLookupByLibrary.simpleMessage("حفظ"),
    "savePercent": m32,
    "searchCategories": MessageLookupByLibrary.simpleMessage("البحث في الفئات"),
    "seasonNumber": m33,
    "secondsShort": m34,
    "seekInterval": MessageLookupByLibrary.simpleMessage("مدة القفز"),
    "select": MessageLookupByLibrary.simpleMessage("اختيار"),
    "selectVideoInBrowser": MessageLookupByLibrary.simpleMessage(
      "لا شيء قيد التشغيل",
    ),
    "selectVideoInBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "انقر على أي فيديو على حاسوبك لبدء المشاهدة. سيظهر جهاز التحكم هنا.",
    ),
    "send": MessageLookupByLibrary.simpleMessage("إرسال"),
    "settings": MessageLookupByLibrary.simpleMessage("الإعدادات"),
    "showChat": MessageLookupByLibrary.simpleMessage("إظهار الدردشة"),
    "shuffleOff": MessageLookupByLibrary.simpleMessage(
      "التشغيل العشوائي متوقف",
    ),
    "shuffleOffNotice": MessageLookupByLibrary.simpleMessage(
      "تم إيقاف التشغيل العشوائي",
    ),
    "shuffleOn": MessageLookupByLibrary.simpleMessage("التشغيل العشوائي مفعّل"),
    "shufflingPlaylist": MessageLookupByLibrary.simpleMessage(
      "يتم تشغيل قائمة التشغيل عشوائيًا",
    ),
    "siteSettings": m35,
    "siteWeb": MessageLookupByLibrary.simpleMessage("الويب"),
    "skipAd": MessageLookupByLibrary.simpleMessage("تخطي الإعلان"),
    "skipIntro": MessageLookupByLibrary.simpleMessage("تخطي المقدمة"),
    "sleepTimer": MessageLookupByLibrary.simpleMessage("مؤقت النوم"),
    "sleepTimerLabel": MessageLookupByLibrary.simpleMessage("مؤقت النوم"),
    "smallerCaptions": MessageLookupByLibrary.simpleMessage("ترجمة أصغر"),
    "somethingWrong": MessageLookupByLibrary.simpleMessage(
      "عذرًا، حدث خطأ ما.",
    ),
    "somethingWrongTryAgain": MessageLookupByLibrary.simpleMessage(
      "عذرًا، حدث خطأ ما. يُرجى المحاولة مرة أخرى.",
    ),
    "soundBlockedMessage": MessageLookupByLibrary.simpleMessage(
      "انقر لمعرفة كيفية تشغيل الصوت.",
    ),
    "soundBlockedTitle": MessageLookupByLibrary.simpleMessage(
      "لماذا لا أسمع أي صوت؟",
    ),
    "soundHelpTitle": MessageLookupByLibrary.simpleMessage("الصوت"),
    "speedTrialOver": m36,
    "startFreeTrial": MessageLookupByLibrary.simpleMessage(
      "ابدأ التجربة المجانية",
    ),
    "storeProblem": MessageLookupByLibrary.simpleMessage(
      "حدثت مشكلة في المتجر. يُرجى المحاولة بعد قليل.",
    ),
    "storeUnavailable": MessageLookupByLibrary.simpleMessage(
      "المتجر غير متاح حاليًا. يُرجى المحاولة لاحقًا.",
    ),
    "subscribe": MessageLookupByLibrary.simpleMessage("اشترك"),
    "success": MessageLookupByLibrary.simpleMessage("تم"),
    "support": MessageLookupByLibrary.simpleMessage("الدعم"),
    "supportedSites": MessageLookupByLibrary.simpleMessage("المواقع المدعومة"),
    "supportedSitesIntro": MessageLookupByLibrary.simpleMessage(
      "لهذه المواقع جهاز تحكم مصمم خصيصًا لها. وفي أي موقع آخر يعمل Zappit كجهاز تحكم عادي.",
    ),
    "tabMore": MessageLookupByLibrary.simpleMessage("المزيد"),
    "tabRemote": MessageLookupByLibrary.simpleMessage("جهاز التحكم"),
    "tabTabs": MessageLookupByLibrary.simpleMessage("علامات التبويب"),
    "tapToKeepPro": MessageLookupByLibrary.simpleMessage(
      "انقر للاحتفاظ بكل ميزات Pro.",
    ),
    "tellAFriend": MessageLookupByLibrary.simpleMessage("أخبر صديقًا"),
    "termsOfService": MessageLookupByLibrary.simpleMessage("شروط الخدمة"),
    "theaterMode": MessageLookupByLibrary.simpleMessage("وضع المسرح"),
    "trialReminderBody": m37,
    "trialReminderChannel": MessageLookupByLibrary.simpleMessage(
      "تذكير التجربة المجانية",
    ),
    "trialReminderChannelDescription": MessageLookupByLibrary.simpleMessage(
      "تذكير قبل انتهاء التجربة المجانية",
    ),
    "trialReminderMessage": MessageLookupByLibrary.simpleMessage(
      "هل تريد أن نذكّرك قبل يوم من انتهاء التجربة المجانية حتى لا تتفاجأ بأي خصم؟",
    ),
    "trialReminderNotificationTitle": MessageLookupByLibrary.simpleMessage(
      "التجربة المجانية لـ Zappit Pro تنتهي قريبًا",
    ),
    "trialReminderTitle": MessageLookupByLibrary.simpleMessage(
      "تذكير بانتهاء التجربة",
    ),
    "trialTerms": m38,
    "trialTermsDays": m39,
    "trialTermsMonths": m40,
    "trialTermsYears": m41,
    "tryAgain": MessageLookupByLibrary.simpleMessage("إعادة المحاولة"),
    "turnOffAbFirst": MessageLookupByLibrary.simpleMessage(
      "أوقف A-B Loop أولًا",
    ),
    "tutorial": MessageLookupByLibrary.simpleMessage("دليل الاستخدام"),
    "unavailable": MessageLookupByLibrary.simpleMessage("غير متاح"),
    "undo": MessageLookupByLibrary.simpleMessage("تراجع"),
    "unmute": MessageLookupByLibrary.simpleMessage("إلغاء كتم الصوت"),
    "untitled": MessageLookupByLibrary.simpleMessage("بلا عنوان"),
    "up": MessageLookupByLibrary.simpleMessage("أعلى"),
    "upNext": MessageLookupByLibrary.simpleMessage("التالي"),
    "upNextCountdown": m42,
    "upgrade": MessageLookupByLibrary.simpleMessage("ترقية"),
    "videoLengthUnknown": MessageLookupByLibrary.simpleMessage(
      "مدة هذا الفيديو غير معروفة",
    ),
    "videoQuality": MessageLookupByLibrary.simpleMessage("جودة الفيديو"),
    "view": MessageLookupByLibrary.simpleMessage("عرض"),
    "voiceBoostDuringAd": MessageLookupByLibrary.simpleMessage(
      "Voice Boost غير متاح أثناء الإعلان",
    ),
    "voiceBoostOff": MessageLookupByLibrary.simpleMessage("Voice Boost متوقف"),
    "voiceBoostOn": MessageLookupByLibrary.simpleMessage("Voice Boost مفعّل"),
    "voiceBoostTrialLeft": m43,
    "voiceBoostTrialOver": m44,
    "voiceBoostTurnedOn": MessageLookupByLibrary.simpleMessage(
      "Voice Boost مفعّل: الأصوات أوضح",
    ),
    "voiceBoostUnsupported": MessageLookupByLibrary.simpleMessage(
      "هذا الفيديو لا يدعم Voice Boost",
    ),
    "volumeDown": MessageLookupByLibrary.simpleMessage("خفض الصوت"),
    "volumeUp": MessageLookupByLibrary.simpleMessage("رفع الصوت"),
    "waitingForBrowser": MessageLookupByLibrary.simpleMessage(
      "بانتظار متصفحك…",
    ),
    "watchAgain": MessageLookupByLibrary.simpleMessage("المشاهدة مرة أخرى"),
    "watching": MessageLookupByLibrary.simpleMessage("تشاهده الآن"),
    "welcomeToPro": m45,
    "windowNumber": m46,
    "yearly": MessageLookupByLibrary.simpleMessage("سنوي"),
    "yourBrowser": MessageLookupByLibrary.simpleMessage("متصفحك"),
    "youreConnected": MessageLookupByLibrary.simpleMessage("تم الاتصال!"),
    "youreOffline": MessageLookupByLibrary.simpleMessage(
      "أنت غير متصل بالإنترنت",
    ),
    "youtubeHome": MessageLookupByLibrary.simpleMessage(
      "الصفحة الرئيسية في YouTube",
    ),
    "ytCourses": MessageLookupByLibrary.simpleMessage("الدورات التدريبية"),
    "ytDownloads": MessageLookupByLibrary.simpleMessage(
      "الملفات التي تم تنزيلها",
    ),
    "ytExplore": MessageLookupByLibrary.simpleMessage("استكشاف"),
    "ytGaming": MessageLookupByLibrary.simpleMessage("ألعاب فيديو"),
    "ytHistory": MessageLookupByLibrary.simpleMessage("السجلّ"),
    "ytHype": MessageLookupByLibrary.simpleMessage("Hype"),
    "ytLikedVideos": MessageLookupByLibrary.simpleMessage(
      "الفيديوهات التي أعجبتني",
    ),
    "ytLive": MessageLookupByLibrary.simpleMessage("بث مباشر"),
    "ytMemberships": MessageLookupByLibrary.simpleMessage(
      "الاشتراكات المدفوعة",
    ),
    "ytMusic": MessageLookupByLibrary.simpleMessage("الموسيقى"),
    "ytPlaylists": MessageLookupByLibrary.simpleMessage("قوائم التشغيل"),
    "ytPodcasts": MessageLookupByLibrary.simpleMessage("البودكاست"),
    "ytShorts": MessageLookupByLibrary.simpleMessage("Shorts"),
    "ytSubscriptions": MessageLookupByLibrary.simpleMessage("الاشتراكات"),
    "ytVideos": MessageLookupByLibrary.simpleMessage("الفيديوهات"),
    "ytWatchLater": MessageLookupByLibrary.simpleMessage("المشاهدة لاحقًا"),
    "ytYou": MessageLookupByLibrary.simpleMessage("أنت"),
  };
}
