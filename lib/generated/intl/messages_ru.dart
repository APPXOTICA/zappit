// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
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
  String get localeName => 'ru';

  static String m0(site) => "Добавить ${site} в избранное";

  static String m1(count) => "Назад на ${count} с";

  static String m2(browser) =>
      "${browser} не ответил. Проверьте, что браузер открыт.";

  static String m3(browsers) => "Отключено от ${browsers}";

  static String m4(name) => "Канал: ${name}";

  static String m5(current, total) => "Глава ${current}/${total}";

  static String m6(browser) => "Подключено к ${browser}";

  static String m7(count) => "Вперёд на ${count} с";

  static String m8(count) => "Бесплатно: ${count} дн.";

  static String m9(count) => "Бесплатно: ${count} мес.";

  static String m10(count) => "Бесплатно: ${count} нед.";

  static String m11(count) => "Бесплатно: ${count} г.";

  static String m12(price) => "Всего ${price}/мес.";

  static String m13(count) =>
      "${Intl.plural(count, one: '${count} минута', few: '${count} минуты', many: '${count} минут', other: '${count} минуты')}";

  static String m14(count) => "${count} мин";

  static String m15(time) => "Новый код через ${time}";

  static String m16(url) =>
      "Откройте ${url} в браузере на компьютере, чтобы установить расширение Zappit.";

  static String m17(current, total) => "${current} / ${total}";

  static String m18(current, total) => "Шаг ${current} из ${total}";

  static String m19(site) => "Открыть ${site}";

  static String m20(browser) => "Открыто в ${browser}";

  static String m21(browser) => "Открываем в ${browser}…";

  static String m22(price) => "${price} / мес.";

  static String m23(price) => "${price} / год";

  static String m24(date) =>
      "Бесплатный пробный доступ к Pro действует до ${date}. Оформите подписку до его окончания, чтобы без перерыва пользоваться всеми функциями Pro.";

  static String m25(proName) =>
      "Пробный доступ к Pro закончился. Сохраните все функции Pro с ${proName}.";

  static String m26(days) =>
      "Пользуйтесь всеми функциями Zappit Pro бесплатно ${days} дн. Без карты и без автосписаний.";

  static String m27(date) => "Пробный Pro до ${date}";

  static String m28(proName) => "${proName} восстановлен";

  static String m29(site) => "Удалить ${site} из избранного";

  static String m30(site) => "${site} удалён из избранного";

  static String m31(site) => "Переместить ${site}";

  static String m32(percent) => "Выгода ${percent}%";

  static String m33(number) => "Сезон ${number}";

  static String m34(count) => "${count} с";

  static String m35(site) => "Настройки ${site}";

  static String m36(count) =>
      "Снова 1x. Без Pro эта скорость доступна ${count} с.";

  static String m37(price, date) =>
      "Бесплатный период заканчивается завтра. ${date} будет списано ${price}. Если не хотите продолжать, отмените подписку до этого дня.";

  static String m38(price) => "Сначала бесплатный период, затем ${price}/год.";

  static String m39(count, price) =>
      "Сначала бесплатно ${count} дн., затем ${price}/год.";

  static String m40(count, price) =>
      "Сначала бесплатно ${count} мес., затем ${price}/год.";

  static String m41(count, price) =>
      "Сначала бесплатно ${count} г., затем ${price}/год.";

  static String m42(count) => "Далее · через ${count} с";

  static String m43(count) => "Пробный Voice Boost, осталось ${count} с";

  static String m44(count) =>
      "Voice Boost выключен. Без Pro Voice Boost доступен ${count} с.";

  static String m45(proName) => "Добро пожаловать в ${proName}";

  static String m46(number) => "Окно ${number}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "abLoopCount": MessageLookupByLibrary.simpleMessage(
      "Число повторов A-B Loop",
    ),
    "abOffForLive": MessageLookupByLibrary.simpleMessage(
      "A-B Loop недоступен в прямых эфирах",
    ),
    "account": MessageLookupByLibrary.simpleMessage("Подключение"),
    "adBadge": MessageLookupByLibrary.simpleMessage("РЕКЛАМА"),
    "addToFavorites": m0,
    "allCategories": MessageLookupByLibrary.simpleMessage("Все категории"),
    "allSites": MessageLookupByLibrary.simpleMessage("Все сайты"),
    "alreadySubscribed": MessageLookupByLibrary.simpleMessage(
      "У вас уже есть эта подписка. Попробуйте «Восстановить покупки».",
    ),
    "back": MessageLookupByLibrary.simpleMessage("Назад"),
    "backSeconds": m1,
    "banned": MessageLookupByLibrary.simpleMessage(
      "К сожалению, доступ заблокирован.",
    ),
    "browserDidNotAnswer": m2,
    "browserNotResponding": MessageLookupByLibrary.simpleMessage(
      "Браузер не отвечает",
    ),
    "browsers": MessageLookupByLibrary.simpleMessage("Браузеры"),
    "browsersDisconnected": m3,
    "browsersDisconnectedBody": MessageLookupByLibrary.simpleMessage(
      "К нему подключился другой телефон. Чтобы снова им пользоваться, отсканируйте QR-код на том компьютере.",
    ),
    "cameraDenied": MessageLookupByLibrary.simpleMessage(
      "Разрешите доступ к камере в настройках, чтобы отсканировать код.",
    ),
    "cameraUnavailable": MessageLookupByLibrary.simpleMessage(
      "Камера сейчас недоступна.",
    ),
    "cancel": MessageLookupByLibrary.simpleMessage("Отмена"),
    "cancelAnytime": MessageLookupByLibrary.simpleMessage(
      "Отменить можно в любой момент в аккаунте магазина.",
    ),
    "cantLoadPage": MessageLookupByLibrary.simpleMessage(
      "Не удалось загрузить страницу",
    ),
    "cantOpenOnPhone": MessageLookupByLibrary.simpleMessage(
      "Это видео нельзя открыть на телефоне",
    ),
    "cantReachBrowser": MessageLookupByLibrary.simpleMessage(
      "Браузер недоступен",
    ),
    "cantSeekVideo": MessageLookupByLibrary.simpleMessage(
      "Это видео нельзя перематывать",
    ),
    "captionLanguage": MessageLookupByLibrary.simpleMessage("Язык субтитров"),
    "captions": MessageLookupByLibrary.simpleMessage("Субтитры"),
    "captionsOff": MessageLookupByLibrary.simpleMessage("Субтитры выключены"),
    "captionsOn": MessageLookupByLibrary.simpleMessage("Субтитры включены"),
    "categories": MessageLookupByLibrary.simpleMessage("Категории"),
    "categoryFavoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "Нажмите на звёздочку у категории, чтобы добавить её сюда.",
    ),
    "channelLabel": m4,
    "chapterPosition": m5,
    "chapters": MessageLookupByLibrary.simpleMessage("Главы"),
    "chaptersDuringAd": MessageLookupByLibrary.simpleMessage(
      "Во время рекламы нельзя переключать главы",
    ),
    "checkConnection": MessageLookupByLibrary.simpleMessage(
      "Проверьте подключение к интернету и попробуйте ещё раз.",
    ),
    "checkConnectionShort": MessageLookupByLibrary.simpleMessage(
      "Проверьте подключение и попробуйте ещё раз.",
    ),
    "chooseBrowser": MessageLookupByLibrary.simpleMessage("Выберите браузер"),
    "chooseNextVideo": MessageLookupByLibrary.simpleMessage(
      "Выберите следующее видео",
    ),
    "clear": MessageLookupByLibrary.simpleMessage("Очистить"),
    "close": MessageLookupByLibrary.simpleMessage("Закрыть"),
    "connectBrowser": MessageLookupByLibrary.simpleMessage(
      "Подключить браузер",
    ),
    "connectBrowserFirst": MessageLookupByLibrary.simpleMessage(
      "Сначала подключитесь к браузеру",
    ),
    "connected": MessageLookupByLibrary.simpleMessage("Подключено"),
    "connectedTo": m6,
    "contactUs": MessageLookupByLibrary.simpleMessage("Связаться с нами"),
    "contactUsKeepInfo": MessageLookupByLibrary.simpleMessage(
      "Пожалуйста, не удаляйте информацию ниже.",
    ),
    "couldNotGetVideoLink": MessageLookupByLibrary.simpleMessage(
      "Не удалось получить ссылку на видео",
    ),
    "couldNotLoadEpisodes": MessageLookupByLibrary.simpleMessage(
      "Не удалось загрузить серии",
    ),
    "couldNotLoadPlaylist": MessageLookupByLibrary.simpleMessage(
      "Не удалось загрузить плейлист",
    ),
    "couldNotOpenLink": MessageLookupByLibrary.simpleMessage(
      "Не удалось открыть ссылку",
    ),
    "couldNotReadQuality": MessageLookupByLibrary.simpleMessage(
      "Не удалось прочитать варианты качества на странице.",
    ),
    "delete": MessageLookupByLibrary.simpleMessage("Удалить"),
    "disconnect": MessageLookupByLibrary.simpleMessage("Отключить"),
    "disconnectPhone": MessageLookupByLibrary.simpleMessage(
      "Отключить этот телефон",
    ),
    "disconnectPhoneMessage": MessageLookupByLibrary.simpleMessage(
      "Этот телефон больше не будет управлять компьютером. Чтобы снова им пользоваться, отсканируйте QR-код на компьютере.",
    ),
    "down": MessageLookupByLibrary.simpleMessage("Вниз"),
    "endOfVideo": MessageLookupByLibrary.simpleMessage("Конец видео"),
    "enterValidLink": MessageLookupByLibrary.simpleMessage(
      "Введите ссылку, которая начинается с http или https",
    ),
    "episodes": MessageLookupByLibrary.simpleMessage("Серии"),
    "error": MessageLookupByLibrary.simpleMessage("Ошибка"),
    "errorButtonNotFound": MessageLookupByLibrary.simpleMessage(
      "Не удалось найти эту кнопку на странице",
    ),
    "errorDuringAd": MessageLookupByLibrary.simpleMessage(
      "Во время рекламы это недоступно",
    ),
    "errorEndBeforeStart": MessageLookupByLibrary.simpleMessage(
      "Конечная точка должна быть позже начальной",
    ),
    "errorGeneric": MessageLookupByLibrary.simpleMessage("Что-то пошло не так"),
    "errorInvalidUrl": MessageLookupByLibrary.simpleMessage(
      "Не удаётся открыть эту ссылку",
    ),
    "errorNoBrowser": MessageLookupByLibrary.simpleMessage("Браузер не выбран"),
    "errorNoMedia": MessageLookupByLibrary.simpleMessage(
      "Видео не воспроизводится",
    ),
    "errorNotChanged": MessageLookupByLibrary.simpleMessage(
      "Сайт не применил изменение",
    ),
    "errorNotSupported": MessageLookupByLibrary.simpleMessage(
      "Этот сайт так не умеет",
    ),
    "errorStartAfterEnd": MessageLookupByLibrary.simpleMessage(
      "Начальная точка должна быть раньше конечной",
    ),
    "errorTabClosed": MessageLookupByLibrary.simpleMessage(
      "Эта вкладка уже закрыта",
    ),
    "exitFullScreen": MessageLookupByLibrary.simpleMessage(
      "Выйти из полноэкранного режима",
    ),
    "extensionUpdatedReload": MessageLookupByLibrary.simpleMessage(
      "Расширение Zappit обновилось. Перезагрузите эту страницу, чтобы пользоваться всеми кнопками.",
    ),
    "faq": MessageLookupByLibrary.simpleMessage("Вопросы и ответы"),
    "favorites": MessageLookupByLibrary.simpleMessage("Избранное"),
    "favoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "Нажмите на звёздочку у сайта, чтобы добавить его сюда.",
    ),
    "forwardSeconds": m7,
    "frameByFrame": MessageLookupByLibrary.simpleMessage("Покадрово"),
    "freeTrial": MessageLookupByLibrary.simpleMessage("Бесплатный период"),
    "freeTrialDays": m8,
    "freeTrialMonths": m9,
    "freeTrialWeeks": m10,
    "freeTrialYears": m11,
    "fullPowerUnlocked": MessageLookupByLibrary.simpleMessage(
      "Все функции открыты",
    ),
    "fullScreen": MessageLookupByLibrary.simpleMessage("Во весь экран"),
    "generalSettings": MessageLookupByLibrary.simpleMessage("Общие настройки"),
    "gotIt": MessageLookupByLibrary.simpleMessage("Понятно"),
    "hideChat": MessageLookupByLibrary.simpleMessage("Скрыть чат"),
    "home": MessageLookupByLibrary.simpleMessage("Главная"),
    "justPerMonth": m12,
    "largerCaptions": MessageLookupByLibrary.simpleMessage("Субтитры крупнее"),
    "lastVideoInPlaylist": MessageLookupByLibrary.simpleMessage(
      "Это последнее видео в плейлисте",
    ),
    "learnMore": MessageLookupByLibrary.simpleMessage("Подробнее"),
    "left": MessageLookupByLibrary.simpleMessage("Влево"),
    "linkPanelHint": MessageLookupByLibrary.simpleMessage(
      "Вставьте ссылку на видео и нажмите «Отправить». Она откроется в новой вкладке браузера.",
    ),
    "liveBadge": MessageLookupByLibrary.simpleMessage("ЭФИР"),
    "liveCantRewind": MessageLookupByLibrary.simpleMessage(
      "Этот эфир нельзя перемотать назад",
    ),
    "longPressSpeed": MessageLookupByLibrary.simpleMessage(
      "Скорость при удержании",
    ),
    "loopEnd": MessageLookupByLibrary.simpleMessage("Конец повтора"),
    "loopOff": MessageLookupByLibrary.simpleMessage("Повтор выключен"),
    "loopOn": MessageLookupByLibrary.simpleMessage("Повтор включён"),
    "loopStart": MessageLookupByLibrary.simpleMessage("Начало повтора"),
    "manageSubscription": MessageLookupByLibrary.simpleMessage(
      "Управлять подпиской",
    ),
    "minutesCount": m13,
    "minutesShort": m14,
    "mixCantRepeat": MessageLookupByLibrary.simpleMessage(
      "Этот плейлист бесконечно добавляет новые видео, поэтому его нельзя повторять",
    ),
    "mixCantShuffle": MessageLookupByLibrary.simpleMessage(
      "Этот плейлист бесконечно добавляет новые видео, поэтому его нельзя перемешать",
    ),
    "monthly": MessageLookupByLibrary.simpleMessage("На месяц"),
    "multipleBrowsersMessage": MessageLookupByLibrary.simpleMessage(
      "В сети несколько браузеров. Выберите тот, которым будет управлять этот пульт.",
    ),
    "mute": MessageLookupByLibrary.simpleMessage("Выключить звук"),
    "nextChapter": MessageLookupByLibrary.simpleMessage("Следующая глава"),
    "nextEpisode": MessageLookupByLibrary.simpleMessage("Следующая серия"),
    "nextTab": MessageLookupByLibrary.simpleMessage("Следующая вкладка"),
    "nextVideo": MessageLookupByLibrary.simpleMessage("Следующее видео"),
    "noBrowser": MessageLookupByLibrary.simpleMessage("Нет браузера"),
    "noBrowserConnectedShare": MessageLookupByLibrary.simpleMessage(
      "Нет подключённого браузера. Откройте браузер с расширением Zappit и попробуйте ещё раз.",
    ),
    "noBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "1. Откройте на компьютере подключённый браузер.\n2. Если он не подключается, нажмите значок Zappit на панели инструментов браузера.",
    ),
    "noBrowserOnline": MessageLookupByLibrary.simpleMessage(
      "Нет браузеров в сети.",
    ),
    "noBrowserOnlineShort": MessageLookupByLibrary.simpleMessage(
      "Нет браузеров в сети",
    ),
    "noBrowserSelected": MessageLookupByLibrary.simpleMessage(
      "Браузер не выбран",
    ),
    "noCategoriesFound": MessageLookupByLibrary.simpleMessage(
      "Категории не найдены",
    ),
    "noLinkInShare": MessageLookupByLibrary.simpleMessage(
      "В отправленном нет ссылки",
    ),
    "noMoreTabs": MessageLookupByLibrary.simpleMessage("Больше вкладок нет"),
    "noNextEpisode": MessageLookupByLibrary.simpleMessage(
      "Следующей серии нет",
    ),
    "noOpenTabs": MessageLookupByLibrary.simpleMessage("Нет открытых вкладок"),
    "noPreviousPage": MessageLookupByLibrary.simpleMessage(
      "Нет предыдущей страницы",
    ),
    "noSiteSettings": MessageLookupByLibrary.simpleMessage(
      "Для этого сайта пока нет настроек.",
    ),
    "noSubtitles": MessageLookupByLibrary.simpleMessage(
      "У этого видео нет субтитров",
    ),
    "noThanks": MessageLookupByLibrary.simpleMessage("Не нужно"),
    "noVideosOnPage": MessageLookupByLibrary.simpleMessage(
      "На этой странице нет видео.",
    ),
    "notAvailableDuringAd": MessageLookupByLibrary.simpleMessage(
      "Недоступно во время рекламы",
    ),
    "notAvailableForLive": MessageLookupByLibrary.simpleMessage(
      "Недоступно в эфире",
    ),
    "notAvailableForLiveStreams": MessageLookupByLibrary.simpleMessage(
      "Недоступно для прямых эфиров",
    ),
    "notAvailableForPhotos": MessageLookupByLibrary.simpleMessage(
      "Недоступно для фотопубликаций",
    ),
    "notConnected": MessageLookupByLibrary.simpleMessage("Не подключено"),
    "nothingPlaying": MessageLookupByLibrary.simpleMessage("Видео не найдено"),
    "nothingPlayingMessage": MessageLookupByLibrary.simpleMessage(
      "На этом экране нет видео. Выберите другую вкладку или вставьте ссылку на видео.",
    ),
    "nothingToRestore": MessageLookupByLibrary.simpleMessage(
      "Нечего восстанавливать",
    ),
    "nothingToRestoreMessage": MessageLookupByLibrary.simpleMessage(
      "Для этого аккаунта магазина не найдено активной подписки Zappit Pro.",
    ),
    "obAnimAddExtension": MessageLookupByLibrary.simpleMessage(
      "Добавить расширение",
    ),
    "obAnimAdded": MessageLookupByLibrary.simpleMessage("Добавлено"),
    "obAnimConnectComputer": MessageLookupByLibrary.simpleMessage(
      "Подключитесь к компьютеру",
    ),
    "obAnimConnectPhone": MessageLookupByLibrary.simpleMessage(
      "Подключите телефон",
    ),
    "obAnimNewCode": m15,
    "obAnimRemoteConnected": MessageLookupByLibrary.simpleMessage(
      "Пульт подключён",
    ),
    "obAnimScanCode": MessageLookupByLibrary.simpleMessage(
      "Отсканируйте этот код в приложении Zappit на телефоне.",
    ),
    "obAnimTagline": MessageLookupByLibrary.simpleMessage("Забудьте про мышь."),
    "obAnimYourPhones": MessageLookupByLibrary.simpleMessage("Ваши телефоны"),
    "off": MessageLookupByLibrary.simpleMessage("Выкл."),
    "offline": MessageLookupByLibrary.simpleMessage("Не в сети"),
    "offlineMessage": MessageLookupByLibrary.simpleMessage(
      "Проверьте подключение к интернету. Zappit переподключится сам.",
    ),
    "onboarding0AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Нажатие кнопки воспроизведения/паузы в приложении Zappit ставит видео на ноутбуке на паузу и снова запускает его",
    ),
    "onboarding1AnimLabel": MessageLookupByLibrary.simpleMessage(
      "В браузере вводится zappit.tv/get и добавляется расширение Zappit",
    ),
    "onboarding1Body": m16,
    "onboarding1Title": MessageLookupByLibrary.simpleMessage(
      "Сначала добавьте расширение Zappit в браузер",
    ),
    "onboarding2AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Нажатие на значок Zappit в браузере, затем сканирование QR-кода телефоном",
    ),
    "onboarding2Body": MessageLookupByLibrary.simpleMessage(
      "Нажмите значок Zappit на панели инструментов браузера, затем наведите камеру на QR-код.",
    ),
    "onboarding2Title": MessageLookupByLibrary.simpleMessage(
      "Отсканируйте QR-код",
    ),
    "onboardingGetStarted": MessageLookupByLibrary.simpleMessage("Начать"),
    "onboardingIconHelp": MessageLookupByLibrary.simpleMessage(
      "Не видите значок Zappit?",
    ),
    "onboardingIconHelpLabel": MessageLookupByLibrary.simpleMessage(
      "Не видите значок Zappit? Открывает ответ в разделе «Вопросы и ответы»",
    ),
    "onboardingNext": MessageLookupByLibrary.simpleMessage("Далее"),
    "onboardingOpenQrScanner": MessageLookupByLibrary.simpleMessage(
      "Открыть QR-сканер",
    ),
    "onboardingShareLink": MessageLookupByLibrary.simpleMessage(
      "Отправить ссылку для установки",
    ),
    "onboardingStepCount": m17,
    "onboardingStepLabel": m18,
    "onboardingWelcomeBody": MessageLookupByLibrary.simpleMessage(
      "Управляйте любым видео на компьютере. Настройка займёт всего два коротких шага.",
    ),
    "onboardingWelcomeTitle": MessageLookupByLibrary.simpleMessage(
      "Теперь ваш телефон — это пульт",
    ),
    "openALink": MessageLookupByLibrary.simpleMessage("Открыть ссылку"),
    "openBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "Откройте браузер с расширением Zappit, чтобы увидеть его вкладки.",
    ),
    "openLinkInBrowser": MessageLookupByLibrary.simpleMessage(
      "Открыть ссылку в браузере",
    ),
    "openSite": m19,
    "openedIn": m20,
    "openingIn": m21,
    "pairCodeExpired": MessageLookupByLibrary.simpleMessage(
      "Срок действия кода истёк. Отсканируйте новый код на компьютере.",
    ),
    "pairCodeInvalid": MessageLookupByLibrary.simpleMessage(
      "Этот код больше недействителен. Отсканируйте новый код на компьютере.",
    ),
    "pairCodeUsed": MessageLookupByLibrary.simpleMessage(
      "Этот код уже использован. Отсканируйте новый код на компьютере.",
    ),
    "pairFailed": MessageLookupByLibrary.simpleMessage(
      "Не удалось подключиться. Проверьте подключение к интернету и попробуйте ещё раз.",
    ),
    "pairHowToInstall": MessageLookupByLibrary.simpleMessage(
      "Как установить расширение",
    ),
    "pairPhoneLimit": MessageLookupByLibrary.simpleMessage(
      "К этому компьютеру уже подключено 3 телефона. Откройте Zappit на одном из других подключённых телефонов и нажмите «Отключить этот телефон» в разделе «Ещё». Если того телефона больше нет, нажмите «Reset» в расширении Zappit на компьютере.",
    ),
    "pairTitle": MessageLookupByLibrary.simpleMessage(
      "Подключитесь к расширению браузера",
    ),
    "paste": MessageLookupByLibrary.simpleMessage("Вставить"),
    "pasteALink": MessageLookupByLibrary.simpleMessage("Вставить ссылку"),
    "pasteVideoLink": MessageLookupByLibrary.simpleMessage(
      "Вставьте ссылку на видео",
    ),
    "pause": MessageLookupByLibrary.simpleMessage("Пауза"),
    "paymentPending": MessageLookupByLibrary.simpleMessage("Оплата ожидается"),
    "paymentPendingMessage": MessageLookupByLibrary.simpleMessage(
      "Pro включится, как только магазин подтвердит оплату.",
    ),
    "phoneName": MessageLookupByLibrary.simpleMessage("Имя телефона"),
    "phoneNameEmpty": MessageLookupByLibrary.simpleMessage("Введите имя."),
    "phoneNameMessage": MessageLookupByLibrary.simpleMessage(
      "Показывается в расширении Zappit на компьютере.",
    ),
    "pickATab": MessageLookupByLibrary.simpleMessage("Выбрать вкладку"),
    "pickBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "Выберите браузер, которым будет управлять этот пульт, чтобы увидеть его вкладки.",
    ),
    "pickVideosWithPro": MessageLookupByLibrary.simpleMessage(
      "Выбирайте видео с телефона с Pro",
    ),
    "play": MessageLookupByLibrary.simpleMessage("Воспроизвести"),
    "playInApp": MessageLookupByLibrary.simpleMessage("Продолжить на телефоне"),
    "playNow": MessageLookupByLibrary.simpleMessage("Смотреть сейчас"),
    "playVideoFirst": MessageLookupByLibrary.simpleMessage(
      "Сначала включите видео в браузере",
    ),
    "playing": MessageLookupByLibrary.simpleMessage("Воспроизводится"),
    "playlist": MessageLookupByLibrary.simpleMessage("Плейлист"),
    "playlistCantRepeat": MessageLookupByLibrary.simpleMessage(
      "Этот плейлист нельзя повторять",
    ),
    "playlistCantShuffle": MessageLookupByLibrary.simpleMessage(
      "Этот плейлист нельзя перемешать",
    ),
    "previousChapter": MessageLookupByLibrary.simpleMessage("Предыдущая глава"),
    "previousTab": MessageLookupByLibrary.simpleMessage("Предыдущая вкладка"),
    "previousVideo": MessageLookupByLibrary.simpleMessage("Предыдущее видео"),
    "pricePerMonth": m22,
    "pricePerYear": m23,
    "privacyPolicy": MessageLookupByLibrary.simpleMessage(
      "Политика конфиденциальности",
    ),
    "proBannerSubtitle": MessageLookupByLibrary.simpleMessage(
      "Раскройте все возможности пульта",
    ),
    "proFeatureAbLoop": MessageLookupByLibrary.simpleMessage(
      "A-B Loop без ограничений",
    ),
    "proFeatureAllSpeeds": MessageLookupByLibrary.simpleMessage(
      "Все скорости воспроизведения",
    ),
    "proFeatureDedicatedControllers": MessageLookupByLibrary.simpleMessage(
      "Отдельные пульты для сайтов",
    ),
    "proFeatureFullLoop": MessageLookupByLibrary.simpleMessage(
      "Повтор видео без ограничений",
    ),
    "proFeatureVoiceBoost": MessageLookupByLibrary.simpleMessage(
      "Voice Boost без ограничений",
    ),
    "proPreviewActiveBanner": m24,
    "proPreviewEndedMessage": MessageLookupByLibrary.simpleMessage(
      "Спасибо, что попробовали Zappit Pro! Оформите подписку, чтобы и дальше без перерыва пользоваться всеми функциями Pro.",
    ),
    "proPreviewEndedSubtitle": m25,
    "proPreviewEndedTitle": MessageLookupByLibrary.simpleMessage(
      "Пробный доступ к Pro закончился",
    ),
    "proPreviewEndsTomorrow": MessageLookupByLibrary.simpleMessage(
      "Пробный доступ к Pro закончится завтра",
    ),
    "proPreviewStarted": m26,
    "proPreviewUntil": m27,
    "proRestored": m28,
    "proSubscriptionEnded": MessageLookupByLibrary.simpleMessage(
      "Подписка Pro закончилась",
    ),
    "proSubtitle": MessageLookupByLibrary.simpleMessage(
      "Раскройте все возможности пульта.",
    ),
    "purchaseCancelled": MessageLookupByLibrary.simpleMessage(
      "Покупка отменена",
    ),
    "purchaseCancelledMessage": MessageLookupByLibrary.simpleMessage(
      "Деньги не списаны. Можно попробовать снова в любой момент.",
    ),
    "purchaseFailed": MessageLookupByLibrary.simpleMessage(
      "Не удалось совершить покупку",
    ),
    "purchaseNotActivated": MessageLookupByLibrary.simpleMessage(
      "Покупка не активирована",
    ),
    "purchaseNotActivatedMessage": MessageLookupByLibrary.simpleMessage(
      "Оплата прошла, но Pro ещё не включился. Попробуйте «Восстановить покупки».",
    ),
    "purchasesNotAllowed": MessageLookupByLibrary.simpleMessage(
      "На этом устройстве или в этом аккаунте покупки запрещены.",
    ),
    "qualityNotChanged": MessageLookupByLibrary.simpleMessage(
      "Качество не изменилось",
    ),
    "rateZappit": MessageLookupByLibrary.simpleMessage("Оценить Zappit"),
    "reload": MessageLookupByLibrary.simpleMessage("Перезагрузить"),
    "remindMe": MessageLookupByLibrary.simpleMessage("Напомнить"),
    "remoteSettings": MessageLookupByLibrary.simpleMessage("Настройки пульта"),
    "removeFromFavorites": m29,
    "removedFromFavorites": m30,
    "reorderHint": MessageLookupByLibrary.simpleMessage(
      "Нажмите и удерживайте элемент, затем перетащите, чтобы изменить порядок",
    ),
    "reorderSite": m31,
    "repeatOff": MessageLookupByLibrary.simpleMessage("Повтор выключен"),
    "repeatOffNotice": MessageLookupByLibrary.simpleMessage("Повтор выключен"),
    "repeatOn": MessageLookupByLibrary.simpleMessage("Повтор включён"),
    "repeatingPlaylist": MessageLookupByLibrary.simpleMessage(
      "Плейлист повторяется",
    ),
    "replay": MessageLookupByLibrary.simpleMessage("Смотреть сначала"),
    "restoreFailed": MessageLookupByLibrary.simpleMessage(
      "Не удалось восстановить",
    ),
    "restorePurchases": MessageLookupByLibrary.simpleMessage(
      "Восстановить покупки",
    ),
    "right": MessageLookupByLibrary.simpleMessage("Вправо"),
    "save": MessageLookupByLibrary.simpleMessage("Сохранить"),
    "savePercent": m32,
    "searchCategories": MessageLookupByLibrary.simpleMessage("Поиск категорий"),
    "seasonNumber": m33,
    "secondsShort": m34,
    "seekInterval": MessageLookupByLibrary.simpleMessage("Шаг перемотки"),
    "select": MessageLookupByLibrary.simpleMessage("Выбрать"),
    "selectVideoInBrowser": MessageLookupByLibrary.simpleMessage(
      "Ничего не воспроизводится",
    ),
    "selectVideoInBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "Нажмите на любое видео на компьютере, чтобы начать просмотр. Пульт появится здесь.",
    ),
    "send": MessageLookupByLibrary.simpleMessage("Отправить"),
    "settings": MessageLookupByLibrary.simpleMessage("Настройки"),
    "showChat": MessageLookupByLibrary.simpleMessage("Показать чат"),
    "shuffleOff": MessageLookupByLibrary.simpleMessage(
      "Перемешивание выключено",
    ),
    "shuffleOffNotice": MessageLookupByLibrary.simpleMessage(
      "Перемешивание выключено",
    ),
    "shuffleOn": MessageLookupByLibrary.simpleMessage("Перемешивание включено"),
    "shufflingPlaylist": MessageLookupByLibrary.simpleMessage(
      "Плейлист воспроизводится в случайном порядке",
    ),
    "siteSettings": m35,
    "siteWeb": MessageLookupByLibrary.simpleMessage("Веб"),
    "skipAd": MessageLookupByLibrary.simpleMessage("Пропустить рекламу"),
    "skipIntro": MessageLookupByLibrary.simpleMessage("Пропустить заставку"),
    "sleepTimer": MessageLookupByLibrary.simpleMessage("Таймер сна"),
    "sleepTimerLabel": MessageLookupByLibrary.simpleMessage("Таймер сна"),
    "smallerCaptions": MessageLookupByLibrary.simpleMessage("Субтитры мельче"),
    "somethingWrong": MessageLookupByLibrary.simpleMessage(
      "К сожалению, что-то пошло не так.",
    ),
    "somethingWrongTryAgain": MessageLookupByLibrary.simpleMessage(
      "К сожалению, что-то пошло не так. Попробуйте ещё раз.",
    ),
    "soundBlockedMessage": MessageLookupByLibrary.simpleMessage(
      "Нажмите, чтобы узнать, как включить звук.",
    ),
    "soundBlockedTitle": MessageLookupByLibrary.simpleMessage(
      "Почему нет звука?",
    ),
    "soundHelpTitle": MessageLookupByLibrary.simpleMessage("Звук"),
    "speedTrialOver": m36,
    "startFreeTrial": MessageLookupByLibrary.simpleMessage("Начать бесплатно"),
    "storeProblem": MessageLookupByLibrary.simpleMessage(
      "В магазине произошла ошибка. Попробуйте ещё раз чуть позже.",
    ),
    "storeUnavailable": MessageLookupByLibrary.simpleMessage(
      "Магазин сейчас недоступен. Попробуйте позже.",
    ),
    "subscribe": MessageLookupByLibrary.simpleMessage("Оформить подписку"),
    "success": MessageLookupByLibrary.simpleMessage("Готово"),
    "support": MessageLookupByLibrary.simpleMessage("Поддержка"),
    "supportedSites": MessageLookupByLibrary.simpleMessage(
      "Поддерживаемые сайты",
    ),
    "supportedSitesIntro": MessageLookupByLibrary.simpleMessage(
      "Для этих сайтов есть специальный пульт. На любых других сайтах Zappit работает как обычный пульт.",
    ),
    "tabMore": MessageLookupByLibrary.simpleMessage("Ещё"),
    "tabRemote": MessageLookupByLibrary.simpleMessage("Пульт"),
    "tabTabs": MessageLookupByLibrary.simpleMessage("Вкладки"),
    "tapToKeepPro": MessageLookupByLibrary.simpleMessage(
      "Нажмите, чтобы сохранить все функции Pro.",
    ),
    "tellAFriend": MessageLookupByLibrary.simpleMessage("Рассказать другу"),
    "termsOfService": MessageLookupByLibrary.simpleMessage(
      "Условия использования",
    ),
    "theaterMode": MessageLookupByLibrary.simpleMessage("Широкоэкранный режим"),
    "trialReminderBody": m37,
    "trialReminderChannel": MessageLookupByLibrary.simpleMessage(
      "Напоминание о бесплатном периоде",
    ),
    "trialReminderChannelDescription": MessageLookupByLibrary.simpleMessage(
      "Напоминание перед концом бесплатного периода",
    ),
    "trialReminderMessage": MessageLookupByLibrary.simpleMessage(
      "Напомнить за день до конца бесплатного периода, чтобы оплата не стала неожиданностью?",
    ),
    "trialReminderNotificationTitle": MessageLookupByLibrary.simpleMessage(
      "Бесплатный период Zappit Pro скоро закончится",
    ),
    "trialReminderTitle": MessageLookupByLibrary.simpleMessage(
      "Напоминание о пробном периоде",
    ),
    "trialTerms": m38,
    "trialTermsDays": m39,
    "trialTermsMonths": m40,
    "trialTermsYears": m41,
    "tryAgain": MessageLookupByLibrary.simpleMessage("Повторить"),
    "turnOffAbFirst": MessageLookupByLibrary.simpleMessage(
      "Сначала выключите A-B Loop",
    ),
    "tutorial": MessageLookupByLibrary.simpleMessage("Инструкция"),
    "unavailable": MessageLookupByLibrary.simpleMessage("Недоступно"),
    "undo": MessageLookupByLibrary.simpleMessage("Отменить"),
    "unmute": MessageLookupByLibrary.simpleMessage("Включить звук"),
    "untitled": MessageLookupByLibrary.simpleMessage("Без названия"),
    "up": MessageLookupByLibrary.simpleMessage("Вверх"),
    "upNext": MessageLookupByLibrary.simpleMessage("Далее"),
    "upNextCountdown": m42,
    "upgrade": MessageLookupByLibrary.simpleMessage("Перейти на Pro"),
    "videoLengthUnknown": MessageLookupByLibrary.simpleMessage(
      "Длительность этого видео неизвестна",
    ),
    "videoQuality": MessageLookupByLibrary.simpleMessage("Качество видео"),
    "view": MessageLookupByLibrary.simpleMessage("Открыть"),
    "voiceBoostDuringAd": MessageLookupByLibrary.simpleMessage(
      "Voice Boost недоступен во время рекламы",
    ),
    "voiceBoostOff": MessageLookupByLibrary.simpleMessage(
      "Voice Boost выключен",
    ),
    "voiceBoostOn": MessageLookupByLibrary.simpleMessage("Voice Boost включён"),
    "voiceBoostTrialLeft": m43,
    "voiceBoostTrialOver": m44,
    "voiceBoostTurnedOn": MessageLookupByLibrary.simpleMessage(
      "Voice Boost включён: голоса слышно лучше",
    ),
    "voiceBoostUnsupported": MessageLookupByLibrary.simpleMessage(
      "Это видео не поддерживает Voice Boost",
    ),
    "volumeDown": MessageLookupByLibrary.simpleMessage("Тише"),
    "volumeUp": MessageLookupByLibrary.simpleMessage("Громче"),
    "waitingForBrowser": MessageLookupByLibrary.simpleMessage("Ждём браузер…"),
    "watchAgain": MessageLookupByLibrary.simpleMessage("Посмотреть ещё раз"),
    "watching": MessageLookupByLibrary.simpleMessage("Смотрите сейчас"),
    "welcomeToPro": m45,
    "windowNumber": m46,
    "yearly": MessageLookupByLibrary.simpleMessage("На год"),
    "yourBrowser": MessageLookupByLibrary.simpleMessage("браузере"),
    "youreConnected": MessageLookupByLibrary.simpleMessage("Подключено!"),
    "youreOffline": MessageLookupByLibrary.simpleMessage(
      "Нет подключения к интернету",
    ),
    "youtubeHome": MessageLookupByLibrary.simpleMessage("Главная YouTube"),
    "ytCourses": MessageLookupByLibrary.simpleMessage("Курсы"),
    "ytDownloads": MessageLookupByLibrary.simpleMessage("Скачанные"),
    "ytExplore": MessageLookupByLibrary.simpleMessage("Навигатор"),
    "ytGaming": MessageLookupByLibrary.simpleMessage("Видеоигры"),
    "ytHistory": MessageLookupByLibrary.simpleMessage("История"),
    "ytHype": MessageLookupByLibrary.simpleMessage("Хайп"),
    "ytLikedVideos": MessageLookupByLibrary.simpleMessage("Понравившиеся"),
    "ytLive": MessageLookupByLibrary.simpleMessage("Трансляции"),
    "ytMemberships": MessageLookupByLibrary.simpleMessage("Спонсорство"),
    "ytMusic": MessageLookupByLibrary.simpleMessage("Музыка"),
    "ytPlaylists": MessageLookupByLibrary.simpleMessage("Плейлисты"),
    "ytPodcasts": MessageLookupByLibrary.simpleMessage("Подкасты"),
    "ytShorts": MessageLookupByLibrary.simpleMessage("Shorts"),
    "ytSubscriptions": MessageLookupByLibrary.simpleMessage("Подписки"),
    "ytVideos": MessageLookupByLibrary.simpleMessage("Видео"),
    "ytWatchLater": MessageLookupByLibrary.simpleMessage("Смотреть позже"),
    "ytYou": MessageLookupByLibrary.simpleMessage("Вы"),
  };
}
