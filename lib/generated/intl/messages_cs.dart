// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a cs locale. All the
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
  String get localeName => 'cs';

  static String m0(site) => "Přidat ${site} do Oblíbených";

  static String m1(count) => "O ${count} s zpět";

  static String m2(browser) =>
      "${browser} neodpověděl. Zkontrolujte, že je prohlížeč otevřený.";

  static String m3(browsers) => "Odpojeno od: ${browsers}";

  static String m4(name) => "Kanál: ${name}";

  static String m5(current, total) => "Kapitola ${current}/${total}";

  static String m6(browser) => "Připojeno k ${browser}";

  static String m7(count) => "O ${count} s vpřed";

  static String m8(count) => "Zdarma: ${count} dní";

  static String m9(count) => "Zdarma: ${count} měs.";

  static String m10(count) => "Zdarma: ${count} týd.";

  static String m11(count) => "Zdarma: ${count} r.";

  static String m12(price) => "Jen ${price}/měs.";

  static String m13(count) =>
      "${Intl.plural(count, one: '1 minuta', few: '${count} minuty', many: '${count} minuty', other: '${count} minut')}";

  static String m14(count) => "${count} min";

  static String m15(time) => "Nový kód za ${time}";

  static String m16(url) =>
      "Otevřete ${url} v prohlížeči v počítači a nainstalujte rozšíření Zappit.";

  static String m17(current, total) => "${current} / ${total}";

  static String m18(current, total) => "Krok ${current} z ${total}";

  static String m19(site) => "Otevřít ${site}";

  static String m20(browser) => "Otevřeno v ${browser}";

  static String m21(browser) => "Otevírá se v ${browser}…";

  static String m22(price) => "${price} / měs.";

  static String m23(price) => "${price} / rok";

  static String m24(date) =>
      "Vaše bezplatná ukázka Pro platí do ${date}. Předplaťte si Pro před jejím koncem a všechny funkce Pro vám zůstanou bez přerušení.";

  static String m25(proName) =>
      "Vaše ukázka Pro skončila. Ponechte si všechny funkce Pro s ${proName}.";

  static String m26(days) =>
      "Užívejte si všechny funkce Zappit Pro ${days} dní zdarma. Bez karty a bez automatických plateb.";

  static String m27(date) => "Ukázka Pro do ${date}";

  static String m28(proName) => "${proName} obnoveno";

  static String m29(site) => "Odebrat ${site} z Oblíbených";

  static String m30(site) => "${site} odebráno z Oblíbených";

  static String m31(site) => "Přesunout ${site}";

  static String m32(percent) => "Ušetříte ${percent} %";

  static String m33(number) => "Série ${number}";

  static String m34(count) => "${count} s";

  static String m35(site) => "Nastavení ${site}";

  static String m36(count) =>
      "Zpět na 1x. Bez Pro můžete tuto rychlost používat ${count} s.";

  static String m37(price, date) =>
      "Vaše zkušební verze zdarma zítra končí. ${date} vám bude účtováno ${price}. Pokud nechcete pokračovat, zrušte předplatné předtím.";

  static String m38(price) =>
      "Nejdřív zkušební verze zdarma, pak ${price}/rok.";

  static String m39(count, price) =>
      "Nejdřív ${count} dní zdarma, pak ${price}/rok.";

  static String m40(count, price) =>
      "Nejdřív ${count} měs. zdarma, pak ${price}/rok.";

  static String m41(count, price) =>
      "Nejdřív ${count} r. zdarma, pak ${price}/rok.";

  static String m42(count) => "Další · za ${count} s";

  static String m43(count) => "Zkouška Voice Boost, zbývá ${count} s";

  static String m44(count) =>
      "Voice Boost je vypnutý. Bez Pro můžete Voice Boost používat ${count} s.";

  static String m45(proName) => "Vítejte v ${proName}";

  static String m46(number) => "Okno ${number}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "abLoopCount": MessageLookupByLibrary.simpleMessage(
      "Počet opakování A-B Loop",
    ),
    "abOffForLive": MessageLookupByLibrary.simpleMessage(
      "A-B Loop je u živého vysílání vypnutý",
    ),
    "account": MessageLookupByLibrary.simpleMessage("Připojení"),
    "adBadge": MessageLookupByLibrary.simpleMessage("REKLAMA"),
    "addToFavorites": m0,
    "allCategories": MessageLookupByLibrary.simpleMessage("Všechny kategorie"),
    "allSites": MessageLookupByLibrary.simpleMessage("Všechny weby"),
    "alreadySubscribed": MessageLookupByLibrary.simpleMessage(
      "Toto předplatné už máte. Zkuste Obnovit nákupy.",
    ),
    "back": MessageLookupByLibrary.simpleMessage("Zpět"),
    "backSeconds": m1,
    "banned": MessageLookupByLibrary.simpleMessage(
      "Bohužel byl přístup zablokován.",
    ),
    "browserDidNotAnswer": m2,
    "browserNotResponding": MessageLookupByLibrary.simpleMessage(
      "Prohlížeč neodpovídá",
    ),
    "browsers": MessageLookupByLibrary.simpleMessage("Prohlížeče"),
    "browsersDisconnected": m3,
    "browsersDisconnectedBody": MessageLookupByLibrary.simpleMessage(
      "Připojil se k němu jiný telefon. Chcete-li ho znovu používat, naskenujte QR kód na tom počítači.",
    ),
    "cameraDenied": MessageLookupByLibrary.simpleMessage(
      "Pro naskenování kódu povolte v Nastavení přístup k fotoaparátu.",
    ),
    "cameraUnavailable": MessageLookupByLibrary.simpleMessage(
      "Fotoaparát teď není k dispozici.",
    ),
    "cancel": MessageLookupByLibrary.simpleMessage("Zrušit"),
    "cancelAnytime": MessageLookupByLibrary.simpleMessage(
      "Kdykoli zrušíte v účtu obchodu.",
    ),
    "cantLoadPage": MessageLookupByLibrary.simpleMessage(
      "Stránku nejde načíst",
    ),
    "cantOpenOnPhone": MessageLookupByLibrary.simpleMessage(
      "Toto video nejde otevřít v telefonu",
    ),
    "cantReachBrowser": MessageLookupByLibrary.simpleMessage(
      "Prohlížeč není dostupný",
    ),
    "cantSeekVideo": MessageLookupByLibrary.simpleMessage(
      "V tomto videu nejde přetáčet",
    ),
    "captionLanguage": MessageLookupByLibrary.simpleMessage("Jazyk titulků"),
    "captions": MessageLookupByLibrary.simpleMessage("Titulky"),
    "captionsOff": MessageLookupByLibrary.simpleMessage("Titulky vypnuty"),
    "captionsOn": MessageLookupByLibrary.simpleMessage("Titulky zapnuty"),
    "categories": MessageLookupByLibrary.simpleMessage("Kategorie"),
    "categoryFavoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "Klepnutím na hvězdičku u kategorie ji sem přidáte.",
    ),
    "channelLabel": m4,
    "chapterPosition": m5,
    "chapters": MessageLookupByLibrary.simpleMessage("Kapitoly"),
    "chaptersDuringAd": MessageLookupByLibrary.simpleMessage(
      "Během reklamy nejde přeskakovat kapitoly",
    ),
    "checkConnection": MessageLookupByLibrary.simpleMessage(
      "Zkontrolujte připojení k internetu a zkuste to znovu.",
    ),
    "checkConnectionShort": MessageLookupByLibrary.simpleMessage(
      "Zkontrolujte připojení a zkuste to znovu.",
    ),
    "chooseBrowser": MessageLookupByLibrary.simpleMessage("Vyberte prohlížeč"),
    "chooseNextVideo": MessageLookupByLibrary.simpleMessage(
      "Vyberte další video",
    ),
    "clear": MessageLookupByLibrary.simpleMessage("Vymazat"),
    "close": MessageLookupByLibrary.simpleMessage("Zavřít"),
    "connectBrowser": MessageLookupByLibrary.simpleMessage(
      "Připojit prohlížeč",
    ),
    "connectBrowserFirst": MessageLookupByLibrary.simpleMessage(
      "Nejdřív se připojte k prohlížeči",
    ),
    "connected": MessageLookupByLibrary.simpleMessage("Připojeno"),
    "connectedTo": m6,
    "contactUs": MessageLookupByLibrary.simpleMessage("Kontaktujte nás"),
    "contactUsKeepInfo": MessageLookupByLibrary.simpleMessage(
      "Informace níže prosím nemažte.",
    ),
    "couldNotGetVideoLink": MessageLookupByLibrary.simpleMessage(
      "Odkaz na video se nepodařilo získat",
    ),
    "couldNotLoadEpisodes": MessageLookupByLibrary.simpleMessage(
      "Díly se nepodařilo načíst",
    ),
    "couldNotLoadPlaylist": MessageLookupByLibrary.simpleMessage(
      "Playlist se nepodařilo načíst",
    ),
    "couldNotOpenLink": MessageLookupByLibrary.simpleMessage(
      "Odkaz se nepodařilo otevřít",
    ),
    "couldNotReadQuality": MessageLookupByLibrary.simpleMessage(
      "Možnosti kvality se ze stránky nepodařilo načíst.",
    ),
    "delete": MessageLookupByLibrary.simpleMessage("Smazat"),
    "disconnect": MessageLookupByLibrary.simpleMessage("Odpojit"),
    "disconnectPhone": MessageLookupByLibrary.simpleMessage(
      "Odpojit tento telefon",
    ),
    "disconnectPhoneMessage": MessageLookupByLibrary.simpleMessage(
      "Tento telefon přestane ovládat váš počítač. Chcete-li ho znovu používat, naskenujte QR kód v počítači.",
    ),
    "down": MessageLookupByLibrary.simpleMessage("Dolů"),
    "endOfVideo": MessageLookupByLibrary.simpleMessage("Konec videa"),
    "enterValidLink": MessageLookupByLibrary.simpleMessage(
      "Zadejte odkaz začínající http nebo https",
    ),
    "episodes": MessageLookupByLibrary.simpleMessage("Díly"),
    "error": MessageLookupByLibrary.simpleMessage("Chyba"),
    "errorButtonNotFound": MessageLookupByLibrary.simpleMessage(
      "Toto tlačítko se na stránce nepodařilo najít",
    ),
    "errorDuringAd": MessageLookupByLibrary.simpleMessage(
      "Během reklamy to nejde",
    ),
    "errorEndBeforeStart": MessageLookupByLibrary.simpleMessage(
      "Konec musí být za začátkem",
    ),
    "errorGeneric": MessageLookupByLibrary.simpleMessage("Něco se pokazilo"),
    "errorInvalidUrl": MessageLookupByLibrary.simpleMessage(
      "Tento odkaz nejde otevřít",
    ),
    "errorNoBrowser": MessageLookupByLibrary.simpleMessage(
      "Není vybraný žádný prohlížeč",
    ),
    "errorNoMedia": MessageLookupByLibrary.simpleMessage(
      "Nepřehrává se žádné video",
    ),
    "errorNotChanged": MessageLookupByLibrary.simpleMessage(
      "Web změnu neprovedl",
    ),
    "errorNotSupported": MessageLookupByLibrary.simpleMessage(
      "Tento web to nepodporuje",
    ),
    "errorStartAfterEnd": MessageLookupByLibrary.simpleMessage(
      "Začátek musí být před koncem",
    ),
    "errorTabClosed": MessageLookupByLibrary.simpleMessage(
      "Tato karta je už zavřená",
    ),
    "exitFullScreen": MessageLookupByLibrary.simpleMessage(
      "Ukončit celou obrazovku",
    ),
    "extensionUpdatedReload": MessageLookupByLibrary.simpleMessage(
      "Rozšíření Zappit bylo aktualizováno. Načtěte tuto stránku znovu, abyste mohli dál používat všechna ovládání.",
    ),
    "faq": MessageLookupByLibrary.simpleMessage("Časté dotazy"),
    "favorites": MessageLookupByLibrary.simpleMessage("Oblíbené"),
    "favoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "Klepnutím na hvězdičku u webu ho sem přidáte.",
    ),
    "forwardSeconds": m7,
    "frameByFrame": MessageLookupByLibrary.simpleMessage("Snímek po snímku"),
    "freeTrial": MessageLookupByLibrary.simpleMessage("Zkušební verze zdarma"),
    "freeTrialDays": m8,
    "freeTrialMonths": m9,
    "freeTrialWeeks": m10,
    "freeTrialYears": m11,
    "fullPowerUnlocked": MessageLookupByLibrary.simpleMessage(
      "Všechny funkce odemčeny",
    ),
    "fullScreen": MessageLookupByLibrary.simpleMessage("Celá obrazovka"),
    "generalSettings": MessageLookupByLibrary.simpleMessage("Obecná nastavení"),
    "gotIt": MessageLookupByLibrary.simpleMessage("Rozumím"),
    "hideChat": MessageLookupByLibrary.simpleMessage("Skrýt chat"),
    "home": MessageLookupByLibrary.simpleMessage("Domů"),
    "justPerMonth": m12,
    "largerCaptions": MessageLookupByLibrary.simpleMessage("Větší titulky"),
    "lastVideoInPlaylist": MessageLookupByLibrary.simpleMessage(
      "Toto je poslední video v playlistu",
    ),
    "learnMore": MessageLookupByLibrary.simpleMessage("Více informací"),
    "left": MessageLookupByLibrary.simpleMessage("Doleva"),
    "linkPanelHint": MessageLookupByLibrary.simpleMessage(
      "Vložte odkaz na video a klepněte na Odeslat. Otevře se v nové kartě prohlížeče.",
    ),
    "liveBadge": MessageLookupByLibrary.simpleMessage("ŽIVĚ"),
    "liveCantRewind": MessageLookupByLibrary.simpleMessage(
      "Toto živé vysílání nejde přetočit zpět",
    ),
    "longPressSpeed": MessageLookupByLibrary.simpleMessage(
      "Rychlost při podržení",
    ),
    "loopEnd": MessageLookupByLibrary.simpleMessage("Konec smyčky"),
    "loopOff": MessageLookupByLibrary.simpleMessage("Opakování vypnuto"),
    "loopOn": MessageLookupByLibrary.simpleMessage("Opakování zapnuto"),
    "loopStart": MessageLookupByLibrary.simpleMessage("Začátek smyčky"),
    "manageSubscription": MessageLookupByLibrary.simpleMessage(
      "Spravovat předplatné",
    ),
    "minutesCount": m13,
    "minutesShort": m14,
    "mixCantRepeat": MessageLookupByLibrary.simpleMessage(
      "Tento playlist donekonečna přidává nová videa, takže ho nejde opakovat",
    ),
    "mixCantShuffle": MessageLookupByLibrary.simpleMessage(
      "Tento playlist donekonečna přidává nová videa, takže ho nejde přehrávat náhodně",
    ),
    "monthly": MessageLookupByLibrary.simpleMessage("Měsíčně"),
    "multipleBrowsersMessage": MessageLookupByLibrary.simpleMessage(
      "Online je několik prohlížečů. Vyberte ten, který má tento ovladač ovládat.",
    ),
    "mute": MessageLookupByLibrary.simpleMessage("Ztlumit"),
    "nextChapter": MessageLookupByLibrary.simpleMessage("Další kapitola"),
    "nextEpisode": MessageLookupByLibrary.simpleMessage("Další díl"),
    "nextTab": MessageLookupByLibrary.simpleMessage("Další karta"),
    "nextVideo": MessageLookupByLibrary.simpleMessage("Další video"),
    "noBrowser": MessageLookupByLibrary.simpleMessage("Žádný prohlížeč"),
    "noBrowserConnectedShare": MessageLookupByLibrary.simpleMessage(
      "Není připojený žádný prohlížeč. Otevřete prohlížeč s rozšířením Zappit a zkuste to znovu.",
    ),
    "noBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "1. Otevřete v počítači připojený prohlížeč.\n2. Pokud se nepřipojí, klikněte na ikonu Zappit na panelu nástrojů prohlížeče.",
    ),
    "noBrowserOnline": MessageLookupByLibrary.simpleMessage(
      "Žádný prohlížeč není online.",
    ),
    "noBrowserOnlineShort": MessageLookupByLibrary.simpleMessage(
      "Žádný prohlížeč online",
    ),
    "noBrowserSelected": MessageLookupByLibrary.simpleMessage(
      "Není vybraný prohlížeč",
    ),
    "noCategoriesFound": MessageLookupByLibrary.simpleMessage(
      "Žádné kategorie nenalezeny",
    ),
    "noLinkInShare": MessageLookupByLibrary.simpleMessage(
      "Ve sdíleném obsahu není žádný odkaz",
    ),
    "noMoreTabs": MessageLookupByLibrary.simpleMessage("Žádné další karty"),
    "noNextEpisode": MessageLookupByLibrary.simpleMessage("Další díl není"),
    "noOpenTabs": MessageLookupByLibrary.simpleMessage("Žádné otevřené karty"),
    "noPreviousPage": MessageLookupByLibrary.simpleMessage(
      "Není kam se vrátit",
    ),
    "noSiteSettings": MessageLookupByLibrary.simpleMessage(
      "Tento web zatím nemá nastavení.",
    ),
    "noSubtitles": MessageLookupByLibrary.simpleMessage(
      "Toto video nemá titulky",
    ),
    "noThanks": MessageLookupByLibrary.simpleMessage("Ne, díky"),
    "noVideosOnPage": MessageLookupByLibrary.simpleMessage(
      "Na této stránce nejsou žádná videa.",
    ),
    "notAvailableDuringAd": MessageLookupByLibrary.simpleMessage(
      "Během reklamy nedostupné",
    ),
    "notAvailableForLive": MessageLookupByLibrary.simpleMessage(
      "Není pro živé vysílání",
    ),
    "notAvailableForLiveStreams": MessageLookupByLibrary.simpleMessage(
      "Nedostupné pro živé vysílání",
    ),
    "notAvailableForPhotos": MessageLookupByLibrary.simpleMessage(
      "Nedostupné u příspěvků s fotkami",
    ),
    "notConnected": MessageLookupByLibrary.simpleMessage("Nepřipojeno"),
    "nothingPlaying": MessageLookupByLibrary.simpleMessage(
      "Žádné video nenalezeno",
    ),
    "nothingPlayingMessage": MessageLookupByLibrary.simpleMessage(
      "Na této kartě není žádné video. Vyberte jinou kartu nebo vložte odkaz na video.",
    ),
    "nothingToRestore": MessageLookupByLibrary.simpleMessage("Není co obnovit"),
    "nothingToRestoreMessage": MessageLookupByLibrary.simpleMessage(
      "Pro tento účet obchodu nebylo nalezeno žádné aktivní předplatné Zappit Pro.",
    ),
    "obAnimAddExtension": MessageLookupByLibrary.simpleMessage(
      "Přidat rozšíření",
    ),
    "obAnimAdded": MessageLookupByLibrary.simpleMessage("Přidáno"),
    "obAnimConnectComputer": MessageLookupByLibrary.simpleMessage(
      "Připojte se k počítači",
    ),
    "obAnimConnectPhone": MessageLookupByLibrary.simpleMessage(
      "Připojte telefon",
    ),
    "obAnimNewCode": m15,
    "obAnimRemoteConnected": MessageLookupByLibrary.simpleMessage(
      "Ovladač připojen",
    ),
    "obAnimScanCode": MessageLookupByLibrary.simpleMessage(
      "Naskenujte tento kód aplikací Zappit v telefonu.",
    ),
    "obAnimTagline": MessageLookupByLibrary.simpleMessage("Sbohem, myši."),
    "obAnimYourPhones": MessageLookupByLibrary.simpleMessage("Vaše telefony"),
    "off": MessageLookupByLibrary.simpleMessage("Vypnuto"),
    "offline": MessageLookupByLibrary.simpleMessage("Offline"),
    "offlineMessage": MessageLookupByLibrary.simpleMessage(
      "Zkontrolujte připojení k internetu. Zappit se znovu připojí sám.",
    ),
    "onboarding0AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Klepnutí na přehrát/pozastavit v aplikaci Zappit pozastaví a znovu spustí video v notebooku",
    ),
    "onboarding1AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Zadání zappit.tv/get do prohlížeče a přidání rozšíření Zappit",
    ),
    "onboarding1Body": m16,
    "onboarding1Title": MessageLookupByLibrary.simpleMessage(
      "Nejdřív přidejte do prohlížeče rozšíření Zappit",
    ),
    "onboarding2AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Kliknutí na ikonu Zappit v prohlížeči a naskenování QR kódu telefonem",
    ),
    "onboarding2Body": MessageLookupByLibrary.simpleMessage(
      "Klikněte na ikonu Zappit na panelu nástrojů prohlížeče a namiřte fotoaparát na QR kód.",
    ),
    "onboarding2Title": MessageLookupByLibrary.simpleMessage(
      "Naskenujte QR kód",
    ),
    "onboardingGetStarted": MessageLookupByLibrary.simpleMessage("Začít"),
    "onboardingIconHelp": MessageLookupByLibrary.simpleMessage(
      "Nevidíte ikonu Zappit?",
    ),
    "onboardingIconHelpLabel": MessageLookupByLibrary.simpleMessage(
      "Nevidíte ikonu Zappit? Otevře odpověď v častých dotazech",
    ),
    "onboardingNext": MessageLookupByLibrary.simpleMessage("Další"),
    "onboardingOpenQrScanner": MessageLookupByLibrary.simpleMessage(
      "Otevřít čtečku QR kódů",
    ),
    "onboardingShareLink": MessageLookupByLibrary.simpleMessage(
      "Poslat odkaz na instalaci",
    ),
    "onboardingStepCount": m17,
    "onboardingStepLabel": m18,
    "onboardingWelcomeBody": MessageLookupByLibrary.simpleMessage(
      "Ovládejte jakékoli video v počítači. Nastavení zabere jen dva rychlé kroky.",
    ),
    "onboardingWelcomeTitle": MessageLookupByLibrary.simpleMessage(
      "Z telefonu je teď ovladač",
    ),
    "openALink": MessageLookupByLibrary.simpleMessage("Otevřít odkaz"),
    "openBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "Otevřete prohlížeč s rozšířením Zappit a uvidíte jeho karty.",
    ),
    "openLinkInBrowser": MessageLookupByLibrary.simpleMessage(
      "Otevřít odkaz v prohlížeči",
    ),
    "openSite": m19,
    "openedIn": m20,
    "openingIn": m21,
    "pairCodeExpired": MessageLookupByLibrary.simpleMessage(
      "Platnost kódu vypršela. Naskenujte nový kód v počítači.",
    ),
    "pairCodeInvalid": MessageLookupByLibrary.simpleMessage(
      "Tento kód už neplatí. Naskenujte nový kód v počítači.",
    ),
    "pairCodeUsed": MessageLookupByLibrary.simpleMessage(
      "Tento kód už byl použit. Naskenujte nový kód v počítači.",
    ),
    "pairFailed": MessageLookupByLibrary.simpleMessage(
      "Připojení se nezdařilo. Zkontrolujte připojení k internetu a zkuste to znovu.",
    ),
    "pairHowToInstall": MessageLookupByLibrary.simpleMessage(
      "Jak nainstalovat rozšíření",
    ),
    "pairPhoneLimit": MessageLookupByLibrary.simpleMessage(
      "K tomuto počítači jsou už připojené 3 telefony. Otevřete Zappit na jednom z dalších připojených telefonů a v sekci „Více“ klepněte na „Odpojit tento telefon“. Pokud ten telefon už nemáte, použijte „Reset“ v rozšíření Zappit v počítači.",
    ),
    "pairTitle": MessageLookupByLibrary.simpleMessage(
      "Připojte se k rozšíření prohlížeče",
    ),
    "paste": MessageLookupByLibrary.simpleMessage("Vložit"),
    "pasteALink": MessageLookupByLibrary.simpleMessage("Vložit odkaz"),
    "pasteVideoLink": MessageLookupByLibrary.simpleMessage(
      "Vložte odkaz na video",
    ),
    "pause": MessageLookupByLibrary.simpleMessage("Pozastavit"),
    "paymentPending": MessageLookupByLibrary.simpleMessage(
      "Platba čeká na potvrzení",
    ),
    "paymentPendingMessage": MessageLookupByLibrary.simpleMessage(
      "Pro se zapne, jakmile obchod potvrdí platbu.",
    ),
    "phoneName": MessageLookupByLibrary.simpleMessage("Název telefonu"),
    "phoneNameEmpty": MessageLookupByLibrary.simpleMessage("Zadejte název."),
    "phoneNameMessage": MessageLookupByLibrary.simpleMessage(
      "Zobrazuje se v rozšíření Zappit v počítači.",
    ),
    "pickATab": MessageLookupByLibrary.simpleMessage("Vybrat kartu"),
    "pickBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "Vyberte prohlížeč, který má tento ovladač ovládat, a uvidíte jeho karty.",
    ),
    "pickVideosWithPro": MessageLookupByLibrary.simpleMessage(
      "S Pro vybírejte videa z telefonu",
    ),
    "play": MessageLookupByLibrary.simpleMessage("Přehrát"),
    "playInApp": MessageLookupByLibrary.simpleMessage("Pokračovat v telefonu"),
    "playNow": MessageLookupByLibrary.simpleMessage("Přehrát hned"),
    "playVideoFirst": MessageLookupByLibrary.simpleMessage(
      "Nejdřív pusťte video v prohlížeči",
    ),
    "playing": MessageLookupByLibrary.simpleMessage("Přehrává se"),
    "playlist": MessageLookupByLibrary.simpleMessage("Playlist"),
    "playlistCantRepeat": MessageLookupByLibrary.simpleMessage(
      "Tento playlist nejde opakovat",
    ),
    "playlistCantShuffle": MessageLookupByLibrary.simpleMessage(
      "Tento playlist nejde přehrávat náhodně",
    ),
    "previousChapter": MessageLookupByLibrary.simpleMessage(
      "Předchozí kapitola",
    ),
    "previousTab": MessageLookupByLibrary.simpleMessage("Předchozí karta"),
    "previousVideo": MessageLookupByLibrary.simpleMessage("Předchozí video"),
    "pricePerMonth": m22,
    "pricePerYear": m23,
    "privacyPolicy": MessageLookupByLibrary.simpleMessage(
      "Zásady ochrany soukromí",
    ),
    "proBannerSubtitle": MessageLookupByLibrary.simpleMessage(
      "Využijte svůj ovladač naplno",
    ),
    "proFeatureAbLoop": MessageLookupByLibrary.simpleMessage(
      "Neomezený A-B Loop",
    ),
    "proFeatureAllSpeeds": MessageLookupByLibrary.simpleMessage(
      "Všechny rychlosti přehrávání",
    ),
    "proFeatureDedicatedControllers": MessageLookupByLibrary.simpleMessage(
      "Odemkněte ovladače na míru webům",
    ),
    "proFeatureFullLoop": MessageLookupByLibrary.simpleMessage(
      "Neomezené opakování celého videa",
    ),
    "proFeatureVoiceBoost": MessageLookupByLibrary.simpleMessage(
      "Neomezený Voice Boost",
    ),
    "proPreviewActiveBanner": m24,
    "proPreviewEndedMessage": MessageLookupByLibrary.simpleMessage(
      "Děkujeme, že jste vyzkoušeli Zappit Pro! Předplaťte si ho a všechny funkce Pro vám zůstanou bez přerušení.",
    ),
    "proPreviewEndedSubtitle": m25,
    "proPreviewEndedTitle": MessageLookupByLibrary.simpleMessage(
      "Vaše ukázka Pro skončila",
    ),
    "proPreviewEndsTomorrow": MessageLookupByLibrary.simpleMessage(
      "Ukázka Pro zítra končí",
    ),
    "proPreviewStarted": m26,
    "proPreviewUntil": m27,
    "proRestored": m28,
    "proSubscriptionEnded": MessageLookupByLibrary.simpleMessage(
      "Vaše předplatné Pro skončilo",
    ),
    "proSubtitle": MessageLookupByLibrary.simpleMessage(
      "Využijte svůj ovladač naplno.",
    ),
    "purchaseCancelled": MessageLookupByLibrary.simpleMessage("Nákup zrušen"),
    "purchaseCancelledMessage": MessageLookupByLibrary.simpleMessage(
      "Nic vám nebylo účtováno. Můžete to kdykoli zkusit znovu.",
    ),
    "purchaseFailed": MessageLookupByLibrary.simpleMessage("Nákup se nezdařil"),
    "purchaseNotActivated": MessageLookupByLibrary.simpleMessage(
      "Nákup není aktivní",
    ),
    "purchaseNotActivatedMessage": MessageLookupByLibrary.simpleMessage(
      "Platba proběhla, ale Pro ještě není aktivní. Zkuste Obnovit nákupy.",
    ),
    "purchasesNotAllowed": MessageLookupByLibrary.simpleMessage(
      "Na tomto zařízení nebo účtu nejsou nákupy povolené.",
    ),
    "qualityNotChanged": MessageLookupByLibrary.simpleMessage(
      "Kvalita se nezměnila",
    ),
    "rateZappit": MessageLookupByLibrary.simpleMessage("Ohodnotit Zappit"),
    "reload": MessageLookupByLibrary.simpleMessage("Načíst znovu"),
    "remindMe": MessageLookupByLibrary.simpleMessage("Připomenout"),
    "remoteSettings": MessageLookupByLibrary.simpleMessage(
      "Nastavení ovladače",
    ),
    "removeFromFavorites": m29,
    "removedFromFavorites": m30,
    "reorderHint": MessageLookupByLibrary.simpleMessage(
      "Podržte položku a přetažením změňte pořadí",
    ),
    "reorderSite": m31,
    "repeatOff": MessageLookupByLibrary.simpleMessage("Opakování vypnuto"),
    "repeatOffNotice": MessageLookupByLibrary.simpleMessage(
      "Opakování vypnuto",
    ),
    "repeatOn": MessageLookupByLibrary.simpleMessage("Opakování zapnuto"),
    "repeatingPlaylist": MessageLookupByLibrary.simpleMessage(
      "Playlist se opakuje",
    ),
    "replay": MessageLookupByLibrary.simpleMessage("Přehrát od začátku"),
    "restoreFailed": MessageLookupByLibrary.simpleMessage(
      "Obnovení se nezdařilo",
    ),
    "restorePurchases": MessageLookupByLibrary.simpleMessage("Obnovit nákupy"),
    "right": MessageLookupByLibrary.simpleMessage("Doprava"),
    "save": MessageLookupByLibrary.simpleMessage("Uložit"),
    "savePercent": m32,
    "searchCategories": MessageLookupByLibrary.simpleMessage(
      "Hledat kategorie",
    ),
    "seasonNumber": m33,
    "secondsShort": m34,
    "seekInterval": MessageLookupByLibrary.simpleMessage("Délka skoku"),
    "select": MessageLookupByLibrary.simpleMessage("Vybrat"),
    "selectVideoInBrowser": MessageLookupByLibrary.simpleMessage(
      "Nic se nepřehrává",
    ),
    "selectVideoInBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "Klikněte v počítači na libovolné video a začněte sledovat. Ovladač se objeví tady.",
    ),
    "send": MessageLookupByLibrary.simpleMessage("Odeslat"),
    "settings": MessageLookupByLibrary.simpleMessage("Nastavení"),
    "showChat": MessageLookupByLibrary.simpleMessage("Zobrazit chat"),
    "shuffleOff": MessageLookupByLibrary.simpleMessage(
      "Náhodné přehrávání vypnuto",
    ),
    "shuffleOffNotice": MessageLookupByLibrary.simpleMessage(
      "Náhodné přehrávání vypnuto",
    ),
    "shuffleOn": MessageLookupByLibrary.simpleMessage(
      "Náhodné přehrávání zapnuto",
    ),
    "shufflingPlaylist": MessageLookupByLibrary.simpleMessage(
      "Playlist se přehrává náhodně",
    ),
    "siteSettings": m35,
    "siteWeb": MessageLookupByLibrary.simpleMessage("Web"),
    "skipAd": MessageLookupByLibrary.simpleMessage("Přeskočit reklamu"),
    "skipIntro": MessageLookupByLibrary.simpleMessage("Přeskočit úvod"),
    "sleepTimer": MessageLookupByLibrary.simpleMessage("Časovač vypnutí"),
    "sleepTimerLabel": MessageLookupByLibrary.simpleMessage("Časovač vypnutí"),
    "smallerCaptions": MessageLookupByLibrary.simpleMessage("Menší titulky"),
    "somethingWrong": MessageLookupByLibrary.simpleMessage(
      "Bohužel se něco pokazilo.",
    ),
    "somethingWrongTryAgain": MessageLookupByLibrary.simpleMessage(
      "Bohužel se něco pokazilo. Zkuste to znovu.",
    ),
    "soundBlockedMessage": MessageLookupByLibrary.simpleMessage(
      "Klepněte a zjistěte, jak zapnout zvuk.",
    ),
    "soundBlockedTitle": MessageLookupByLibrary.simpleMessage(
      "Proč nic neslyším?",
    ),
    "soundHelpTitle": MessageLookupByLibrary.simpleMessage("Zvuk"),
    "speedTrialOver": m36,
    "startFreeTrial": MessageLookupByLibrary.simpleMessage("Vyzkoušet zdarma"),
    "storeProblem": MessageLookupByLibrary.simpleMessage(
      "V obchodě nastal problém. Zkuste to za chvíli znovu.",
    ),
    "storeUnavailable": MessageLookupByLibrary.simpleMessage(
      "Obchod teď není dostupný. Zkuste to později.",
    ),
    "subscribe": MessageLookupByLibrary.simpleMessage("Předplatit"),
    "success": MessageLookupByLibrary.simpleMessage("Hotovo"),
    "support": MessageLookupByLibrary.simpleMessage("Podpora"),
    "supportedSites": MessageLookupByLibrary.simpleMessage("Podporované weby"),
    "supportedSitesIntro": MessageLookupByLibrary.simpleMessage(
      "Tyto weby mají ovladač přímo na míru. Na všech ostatních webech funguje Zappit jako běžný ovladač.",
    ),
    "tabMore": MessageLookupByLibrary.simpleMessage("Více"),
    "tabRemote": MessageLookupByLibrary.simpleMessage("Ovladač"),
    "tabTabs": MessageLookupByLibrary.simpleMessage("Karty"),
    "tapToKeepPro": MessageLookupByLibrary.simpleMessage(
      "Klepněte a ponechte si všechny funkce Pro.",
    ),
    "tellAFriend": MessageLookupByLibrary.simpleMessage("Doporučit známým"),
    "termsOfService": MessageLookupByLibrary.simpleMessage("Podmínky služby"),
    "theaterMode": MessageLookupByLibrary.simpleMessage("Režim kina"),
    "trialReminderBody": m37,
    "trialReminderChannel": MessageLookupByLibrary.simpleMessage(
      "Připomenutí zkušební verze",
    ),
    "trialReminderChannelDescription": MessageLookupByLibrary.simpleMessage(
      "Připomenutí před koncem zkušební verze zdarma",
    ),
    "trialReminderMessage": MessageLookupByLibrary.simpleMessage(
      "Máme vám den před koncem zkušební verze připomenout, abyste nebyli nečekaně zpoplatněni?",
    ),
    "trialReminderNotificationTitle": MessageLookupByLibrary.simpleMessage(
      "Zkušební verze Zappit Pro brzy skončí",
    ),
    "trialReminderTitle": MessageLookupByLibrary.simpleMessage(
      "Připomenutí zkušební verze",
    ),
    "trialTerms": m38,
    "trialTermsDays": m39,
    "trialTermsMonths": m40,
    "trialTermsYears": m41,
    "tryAgain": MessageLookupByLibrary.simpleMessage("Zkusit znovu"),
    "turnOffAbFirst": MessageLookupByLibrary.simpleMessage(
      "Nejdřív vypněte A-B Loop",
    ),
    "tutorial": MessageLookupByLibrary.simpleMessage("Návod"),
    "unavailable": MessageLookupByLibrary.simpleMessage("Nedostupné"),
    "undo": MessageLookupByLibrary.simpleMessage("Zpět"),
    "unmute": MessageLookupByLibrary.simpleMessage("Zapnout zvuk"),
    "untitled": MessageLookupByLibrary.simpleMessage("Bez názvu"),
    "up": MessageLookupByLibrary.simpleMessage("Nahoru"),
    "upNext": MessageLookupByLibrary.simpleMessage("Další"),
    "upNextCountdown": m42,
    "upgrade": MessageLookupByLibrary.simpleMessage("Přejít na Pro"),
    "videoLengthUnknown": MessageLookupByLibrary.simpleMessage(
      "Délka tohoto videa není známá",
    ),
    "videoQuality": MessageLookupByLibrary.simpleMessage("Kvalita videa"),
    "view": MessageLookupByLibrary.simpleMessage("Zobrazit"),
    "voiceBoostDuringAd": MessageLookupByLibrary.simpleMessage(
      "Voice Boost není během reklamy dostupný",
    ),
    "voiceBoostOff": MessageLookupByLibrary.simpleMessage("Voice Boost vypnut"),
    "voiceBoostOn": MessageLookupByLibrary.simpleMessage("Voice Boost zapnut"),
    "voiceBoostTrialLeft": m43,
    "voiceBoostTrialOver": m44,
    "voiceBoostTurnedOn": MessageLookupByLibrary.simpleMessage(
      "Voice Boost zapnut: hlasy jsou lépe slyšet",
    ),
    "voiceBoostUnsupported": MessageLookupByLibrary.simpleMessage(
      "Toto video nepodporuje Voice Boost",
    ),
    "volumeDown": MessageLookupByLibrary.simpleMessage("Ztišit"),
    "volumeUp": MessageLookupByLibrary.simpleMessage("Zesílit"),
    "waitingForBrowser": MessageLookupByLibrary.simpleMessage(
      "Čeká se na prohlížeč…",
    ),
    "watchAgain": MessageLookupByLibrary.simpleMessage("Přehrát znovu"),
    "watching": MessageLookupByLibrary.simpleMessage("Sledujete"),
    "welcomeToPro": m45,
    "windowNumber": m46,
    "yearly": MessageLookupByLibrary.simpleMessage("Ročně"),
    "yourBrowser": MessageLookupByLibrary.simpleMessage("prohlížeči"),
    "youreConnected": MessageLookupByLibrary.simpleMessage("Připojeno!"),
    "youreOffline": MessageLookupByLibrary.simpleMessage("Jste offline"),
    "youtubeHome": MessageLookupByLibrary.simpleMessage(
      "Domovská stránka YouTube",
    ),
    "ytCourses": MessageLookupByLibrary.simpleMessage("Kurzy"),
    "ytDownloads": MessageLookupByLibrary.simpleMessage("Stažené"),
    "ytExplore": MessageLookupByLibrary.simpleMessage("Prozkoumat"),
    "ytGaming": MessageLookupByLibrary.simpleMessage("Hry"),
    "ytHistory": MessageLookupByLibrary.simpleMessage("Historie"),
    "ytHype": MessageLookupByLibrary.simpleMessage("Hype"),
    "ytLikedVideos": MessageLookupByLibrary.simpleMessage("Líbí se mi"),
    "ytLive": MessageLookupByLibrary.simpleMessage("Živě"),
    "ytMemberships": MessageLookupByLibrary.simpleMessage("Členství"),
    "ytMusic": MessageLookupByLibrary.simpleMessage("Hudba"),
    "ytPlaylists": MessageLookupByLibrary.simpleMessage("Playlisty"),
    "ytPodcasts": MessageLookupByLibrary.simpleMessage("Podcasty"),
    "ytShorts": MessageLookupByLibrary.simpleMessage("Shorts"),
    "ytSubscriptions": MessageLookupByLibrary.simpleMessage("Odběry"),
    "ytVideos": MessageLookupByLibrary.simpleMessage("Videa"),
    "ytWatchLater": MessageLookupByLibrary.simpleMessage("Přehrát později"),
    "ytYou": MessageLookupByLibrary.simpleMessage("Vy"),
  };
}
