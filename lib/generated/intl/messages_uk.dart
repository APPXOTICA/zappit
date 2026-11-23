// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a uk locale. All the
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
  String get localeName => 'uk';

  static String m0(site) => "Додати ${site} до обраного";

  static String m1(count) => "Назад на ${count} с";

  static String m2(browser) =>
      "${browser} не відповів. Перевірте, чи браузер відкритий.";

  static String m3(browsers) => "Відключено від ${browsers}";

  static String m4(name) => "Канал: ${name}";

  static String m5(current, total) => "Розділ ${current}/${total}";

  static String m6(browser) => "Підключено до ${browser}";

  static String m7(count) => "Уперед на ${count} с";

  static String m8(count) => "Безкоштовно: ${count} дн.";

  static String m9(count) => "Безкоштовно: ${count} міс.";

  static String m10(count) => "Безкоштовно: ${count} тиж.";

  static String m11(count) => "Безкоштовно: ${count} р.";

  static String m12(price) => "Лише ${price}/міс.";

  static String m13(count) =>
      "${Intl.plural(count, one: '${count} хвилина', few: '${count} хвилини', many: '${count} хвилин', other: '${count} хвилини')}";

  static String m14(count) => "${count} хв";

  static String m15(time) => "Новий код через ${time}";

  static String m16(url) =>
      "Відкрийте ${url} у браузері на комп’ютері, щоб установити розширення Zappit.";

  static String m17(current, total) => "${current} / ${total}";

  static String m18(current, total) => "Крок ${current} з ${total}";

  static String m19(site) => "Відкрити ${site}";

  static String m20(browser) => "Відкрито в ${browser}";

  static String m21(browser) => "Відкриваємо в ${browser}…";

  static String m22(price) => "${price} / міс.";

  static String m23(price) => "${price} / рік";

  static String m24(date) =>
      "Безкоштовний пробний доступ до Pro діє до ${date}. Оформіть підписку до його завершення, щоб без перерви користуватися всіма функціями Pro.";

  static String m25(proName) =>
      "Пробний доступ до Pro закінчився. Збережіть усі функції Pro з ${proName}.";

  static String m26(days) =>
      "Користуйтеся всіма функціями Zappit Pro безкоштовно ${days} дн. Без картки та без автосписань.";

  static String m27(date) => "Пробний Pro до ${date}";

  static String m28(proName) => "${proName} відновлено";

  static String m29(site) => "Видалити ${site} з обраного";

  static String m30(site) => "${site} видалено з обраного";

  static String m31(site) => "Перемістити ${site}";

  static String m32(percent) => "Вигода ${percent}%";

  static String m33(number) => "Сезон ${number}";

  static String m34(count) => "${count} с";

  static String m35(site) => "Налаштування ${site}";

  static String m36(count) =>
      "Знову 1x. Без Pro ця швидкість доступна ${count} с.";

  static String m37(price, date) =>
      "Безкоштовний період закінчується завтра. ${date} буде списано ${price}. Якщо не хочете продовжувати, скасуйте підписку до цього дня.";

  static String m38(price) =>
      "Спочатку безкоштовний період, потім ${price}/рік.";

  static String m39(count, price) =>
      "Спочатку безкоштовно ${count} дн., потім ${price}/рік.";

  static String m40(count, price) =>
      "Спочатку безкоштовно ${count} міс., потім ${price}/рік.";

  static String m41(count, price) =>
      "Спочатку безкоштовно ${count} р., потім ${price}/рік.";

  static String m42(count) => "Далі · через ${count} с";

  static String m43(count) => "Пробний Voice Boost, лишилося ${count} с";

  static String m44(count) =>
      "Voice Boost вимкнено. Без Pro Voice Boost доступний ${count} с.";

  static String m45(proName) => "Вітаємо в ${proName}";

  static String m46(number) => "Вікно ${number}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "abLoopCount": MessageLookupByLibrary.simpleMessage(
      "Кількість повторів A-B Loop",
    ),
    "abOffForLive": MessageLookupByLibrary.simpleMessage(
      "A-B Loop недоступний у прямих трансляціях",
    ),
    "account": MessageLookupByLibrary.simpleMessage("Підключення"),
    "adBadge": MessageLookupByLibrary.simpleMessage("РЕКЛАМА"),
    "addToFavorites": m0,
    "allCategories": MessageLookupByLibrary.simpleMessage("Усі категорії"),
    "allSites": MessageLookupByLibrary.simpleMessage("Усі сайти"),
    "alreadySubscribed": MessageLookupByLibrary.simpleMessage(
      "У вас уже є ця підписка. Спробуйте «Відновити покупки».",
    ),
    "back": MessageLookupByLibrary.simpleMessage("Назад"),
    "backSeconds": m1,
    "banned": MessageLookupByLibrary.simpleMessage(
      "На жаль, доступ заблоковано.",
    ),
    "browserDidNotAnswer": m2,
    "browserNotResponding": MessageLookupByLibrary.simpleMessage(
      "Браузер не відповідає",
    ),
    "browsers": MessageLookupByLibrary.simpleMessage("Браузери"),
    "browsersDisconnected": m3,
    "browsersDisconnectedBody": MessageLookupByLibrary.simpleMessage(
      "До нього підключився інший телефон. Щоб знову ним користуватися, відскануйте QR-код на тому комп’ютері.",
    ),
    "cameraDenied": MessageLookupByLibrary.simpleMessage(
      "Дозвольте доступ до камери в налаштуваннях, щоб відсканувати код.",
    ),
    "cameraUnavailable": MessageLookupByLibrary.simpleMessage(
      "Камера зараз недоступна.",
    ),
    "cancel": MessageLookupByLibrary.simpleMessage("Скасувати"),
    "cancelAnytime": MessageLookupByLibrary.simpleMessage(
      "Скасувати можна будь-коли в обліковому записі магазину.",
    ),
    "cantLoadPage": MessageLookupByLibrary.simpleMessage(
      "Не вдалося завантажити сторінку",
    ),
    "cantOpenOnPhone": MessageLookupByLibrary.simpleMessage(
      "Це відео не можна відкрити на телефоні",
    ),
    "cantReachBrowser": MessageLookupByLibrary.simpleMessage(
      "Браузер недоступний",
    ),
    "cantSeekVideo": MessageLookupByLibrary.simpleMessage(
      "Це відео не можна перемотувати",
    ),
    "captionLanguage": MessageLookupByLibrary.simpleMessage("Мова субтитрів"),
    "captions": MessageLookupByLibrary.simpleMessage("Субтитри"),
    "captionsOff": MessageLookupByLibrary.simpleMessage("Субтитри вимкнено"),
    "captionsOn": MessageLookupByLibrary.simpleMessage("Субтитри ввімкнено"),
    "categories": MessageLookupByLibrary.simpleMessage("Категорії"),
    "categoryFavoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "Натисніть зірочку біля категорії, щоб додати її сюди.",
    ),
    "channelLabel": m4,
    "chapterPosition": m5,
    "chapters": MessageLookupByLibrary.simpleMessage("Розділи"),
    "chaptersDuringAd": MessageLookupByLibrary.simpleMessage(
      "Під час реклами не можна перемикати розділи",
    ),
    "checkConnection": MessageLookupByLibrary.simpleMessage(
      "Перевірте підключення до інтернету й спробуйте ще раз.",
    ),
    "checkConnectionShort": MessageLookupByLibrary.simpleMessage(
      "Перевірте підключення й спробуйте ще раз.",
    ),
    "chooseBrowser": MessageLookupByLibrary.simpleMessage("Виберіть браузер"),
    "chooseNextVideo": MessageLookupByLibrary.simpleMessage(
      "Виберіть наступне відео",
    ),
    "clear": MessageLookupByLibrary.simpleMessage("Очистити"),
    "close": MessageLookupByLibrary.simpleMessage("Закрити"),
    "connectBrowser": MessageLookupByLibrary.simpleMessage(
      "Підключити браузер",
    ),
    "connectBrowserFirst": MessageLookupByLibrary.simpleMessage(
      "Спочатку підключіться до браузера",
    ),
    "connected": MessageLookupByLibrary.simpleMessage("Підключено"),
    "connectedTo": m6,
    "contactUs": MessageLookupByLibrary.simpleMessage("Зв’язатися з нами"),
    "contactUsKeepInfo": MessageLookupByLibrary.simpleMessage(
      "Будь ласка, не видаляйте інформацію нижче.",
    ),
    "couldNotGetVideoLink": MessageLookupByLibrary.simpleMessage(
      "Не вдалося отримати посилання на відео",
    ),
    "couldNotLoadEpisodes": MessageLookupByLibrary.simpleMessage(
      "Не вдалося завантажити серії",
    ),
    "couldNotLoadPlaylist": MessageLookupByLibrary.simpleMessage(
      "Не вдалося завантажити плейлист",
    ),
    "couldNotOpenLink": MessageLookupByLibrary.simpleMessage(
      "Не вдалося відкрити посилання",
    ),
    "couldNotReadQuality": MessageLookupByLibrary.simpleMessage(
      "Не вдалося прочитати варіанти якості на сторінці.",
    ),
    "delete": MessageLookupByLibrary.simpleMessage("Видалити"),
    "disconnect": MessageLookupByLibrary.simpleMessage("Відключити"),
    "disconnectPhone": MessageLookupByLibrary.simpleMessage(
      "Відключити цей телефон",
    ),
    "disconnectPhoneMessage": MessageLookupByLibrary.simpleMessage(
      "Цей телефон більше не керуватиме комп’ютером. Щоб знову ним користуватися, відскануйте QR-код на комп’ютері.",
    ),
    "down": MessageLookupByLibrary.simpleMessage("Униз"),
    "endOfVideo": MessageLookupByLibrary.simpleMessage("Кінець відео"),
    "enterValidLink": MessageLookupByLibrary.simpleMessage(
      "Введіть посилання, що починається з http або https",
    ),
    "episodes": MessageLookupByLibrary.simpleMessage("Серії"),
    "error": MessageLookupByLibrary.simpleMessage("Помилка"),
    "errorButtonNotFound": MessageLookupByLibrary.simpleMessage(
      "Не вдалося знайти цю кнопку на сторінці",
    ),
    "errorDuringAd": MessageLookupByLibrary.simpleMessage(
      "Під час реклами це недоступно",
    ),
    "errorEndBeforeStart": MessageLookupByLibrary.simpleMessage(
      "Кінцева точка має бути пізніше за початкову",
    ),
    "errorGeneric": MessageLookupByLibrary.simpleMessage("Щось пішло не так"),
    "errorInvalidUrl": MessageLookupByLibrary.simpleMessage(
      "Не вдається відкрити це посилання",
    ),
    "errorNoBrowser": MessageLookupByLibrary.simpleMessage(
      "Браузер не вибрано",
    ),
    "errorNoMedia": MessageLookupByLibrary.simpleMessage(
      "Відео не відтворюється",
    ),
    "errorNotChanged": MessageLookupByLibrary.simpleMessage(
      "Сайт не застосував зміну",
    ),
    "errorNotSupported": MessageLookupByLibrary.simpleMessage(
      "Цей сайт цього не підтримує",
    ),
    "errorStartAfterEnd": MessageLookupByLibrary.simpleMessage(
      "Початкова точка має бути раніше за кінцеву",
    ),
    "errorTabClosed": MessageLookupByLibrary.simpleMessage(
      "Цю вкладку вже закрито",
    ),
    "exitFullScreen": MessageLookupByLibrary.simpleMessage(
      "Вийти з повноекранного режиму",
    ),
    "extensionUpdatedReload": MessageLookupByLibrary.simpleMessage(
      "Розширення Zappit оновилося. Перезавантажте цю сторінку, щоб користуватися всіма кнопками.",
    ),
    "faq": MessageLookupByLibrary.simpleMessage("Запитання й відповіді"),
    "favorites": MessageLookupByLibrary.simpleMessage("Обране"),
    "favoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "Натисніть зірочку біля сайту, щоб додати його сюди.",
    ),
    "forwardSeconds": m7,
    "frameByFrame": MessageLookupByLibrary.simpleMessage("Покадрово"),
    "freeTrial": MessageLookupByLibrary.simpleMessage("Безкоштовний період"),
    "freeTrialDays": m8,
    "freeTrialMonths": m9,
    "freeTrialWeeks": m10,
    "freeTrialYears": m11,
    "fullPowerUnlocked": MessageLookupByLibrary.simpleMessage(
      "Усі функції відкрито",
    ),
    "fullScreen": MessageLookupByLibrary.simpleMessage("На весь екран"),
    "generalSettings": MessageLookupByLibrary.simpleMessage(
      "Загальні налаштування",
    ),
    "gotIt": MessageLookupByLibrary.simpleMessage("Зрозуміло"),
    "hideChat": MessageLookupByLibrary.simpleMessage("Сховати чат"),
    "home": MessageLookupByLibrary.simpleMessage("Головна"),
    "justPerMonth": m12,
    "largerCaptions": MessageLookupByLibrary.simpleMessage("Більші субтитри"),
    "lastVideoInPlaylist": MessageLookupByLibrary.simpleMessage(
      "Це останнє відео в плейлисті",
    ),
    "learnMore": MessageLookupByLibrary.simpleMessage("Докладніше"),
    "left": MessageLookupByLibrary.simpleMessage("Ліворуч"),
    "linkPanelHint": MessageLookupByLibrary.simpleMessage(
      "Вставте посилання на відео й натисніть «Надіслати». Воно відкриється в новій вкладці браузера.",
    ),
    "liveBadge": MessageLookupByLibrary.simpleMessage("ЕФІР"),
    "liveCantRewind": MessageLookupByLibrary.simpleMessage(
      "Цю трансляцію не можна перемотати назад",
    ),
    "longPressSpeed": MessageLookupByLibrary.simpleMessage(
      "Швидкість під час утримання",
    ),
    "loopEnd": MessageLookupByLibrary.simpleMessage("Кінець повтору"),
    "loopOff": MessageLookupByLibrary.simpleMessage("Повтор вимкнено"),
    "loopOn": MessageLookupByLibrary.simpleMessage("Повтор увімкнено"),
    "loopStart": MessageLookupByLibrary.simpleMessage("Початок повтору"),
    "manageSubscription": MessageLookupByLibrary.simpleMessage(
      "Керувати підпискою",
    ),
    "minutesCount": m13,
    "minutesShort": m14,
    "mixCantRepeat": MessageLookupByLibrary.simpleMessage(
      "Цей плейлист безкінечно додає нові відео, тому його не можна повторювати",
    ),
    "mixCantShuffle": MessageLookupByLibrary.simpleMessage(
      "Цей плейлист безкінечно додає нові відео, тому його не можна перемішати",
    ),
    "monthly": MessageLookupByLibrary.simpleMessage("На місяць"),
    "multipleBrowsersMessage": MessageLookupByLibrary.simpleMessage(
      "У мережі кілька браузерів. Виберіть той, яким керуватиме цей пульт.",
    ),
    "mute": MessageLookupByLibrary.simpleMessage("Вимкнути звук"),
    "nextChapter": MessageLookupByLibrary.simpleMessage("Наступний розділ"),
    "nextEpisode": MessageLookupByLibrary.simpleMessage("Наступна серія"),
    "nextTab": MessageLookupByLibrary.simpleMessage("Наступна вкладка"),
    "nextVideo": MessageLookupByLibrary.simpleMessage("Наступне відео"),
    "noBrowser": MessageLookupByLibrary.simpleMessage("Немає браузера"),
    "noBrowserConnectedShare": MessageLookupByLibrary.simpleMessage(
      "Немає підключеного браузера. Відкрийте браузер із розширенням Zappit і спробуйте ще раз.",
    ),
    "noBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "1. Відкрийте на комп’ютері підключений браузер.\n2. Якщо він не підключається, натисніть значок Zappit на панелі інструментів браузера.",
    ),
    "noBrowserOnline": MessageLookupByLibrary.simpleMessage(
      "Немає браузерів у мережі.",
    ),
    "noBrowserOnlineShort": MessageLookupByLibrary.simpleMessage(
      "Немає браузерів у мережі",
    ),
    "noBrowserSelected": MessageLookupByLibrary.simpleMessage(
      "Браузер не вибрано",
    ),
    "noCategoriesFound": MessageLookupByLibrary.simpleMessage(
      "Категорій не знайдено",
    ),
    "noLinkInShare": MessageLookupByLibrary.simpleMessage(
      "У надісланому немає посилання",
    ),
    "noMoreTabs": MessageLookupByLibrary.simpleMessage("Більше вкладок немає"),
    "noNextEpisode": MessageLookupByLibrary.simpleMessage(
      "Наступної серії немає",
    ),
    "noOpenTabs": MessageLookupByLibrary.simpleMessage(
      "Немає відкритих вкладок",
    ),
    "noPreviousPage": MessageLookupByLibrary.simpleMessage(
      "Немає попередньої сторінки",
    ),
    "noSiteSettings": MessageLookupByLibrary.simpleMessage(
      "Для цього сайту поки немає налаштувань.",
    ),
    "noSubtitles": MessageLookupByLibrary.simpleMessage(
      "Це відео не має субтитрів",
    ),
    "noThanks": MessageLookupByLibrary.simpleMessage("Не треба"),
    "noVideosOnPage": MessageLookupByLibrary.simpleMessage(
      "На цій сторінці немає відео.",
    ),
    "notAvailableDuringAd": MessageLookupByLibrary.simpleMessage(
      "Недоступно під час реклами",
    ),
    "notAvailableForLive": MessageLookupByLibrary.simpleMessage(
      "Недоступно в ефірі",
    ),
    "notAvailableForLiveStreams": MessageLookupByLibrary.simpleMessage(
      "Недоступно для прямих трансляцій",
    ),
    "notAvailableForPhotos": MessageLookupByLibrary.simpleMessage(
      "Недоступно для фотодописів",
    ),
    "notConnected": MessageLookupByLibrary.simpleMessage("Не підключено"),
    "nothingPlaying": MessageLookupByLibrary.simpleMessage("Відео не знайдено"),
    "nothingPlayingMessage": MessageLookupByLibrary.simpleMessage(
      "На цьому екрані немає відео. Виберіть іншу вкладку або вставте посилання на відео.",
    ),
    "nothingToRestore": MessageLookupByLibrary.simpleMessage(
      "Немає що відновлювати",
    ),
    "nothingToRestoreMessage": MessageLookupByLibrary.simpleMessage(
      "Для цього облікового запису магазину не знайдено активної підписки Zappit Pro.",
    ),
    "obAnimAddExtension": MessageLookupByLibrary.simpleMessage(
      "Додати розширення",
    ),
    "obAnimAdded": MessageLookupByLibrary.simpleMessage("Додано"),
    "obAnimConnectComputer": MessageLookupByLibrary.simpleMessage(
      "Підключіться до комп’ютера",
    ),
    "obAnimConnectPhone": MessageLookupByLibrary.simpleMessage(
      "Підключіть телефон",
    ),
    "obAnimNewCode": m15,
    "obAnimRemoteConnected": MessageLookupByLibrary.simpleMessage(
      "Пульт підключено",
    ),
    "obAnimScanCode": MessageLookupByLibrary.simpleMessage(
      "Відскануйте цей код у застосунку Zappit на телефоні.",
    ),
    "obAnimTagline": MessageLookupByLibrary.simpleMessage("Забудьте про мишу."),
    "obAnimYourPhones": MessageLookupByLibrary.simpleMessage("Ваші телефони"),
    "off": MessageLookupByLibrary.simpleMessage("Вимк."),
    "offline": MessageLookupByLibrary.simpleMessage("Не в мережі"),
    "offlineMessage": MessageLookupByLibrary.simpleMessage(
      "Перевірте підключення до інтернету. Zappit перепідключиться сам.",
    ),
    "onboarding0AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Натискання кнопки відтворення/паузи в застосунку Zappit ставить відео на ноутбуці на паузу й знову запускає його",
    ),
    "onboarding1AnimLabel": MessageLookupByLibrary.simpleMessage(
      "У браузері вводиться zappit.tv/get і додається розширення Zappit",
    ),
    "onboarding1Body": m16,
    "onboarding1Title": MessageLookupByLibrary.simpleMessage(
      "Спочатку додайте розширення Zappit у браузер",
    ),
    "onboarding2AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Натискання значка Zappit у браузері, потім сканування QR-коду телефоном",
    ),
    "onboarding2Body": MessageLookupByLibrary.simpleMessage(
      "Натисніть значок Zappit на панелі інструментів браузера, потім наведіть камеру на QR-код.",
    ),
    "onboarding2Title": MessageLookupByLibrary.simpleMessage(
      "Відскануйте QR-код",
    ),
    "onboardingGetStarted": MessageLookupByLibrary.simpleMessage("Почати"),
    "onboardingIconHelp": MessageLookupByLibrary.simpleMessage(
      "Не бачите значка Zappit?",
    ),
    "onboardingIconHelpLabel": MessageLookupByLibrary.simpleMessage(
      "Не бачите значка Zappit? Відкриває відповідь у розділі «Запитання й відповіді»",
    ),
    "onboardingNext": MessageLookupByLibrary.simpleMessage("Далі"),
    "onboardingOpenQrScanner": MessageLookupByLibrary.simpleMessage(
      "Відкрити QR-сканер",
    ),
    "onboardingShareLink": MessageLookupByLibrary.simpleMessage(
      "Надіслати посилання для встановлення",
    ),
    "onboardingStepCount": m17,
    "onboardingStepLabel": m18,
    "onboardingWelcomeBody": MessageLookupByLibrary.simpleMessage(
      "Керуйте будь-яким відео на комп’ютері. Налаштування займе лише два короткі кроки.",
    ),
    "onboardingWelcomeTitle": MessageLookupByLibrary.simpleMessage(
      "Тепер ваш телефон — це пульт",
    ),
    "openALink": MessageLookupByLibrary.simpleMessage("Відкрити посилання"),
    "openBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "Відкрийте браузер із розширенням Zappit, щоб побачити його вкладки.",
    ),
    "openLinkInBrowser": MessageLookupByLibrary.simpleMessage(
      "Відкрити посилання в браузері",
    ),
    "openSite": m19,
    "openedIn": m20,
    "openingIn": m21,
    "pairCodeExpired": MessageLookupByLibrary.simpleMessage(
      "Термін дії коду минув. Відскануйте новий код на комп’ютері.",
    ),
    "pairCodeInvalid": MessageLookupByLibrary.simpleMessage(
      "Цей код більше не дійсний. Відскануйте новий код на комп’ютері.",
    ),
    "pairCodeUsed": MessageLookupByLibrary.simpleMessage(
      "Цей код уже використано. Відскануйте новий код на комп’ютері.",
    ),
    "pairFailed": MessageLookupByLibrary.simpleMessage(
      "Не вдалося підключитися. Перевірте підключення до інтернету й спробуйте ще раз.",
    ),
    "pairHowToInstall": MessageLookupByLibrary.simpleMessage(
      "Як установити розширення",
    ),
    "pairPhoneLimit": MessageLookupByLibrary.simpleMessage(
      "До цього комп’ютера вже підключено 3 телефони. Відкрийте Zappit на одному з інших підключених телефонів і натисніть «Відключити цей телефон» у розділі «Більше». Якщо того телефона вже немає, натисніть «Reset» у розширенні Zappit на комп’ютері.",
    ),
    "pairTitle": MessageLookupByLibrary.simpleMessage(
      "Підключіться до розширення браузера",
    ),
    "paste": MessageLookupByLibrary.simpleMessage("Вставити"),
    "pasteALink": MessageLookupByLibrary.simpleMessage("Вставити посилання"),
    "pasteVideoLink": MessageLookupByLibrary.simpleMessage(
      "Вставте посилання на відео",
    ),
    "pause": MessageLookupByLibrary.simpleMessage("Пауза"),
    "paymentPending": MessageLookupByLibrary.simpleMessage("Оплата очікується"),
    "paymentPendingMessage": MessageLookupByLibrary.simpleMessage(
      "Pro ввімкнеться, щойно магазин підтвердить оплату.",
    ),
    "phoneName": MessageLookupByLibrary.simpleMessage("Назва телефона"),
    "phoneNameEmpty": MessageLookupByLibrary.simpleMessage("Введіть назву."),
    "phoneNameMessage": MessageLookupByLibrary.simpleMessage(
      "Показується в розширенні Zappit на комп’ютері.",
    ),
    "pickATab": MessageLookupByLibrary.simpleMessage("Вибрати вкладку"),
    "pickBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "Виберіть браузер, яким керуватиме цей пульт, щоб побачити його вкладки.",
    ),
    "pickVideosWithPro": MessageLookupByLibrary.simpleMessage(
      "Вибирайте відео з телефона з Pro",
    ),
    "play": MessageLookupByLibrary.simpleMessage("Відтворити"),
    "playInApp": MessageLookupByLibrary.simpleMessage("Продовжити на телефоні"),
    "playNow": MessageLookupByLibrary.simpleMessage("Дивитися зараз"),
    "playVideoFirst": MessageLookupByLibrary.simpleMessage(
      "Спочатку ввімкніть відео в браузері",
    ),
    "playing": MessageLookupByLibrary.simpleMessage("Відтворюється"),
    "playlist": MessageLookupByLibrary.simpleMessage("Плейлист"),
    "playlistCantRepeat": MessageLookupByLibrary.simpleMessage(
      "Цей плейлист не можна повторювати",
    ),
    "playlistCantShuffle": MessageLookupByLibrary.simpleMessage(
      "Цей плейлист не можна перемішати",
    ),
    "previousChapter": MessageLookupByLibrary.simpleMessage(
      "Попередній розділ",
    ),
    "previousTab": MessageLookupByLibrary.simpleMessage("Попередня вкладка"),
    "previousVideo": MessageLookupByLibrary.simpleMessage("Попереднє відео"),
    "pricePerMonth": m22,
    "pricePerYear": m23,
    "privacyPolicy": MessageLookupByLibrary.simpleMessage(
      "Політика конфіденційності",
    ),
    "proBannerSubtitle": MessageLookupByLibrary.simpleMessage(
      "Розкрийте всі можливості пульта",
    ),
    "proFeatureAbLoop": MessageLookupByLibrary.simpleMessage(
      "A-B Loop без обмежень",
    ),
    "proFeatureAllSpeeds": MessageLookupByLibrary.simpleMessage(
      "Усі швидкості відтворення",
    ),
    "proFeatureDedicatedControllers": MessageLookupByLibrary.simpleMessage(
      "Окремі пульти для сайтів",
    ),
    "proFeatureFullLoop": MessageLookupByLibrary.simpleMessage(
      "Повтор відео без обмежень",
    ),
    "proFeatureVoiceBoost": MessageLookupByLibrary.simpleMessage(
      "Voice Boost без обмежень",
    ),
    "proPreviewActiveBanner": m24,
    "proPreviewEndedMessage": MessageLookupByLibrary.simpleMessage(
      "Дякуємо, що спробували Zappit Pro! Оформіть підписку, щоб і далі без перерви користуватися всіма функціями Pro.",
    ),
    "proPreviewEndedSubtitle": m25,
    "proPreviewEndedTitle": MessageLookupByLibrary.simpleMessage(
      "Пробний доступ до Pro закінчився",
    ),
    "proPreviewEndsTomorrow": MessageLookupByLibrary.simpleMessage(
      "Пробний доступ до Pro закінчиться завтра",
    ),
    "proPreviewStarted": m26,
    "proPreviewUntil": m27,
    "proRestored": m28,
    "proSubscriptionEnded": MessageLookupByLibrary.simpleMessage(
      "Підписка Pro закінчилася",
    ),
    "proSubtitle": MessageLookupByLibrary.simpleMessage(
      "Розкрийте всі можливості пульта.",
    ),
    "purchaseCancelled": MessageLookupByLibrary.simpleMessage(
      "Покупку скасовано",
    ),
    "purchaseCancelledMessage": MessageLookupByLibrary.simpleMessage(
      "Кошти не списано. Можна спробувати знову будь-коли.",
    ),
    "purchaseFailed": MessageLookupByLibrary.simpleMessage(
      "Не вдалося здійснити покупку",
    ),
    "purchaseNotActivated": MessageLookupByLibrary.simpleMessage(
      "Покупку не активовано",
    ),
    "purchaseNotActivatedMessage": MessageLookupByLibrary.simpleMessage(
      "Оплата пройшла, але Pro ще не ввімкнувся. Спробуйте «Відновити покупки».",
    ),
    "purchasesNotAllowed": MessageLookupByLibrary.simpleMessage(
      "На цьому пристрої або в цьому обліковому записі покупки заборонені.",
    ),
    "qualityNotChanged": MessageLookupByLibrary.simpleMessage(
      "Якість не змінилася",
    ),
    "rateZappit": MessageLookupByLibrary.simpleMessage("Оцінити Zappit"),
    "reload": MessageLookupByLibrary.simpleMessage("Перезавантажити"),
    "remindMe": MessageLookupByLibrary.simpleMessage("Нагадати"),
    "remoteSettings": MessageLookupByLibrary.simpleMessage(
      "Налаштування пульта",
    ),
    "removeFromFavorites": m29,
    "removedFromFavorites": m30,
    "reorderHint": MessageLookupByLibrary.simpleMessage(
      "Натисніть і утримуйте елемент, потім перетягніть, щоб змінити порядок",
    ),
    "reorderSite": m31,
    "repeatOff": MessageLookupByLibrary.simpleMessage("Повтор вимкнено"),
    "repeatOffNotice": MessageLookupByLibrary.simpleMessage("Повтор вимкнено"),
    "repeatOn": MessageLookupByLibrary.simpleMessage("Повтор увімкнено"),
    "repeatingPlaylist": MessageLookupByLibrary.simpleMessage(
      "Плейлист повторюється",
    ),
    "replay": MessageLookupByLibrary.simpleMessage("Дивитися спочатку"),
    "restoreFailed": MessageLookupByLibrary.simpleMessage(
      "Не вдалося відновити",
    ),
    "restorePurchases": MessageLookupByLibrary.simpleMessage(
      "Відновити покупки",
    ),
    "right": MessageLookupByLibrary.simpleMessage("Праворуч"),
    "save": MessageLookupByLibrary.simpleMessage("Зберегти"),
    "savePercent": m32,
    "searchCategories": MessageLookupByLibrary.simpleMessage("Пошук категорій"),
    "seasonNumber": m33,
    "secondsShort": m34,
    "seekInterval": MessageLookupByLibrary.simpleMessage("Крок перемотування"),
    "select": MessageLookupByLibrary.simpleMessage("Вибрати"),
    "selectVideoInBrowser": MessageLookupByLibrary.simpleMessage(
      "Нічого не відтворюється",
    ),
    "selectVideoInBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "Натисніть будь-яке відео на комп’ютері, щоб почати перегляд. Пульт з’явиться тут.",
    ),
    "send": MessageLookupByLibrary.simpleMessage("Надіслати"),
    "settings": MessageLookupByLibrary.simpleMessage("Налаштування"),
    "showChat": MessageLookupByLibrary.simpleMessage("Показати чат"),
    "shuffleOff": MessageLookupByLibrary.simpleMessage(
      "Перемішування вимкнено",
    ),
    "shuffleOffNotice": MessageLookupByLibrary.simpleMessage(
      "Перемішування вимкнено",
    ),
    "shuffleOn": MessageLookupByLibrary.simpleMessage(
      "Перемішування ввімкнено",
    ),
    "shufflingPlaylist": MessageLookupByLibrary.simpleMessage(
      "Плейлист відтворюється у випадковому порядку",
    ),
    "siteSettings": m35,
    "siteWeb": MessageLookupByLibrary.simpleMessage("Веб"),
    "skipAd": MessageLookupByLibrary.simpleMessage("Пропустити рекламу"),
    "skipIntro": MessageLookupByLibrary.simpleMessage("Пропустити заставку"),
    "sleepTimer": MessageLookupByLibrary.simpleMessage("Таймер сну"),
    "sleepTimerLabel": MessageLookupByLibrary.simpleMessage("Таймер сну"),
    "smallerCaptions": MessageLookupByLibrary.simpleMessage("Менші субтитри"),
    "somethingWrong": MessageLookupByLibrary.simpleMessage(
      "На жаль, щось пішло не так.",
    ),
    "somethingWrongTryAgain": MessageLookupByLibrary.simpleMessage(
      "На жаль, щось пішло не так. Спробуйте ще раз.",
    ),
    "soundBlockedMessage": MessageLookupByLibrary.simpleMessage(
      "Натисніть, щоб дізнатися, як увімкнути звук.",
    ),
    "soundBlockedTitle": MessageLookupByLibrary.simpleMessage(
      "Чому немає звуку?",
    ),
    "soundHelpTitle": MessageLookupByLibrary.simpleMessage("Звук"),
    "speedTrialOver": m36,
    "startFreeTrial": MessageLookupByLibrary.simpleMessage(
      "Почати безкоштовно",
    ),
    "storeProblem": MessageLookupByLibrary.simpleMessage(
      "У магазині сталася помилка. Спробуйте ще раз трохи згодом.",
    ),
    "storeUnavailable": MessageLookupByLibrary.simpleMessage(
      "Магазин зараз недоступний. Спробуйте пізніше.",
    ),
    "subscribe": MessageLookupByLibrary.simpleMessage("Оформити підписку"),
    "success": MessageLookupByLibrary.simpleMessage("Готово"),
    "support": MessageLookupByLibrary.simpleMessage("Підтримка"),
    "supportedSites": MessageLookupByLibrary.simpleMessage(
      "Підтримувані сайти",
    ),
    "supportedSitesIntro": MessageLookupByLibrary.simpleMessage(
      "Для цих сайтів є спеціальний пульт. На будь-яких інших сайтах Zappit працює як звичайний пульт.",
    ),
    "tabMore": MessageLookupByLibrary.simpleMessage("Більше"),
    "tabRemote": MessageLookupByLibrary.simpleMessage("Пульт"),
    "tabTabs": MessageLookupByLibrary.simpleMessage("Вкладки"),
    "tapToKeepPro": MessageLookupByLibrary.simpleMessage(
      "Натисніть, щоб зберегти всі функції Pro.",
    ),
    "tellAFriend": MessageLookupByLibrary.simpleMessage("Розповісти другові"),
    "termsOfService": MessageLookupByLibrary.simpleMessage(
      "Умови використання",
    ),
    "theaterMode": MessageLookupByLibrary.simpleMessage("Режим кінотеатру"),
    "trialReminderBody": m37,
    "trialReminderChannel": MessageLookupByLibrary.simpleMessage(
      "Нагадування про безкоштовний період",
    ),
    "trialReminderChannelDescription": MessageLookupByLibrary.simpleMessage(
      "Нагадування перед кінцем безкоштовного періоду",
    ),
    "trialReminderMessage": MessageLookupByLibrary.simpleMessage(
      "Нагадати за день до кінця безкоштовного періоду, щоб оплата не стала несподіванкою?",
    ),
    "trialReminderNotificationTitle": MessageLookupByLibrary.simpleMessage(
      "Безкоштовний період Zappit Pro скоро закінчиться",
    ),
    "trialReminderTitle": MessageLookupByLibrary.simpleMessage(
      "Нагадування про пробний період",
    ),
    "trialTerms": m38,
    "trialTermsDays": m39,
    "trialTermsMonths": m40,
    "trialTermsYears": m41,
    "tryAgain": MessageLookupByLibrary.simpleMessage("Повторити"),
    "turnOffAbFirst": MessageLookupByLibrary.simpleMessage(
      "Спочатку вимкніть A-B Loop",
    ),
    "tutorial": MessageLookupByLibrary.simpleMessage("Інструкція"),
    "unavailable": MessageLookupByLibrary.simpleMessage("Недоступно"),
    "undo": MessageLookupByLibrary.simpleMessage("Скасувати"),
    "unmute": MessageLookupByLibrary.simpleMessage("Увімкнути звук"),
    "untitled": MessageLookupByLibrary.simpleMessage("Без назви"),
    "up": MessageLookupByLibrary.simpleMessage("Угору"),
    "upNext": MessageLookupByLibrary.simpleMessage("Далі"),
    "upNextCountdown": m42,
    "upgrade": MessageLookupByLibrary.simpleMessage("Перейти на Pro"),
    "videoLengthUnknown": MessageLookupByLibrary.simpleMessage(
      "Тривалість цього відео невідома",
    ),
    "videoQuality": MessageLookupByLibrary.simpleMessage("Якість відео"),
    "view": MessageLookupByLibrary.simpleMessage("Переглянути"),
    "voiceBoostDuringAd": MessageLookupByLibrary.simpleMessage(
      "Voice Boost недоступний під час реклами",
    ),
    "voiceBoostOff": MessageLookupByLibrary.simpleMessage(
      "Voice Boost вимкнено",
    ),
    "voiceBoostOn": MessageLookupByLibrary.simpleMessage(
      "Voice Boost увімкнено",
    ),
    "voiceBoostTrialLeft": m43,
    "voiceBoostTrialOver": m44,
    "voiceBoostTurnedOn": MessageLookupByLibrary.simpleMessage(
      "Voice Boost увімкнено: голоси чути краще",
    ),
    "voiceBoostUnsupported": MessageLookupByLibrary.simpleMessage(
      "Це відео не підтримує Voice Boost",
    ),
    "volumeDown": MessageLookupByLibrary.simpleMessage("Тихіше"),
    "volumeUp": MessageLookupByLibrary.simpleMessage("Гучніше"),
    "waitingForBrowser": MessageLookupByLibrary.simpleMessage(
      "Чекаємо на браузер…",
    ),
    "watchAgain": MessageLookupByLibrary.simpleMessage("Переглянути ще раз"),
    "watching": MessageLookupByLibrary.simpleMessage("Ви дивитеся"),
    "welcomeToPro": m45,
    "windowNumber": m46,
    "yearly": MessageLookupByLibrary.simpleMessage("На рік"),
    "yourBrowser": MessageLookupByLibrary.simpleMessage("браузері"),
    "youreConnected": MessageLookupByLibrary.simpleMessage("Підключено!"),
    "youreOffline": MessageLookupByLibrary.simpleMessage(
      "Немає підключення до інтернету",
    ),
    "youtubeHome": MessageLookupByLibrary.simpleMessage("Головна YouTube"),
    "ytCourses": MessageLookupByLibrary.simpleMessage("Курси"),
    "ytDownloads": MessageLookupByLibrary.simpleMessage("Завантаження"),
    "ytExplore": MessageLookupByLibrary.simpleMessage("Огляд"),
    "ytGaming": MessageLookupByLibrary.simpleMessage("Ігри"),
    "ytHistory": MessageLookupByLibrary.simpleMessage("Історія"),
    "ytHype": MessageLookupByLibrary.simpleMessage("Хайп"),
    "ytLikedVideos": MessageLookupByLibrary.simpleMessage(
      "Відео, які сподобалися",
    ),
    "ytLive": MessageLookupByLibrary.simpleMessage("Наживо"),
    "ytMemberships": MessageLookupByLibrary.simpleMessage("Спонсорство"),
    "ytMusic": MessageLookupByLibrary.simpleMessage("Музика"),
    "ytPlaylists": MessageLookupByLibrary.simpleMessage("Плейлисти"),
    "ytPodcasts": MessageLookupByLibrary.simpleMessage("Подкасти"),
    "ytShorts": MessageLookupByLibrary.simpleMessage("Shorts"),
    "ytSubscriptions": MessageLookupByLibrary.simpleMessage("Підписки"),
    "ytVideos": MessageLookupByLibrary.simpleMessage("Відео"),
    "ytWatchLater": MessageLookupByLibrary.simpleMessage("Переглянути пізніше"),
    "ytYou": MessageLookupByLibrary.simpleMessage("Ви"),
  };
}
