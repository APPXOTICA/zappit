// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a hu locale. All the
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
  String get localeName => 'hu';

  static String m0(site) => "${site} hozzáadása a Kedvencekhez";

  static String m1(count) => "${count} mp vissza";

  static String m2(browser) =>
      "Nincs válasz innen: ${browser}. Ellenőrizd, hogy a böngésző nyitva van-e.";

  static String m3(browsers) => "Leválasztva: ${browsers}";

  static String m4(name) => "Csatorna: ${name}";

  static String m5(current, total) => "${current}/${total}. fejezet";

  static String m6(browser) => "Csatlakoztatva: ${browser}";

  static String m7(count) => "${count} mp előre";

  static String m8(count) => "Ingyenes próba: ${count} nap";

  static String m9(count) => "Ingyenes próba: ${count} hónap";

  static String m10(count) => "Ingyenes próba: ${count} hét";

  static String m11(count) => "Ingyenes próba: ${count} év";

  static String m12(price) => "Csak ${price}/hó";

  static String m13(count) =>
      "${Intl.plural(count, one: '${count} perc', other: '${count} perc')}";

  static String m14(count) => "${count} perc";

  static String m15(time) => "Új kód ${time} múlva";

  static String m16(url) =>
      "Nyisd meg ezt a számítógép böngészőjében: ${url}, és telepítsd a Zappit bővítményt.";

  static String m17(current, total) => "${current} / ${total}";

  static String m18(current, total) => "${current}/${total}. lépés";

  static String m19(site) => "${site} megnyitása";

  static String m20(browser) => "Megnyitva: ${browser}";

  static String m21(browser) => "Megnyitás: ${browser}…";

  static String m22(price) => "${price} / hó";

  static String m23(price) => "${price} / év";

  static String m24(date) =>
      "Az ingyenes Pro-próbaidőszakod lejárata: ${date}. Fizess elő, mielőtt lejár, és minden Pro funkció megszakítás nélkül megmarad.";

  static String m25(proName) =>
      "Az ingyenes Pro-próbaidőszakod véget ért. A ${proName} előfizetéssel minden Pro funkció megmarad.";

  static String m26(days) =>
      "Használd ingyen a Zappit Pro összes funkcióját ${days} napig. Teljesen ingyenes, a végén sincs automatikus fizetés.";

  static String m27(date) => "Pro-próbaidőszak vége: ${date}";

  static String m28(proName) => "${proName} visszaállítva";

  static String m29(site) => "${site} eltávolítása a Kedvencekből";

  static String m30(site) => "${site} eltávolítva a Kedvencekből";

  static String m31(site) => "${site} áthelyezése";

  static String m32(percent) => "${percent}% megtakarítás";

  static String m33(number) => "${number}. évad";

  static String m34(count) => "${count} mp";

  static String m35(site) => "${site} beállításai";

  static String m36(count) =>
      "Visszaállt 1x-es sebességre. Pro nélkül ezt a sebességet ${count} másodpercig használhatod.";

  static String m37(price, date) =>
      "Az ingyenes próbád holnap lejár. ${date} napon ${price} terhelés történik. Ha nem szeretnéd folytatni, mondd le előtte az előfizetést.";

  static String m38(price) =>
      "Ingyenes próbaidőszakkal indul, utána ${price}/év.";

  static String m39(count, price) =>
      "${count} napos ingyenes próbaidőszakkal indul, utána ${price}/év.";

  static String m40(count, price) =>
      "${count} hónapos ingyenes próbaidőszakkal indul, utána ${price}/év.";

  static String m41(count, price) =>
      "${count} éves ingyenes próbaidőszakkal indul, utána ${price}/év.";

  static String m42(count) => "Következik · ${count} mp múlva";

  static String m43(count) => "Voice Boost próba, még ${count} másodperc";

  static String m44(count) =>
      "A Voice Boost kikapcsolt. Pro nélkül a Voice Boostot ${count} másodpercig használhatod.";

  static String m45(proName) => "${proName} aktiválva!";

  static String m46(number) => "${number}. ablak";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "abLoopCount": MessageLookupByLibrary.simpleMessage("A-B Loop ismétlések"),
    "abOffForLive": MessageLookupByLibrary.simpleMessage(
      "Élő közvetítésnél az A-B Loop ki van kapcsolva",
    ),
    "account": MessageLookupByLibrary.simpleMessage("Kapcsolódás"),
    "adBadge": MessageLookupByLibrary.simpleMessage("HIRDETÉS"),
    "addToFavorites": m0,
    "allCategories": MessageLookupByLibrary.simpleMessage("Összes kategória"),
    "allSites": MessageLookupByLibrary.simpleMessage("Összes oldal"),
    "alreadySubscribed": MessageLookupByLibrary.simpleMessage(
      "Már van ilyen előfizetésed. Koppints a „Vásárlások visszaállítása” lehetőségre.",
    ),
    "back": MessageLookupByLibrary.simpleMessage("Vissza"),
    "backSeconds": m1,
    "browserDidNotAnswer": m2,
    "browserNotResponding": MessageLookupByLibrary.simpleMessage(
      "A böngésző nem válaszol",
    ),
    "browsers": MessageLookupByLibrary.simpleMessage("Böngészők"),
    "browsersDisconnected": m3,
    "browsersDisconnectedBody": MessageLookupByLibrary.simpleMessage(
      "Egy másik telefon csatlakozott hozzá. Ha újra csatlakozni szeretnél, olvasd be a QR-kódot azon a számítógépen.",
    ),
    "cameraDenied": MessageLookupByLibrary.simpleMessage(
      "A kód beolvasásához engedélyezd a kamerát a Beállításokban.",
    ),
    "cameraUnavailable": MessageLookupByLibrary.simpleMessage(
      "A kamera most nem érhető el.",
    ),
    "cancel": MessageLookupByLibrary.simpleMessage("Mégse"),
    "cancelAnytime": MessageLookupByLibrary.simpleMessage(
      "Az előfizetést bármikor lemondhatod.",
    ),
    "cantLoadPage": MessageLookupByLibrary.simpleMessage(
      "Az oldal nem tölthető be",
    ),
    "cantOpenOnPhone": MessageLookupByLibrary.simpleMessage(
      "Ez a videó nem nyitható meg a telefonon",
    ),
    "cantReachBrowser": MessageLookupByLibrary.simpleMessage(
      "Nem érhető el böngésző",
    ),
    "cantSeekVideo": MessageLookupByLibrary.simpleMessage(
      "Ebben a videóban nem lehet tekerni",
    ),
    "captionLanguage": MessageLookupByLibrary.simpleMessage("Felirat nyelve"),
    "captions": MessageLookupByLibrary.simpleMessage("Feliratok"),
    "captionsOff": MessageLookupByLibrary.simpleMessage("Feliratok ki"),
    "captionsOn": MessageLookupByLibrary.simpleMessage("Feliratok be"),
    "categories": MessageLookupByLibrary.simpleMessage("Kategóriák"),
    "categoryFavoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "Koppints egy kategória csillagára, hogy ide kerüljön.",
    ),
    "channelLabel": m4,
    "chapterPosition": m5,
    "chapters": MessageLookupByLibrary.simpleMessage("Fejezetek"),
    "chaptersDuringAd": MessageLookupByLibrary.simpleMessage(
      "Hirdetés közben nem lehet fejezetet ugrani",
    ),
    "checkConnection": MessageLookupByLibrary.simpleMessage(
      "Ellenőrizd az internetkapcsolatot, és próbáld újra.",
    ),
    "checkConnectionShort": MessageLookupByLibrary.simpleMessage(
      "Ellenőrizd a kapcsolatot, és próbáld újra.",
    ),
    "chooseBrowser": MessageLookupByLibrary.simpleMessage("Válassz böngészőt"),
    "chooseNextVideo": MessageLookupByLibrary.simpleMessage(
      "Válaszd ki a következő videót",
    ),
    "clear": MessageLookupByLibrary.simpleMessage("Törlés"),
    "close": MessageLookupByLibrary.simpleMessage("Bezárás"),
    "connectBrowser": MessageLookupByLibrary.simpleMessage(
      "Böngésző csatlakoztatása",
    ),
    "connectBrowserFirst": MessageLookupByLibrary.simpleMessage(
      "Előbb csatlakozz egy böngészőhöz",
    ),
    "connected": MessageLookupByLibrary.simpleMessage("Csatlakoztatva"),
    "connectedTo": m6,
    "contactUs": MessageLookupByLibrary.simpleMessage("Kapcsolat"),
    "contactUsKeepInfo": MessageLookupByLibrary.simpleMessage(
      "Kérjük, ne töröld az alábbi adatokat.",
    ),
    "couldNotGetVideoLink": MessageLookupByLibrary.simpleMessage(
      "Nem sikerült lekérni a videó linkjét",
    ),
    "couldNotLoadEpisodes": MessageLookupByLibrary.simpleMessage(
      "Nem sikerült betölteni az epizódokat",
    ),
    "couldNotLoadPlaylist": MessageLookupByLibrary.simpleMessage(
      "Nem sikerült betölteni a lejátszási listát",
    ),
    "couldNotOpenLink": MessageLookupByLibrary.simpleMessage(
      "Nem sikerült megnyitni a linket",
    ),
    "couldNotReadQuality": MessageLookupByLibrary.simpleMessage(
      "Nem sikerült beolvasni az elérhető minőségeket az oldalról.",
    ),
    "delete": MessageLookupByLibrary.simpleMessage("Törlés"),
    "disconnect": MessageLookupByLibrary.simpleMessage("Leválasztás"),
    "disconnectPhone": MessageLookupByLibrary.simpleMessage(
      "Telefon leválasztása",
    ),
    "disconnectPhoneMessage": MessageLookupByLibrary.simpleMessage(
      "Ez a telefon többé nem irányítja a számítógépedet. Ha újra csatlakoztatni szeretnéd, olvasd be a QR-kódot a számítógépen.",
    ),
    "down": MessageLookupByLibrary.simpleMessage("Le"),
    "endOfVideo": MessageLookupByLibrary.simpleMessage("A videó végén"),
    "enterValidLink": MessageLookupByLibrary.simpleMessage(
      "Adj meg egy http-vel vagy https-sel kezdődő linket",
    ),
    "episodes": MessageLookupByLibrary.simpleMessage("Epizódok"),
    "error": MessageLookupByLibrary.simpleMessage("Hiba"),
    "errorButtonNotFound": MessageLookupByLibrary.simpleMessage(
      "Ez a gomb nem található az oldalon",
    ),
    "errorDuringAd": MessageLookupByLibrary.simpleMessage(
      "Hirdetés közben ez nem lehetséges",
    ),
    "errorEndBeforeStart": MessageLookupByLibrary.simpleMessage(
      "A végpontnak a kezdőpont után kell lennie",
    ),
    "errorGeneric": MessageLookupByLibrary.simpleMessage("Valami hiba történt"),
    "errorInvalidUrl": MessageLookupByLibrary.simpleMessage(
      "Ez a link nem nyitható meg",
    ),
    "errorNoBrowser": MessageLookupByLibrary.simpleMessage(
      "Nincs kiválasztott böngésző",
    ),
    "errorNoMedia": MessageLookupByLibrary.simpleMessage(
      "Nincs lejátszás alatt álló videó",
    ),
    "errorNotChanged": MessageLookupByLibrary.simpleMessage(
      "Az oldal nem alkalmazta a módosítást",
    ),
    "errorNotSupported": MessageLookupByLibrary.simpleMessage(
      "Ez az oldal ezt nem támogatja",
    ),
    "errorStartAfterEnd": MessageLookupByLibrary.simpleMessage(
      "A kezdőpontnak a végpont előtt kell lennie",
    ),
    "errorTabClosed": MessageLookupByLibrary.simpleMessage(
      "Ez a lap már be van zárva",
    ),
    "exitFullScreen": MessageLookupByLibrary.simpleMessage(
      "Kilépés a teljes képernyőből",
    ),
    "extensionUpdatedReload": MessageLookupByLibrary.simpleMessage(
      "A Zappit bővítmény frissült. Töltsd újra a lapot a böngészőben, hogy továbbra is minden vezérlőt használhass.",
    ),
    "faq": MessageLookupByLibrary.simpleMessage("GYIK"),
    "favorites": MessageLookupByLibrary.simpleMessage("Kedvencek"),
    "favoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "Koppints egy oldal csillagára, hogy ide kerüljön.",
    ),
    "forwardSeconds": m7,
    "frameByFrame": MessageLookupByLibrary.simpleMessage("Képkockánként"),
    "freeTrial": MessageLookupByLibrary.simpleMessage("Ingyenes próbaidőszak"),
    "freeTrialDays": m8,
    "freeTrialMonths": m9,
    "freeTrialWeeks": m10,
    "freeTrialYears": m11,
    "fullPowerUnlocked": MessageLookupByLibrary.simpleMessage(
      "Minden funkció feloldva",
    ),
    "fullScreen": MessageLookupByLibrary.simpleMessage("Teljes képernyő"),
    "generalSettings": MessageLookupByLibrary.simpleMessage(
      "Általános beállítások",
    ),
    "gotIt": MessageLookupByLibrary.simpleMessage("Értem"),
    "hideChat": MessageLookupByLibrary.simpleMessage("Csevegés elrejtése"),
    "home": MessageLookupByLibrary.simpleMessage("Kezdőlap"),
    "justPerMonth": m12,
    "largerCaptions": MessageLookupByLibrary.simpleMessage("Nagyobb felirat"),
    "lastVideoInPlaylist": MessageLookupByLibrary.simpleMessage(
      "Ez a lejátszási lista utolsó videója",
    ),
    "learnMore": MessageLookupByLibrary.simpleMessage("Tudj meg többet"),
    "left": MessageLookupByLibrary.simpleMessage("Balra"),
    "linkPanelHint": MessageLookupByLibrary.simpleMessage(
      "Illeszd be a videó linkjét, és koppints a Küldés gombra. A böngésződ új lapján nyílik meg.",
    ),
    "liveBadge": MessageLookupByLibrary.simpleMessage("ÉLŐ"),
    "liveCantRewind": MessageLookupByLibrary.simpleMessage(
      "Ez az élő közvetítés nem tekerhető vissza",
    ),
    "longPressSpeed": MessageLookupByLibrary.simpleMessage(
      "Sebesség hosszú nyomásnál",
    ),
    "loopEnd": MessageLookupByLibrary.simpleMessage("Ismétlés vége"),
    "loopOff": MessageLookupByLibrary.simpleMessage("Ismétlés ki"),
    "loopOn": MessageLookupByLibrary.simpleMessage("Ismétlés be"),
    "loopStart": MessageLookupByLibrary.simpleMessage("Ismétlés kezdete"),
    "manageSubscription": MessageLookupByLibrary.simpleMessage(
      "Előfizetés kezelése",
    ),
    "minutesCount": m13,
    "minutesShort": m14,
    "mixCantRepeat": MessageLookupByLibrary.simpleMessage(
      "Ez a lejátszási lista végtelenül új videókat játszik le, ezért nem ismételhető",
    ),
    "mixCantShuffle": MessageLookupByLibrary.simpleMessage(
      "Ez a lejátszási lista végtelenül új videókat játszik le, ezért nem keverhető",
    ),
    "monthly": MessageLookupByLibrary.simpleMessage("Havi"),
    "multipleBrowsersMessage": MessageLookupByLibrary.simpleMessage(
      "Több böngésző is online. Válaszd ki, melyiket irányítsa ez a távirányító.",
    ),
    "mute": MessageLookupByLibrary.simpleMessage("Némítás"),
    "nextChapter": MessageLookupByLibrary.simpleMessage("Következő fejezet"),
    "nextEpisode": MessageLookupByLibrary.simpleMessage("Következő epizód"),
    "nextTab": MessageLookupByLibrary.simpleMessage("Következő lap"),
    "nextVideo": MessageLookupByLibrary.simpleMessage("Következő videó"),
    "noBrowser": MessageLookupByLibrary.simpleMessage("Nincs böngésző"),
    "noBrowserConnectedShare": MessageLookupByLibrary.simpleMessage(
      "Nincs csatlakoztatott böngésző. Nyisd meg a böngészőt a Zappit bővítménnyel, és próbáld újra.",
    ),
    "noBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "1. Nyisd meg a számítógépen a csatlakoztatott böngészőt.\n2. Ha nem csatlakozik, kattints a Zappit ikonra a böngésző felső eszköztárán.",
    ),
    "noBrowserOnline": MessageLookupByLibrary.simpleMessage(
      "Egy böngésző sincs online.",
    ),
    "noBrowserOnlineShort": MessageLookupByLibrary.simpleMessage(
      "Nincs online böngésző",
    ),
    "noBrowserSelected": MessageLookupByLibrary.simpleMessage(
      "Nincs kiválasztott böngésző",
    ),
    "noCategoriesFound": MessageLookupByLibrary.simpleMessage(
      "Nincs ilyen kategória",
    ),
    "noLinkInShare": MessageLookupByLibrary.simpleMessage(
      "A megosztott tartalomban nincs link",
    ),
    "noMoreTabs": MessageLookupByLibrary.simpleMessage("Nincs több lap"),
    "noNextEpisode": MessageLookupByLibrary.simpleMessage(
      "Nincs következő epizód",
    ),
    "noOpenTabs": MessageLookupByLibrary.simpleMessage("Nincs nyitott lap"),
    "noPreviousPage": MessageLookupByLibrary.simpleMessage("Nincs előző oldal"),
    "noSiteSettings": MessageLookupByLibrary.simpleMessage(
      "Ehhez az oldalhoz még nincsenek beállítások.",
    ),
    "noSubtitles": MessageLookupByLibrary.simpleMessage(
      "Ehhez a videóhoz nincs felirat",
    ),
    "noThanks": MessageLookupByLibrary.simpleMessage("Köszönöm, nem"),
    "noVideosOnPage": MessageLookupByLibrary.simpleMessage(
      "Ezen az oldalon nincs videó.",
    ),
    "notAvailableDuringAd": MessageLookupByLibrary.simpleMessage(
      "Hirdetés közben nem érhető el",
    ),
    "notAvailableForLive": MessageLookupByLibrary.simpleMessage(
      "Élőben nem érhető el",
    ),
    "notAvailableForLiveStreams": MessageLookupByLibrary.simpleMessage(
      "Élő közvetítésnél nem érhető el",
    ),
    "notAvailableForPhotos": MessageLookupByLibrary.simpleMessage(
      "Fotós bejegyzéseknél nem érhető el",
    ),
    "notConnected": MessageLookupByLibrary.simpleMessage(
      "Nincs csatlakoztatva",
    ),
    "nothingPlaying": MessageLookupByLibrary.simpleMessage("Nincs videó"),
    "nothingPlayingMessage": MessageLookupByLibrary.simpleMessage(
      "Ezen a képernyőn nincs videó. Válassz másik lapot, vagy illessz be egy videólinket.",
    ),
    "nothingToRestore": MessageLookupByLibrary.simpleMessage(
      "Nincs mit visszaállítani",
    ),
    "nothingToRestoreMessage": MessageLookupByLibrary.simpleMessage(
      "Ehhez a fiókhoz nem található aktív Zappit Pro előfizetés.",
    ),
    "obAnimAddExtension": MessageLookupByLibrary.simpleMessage(
      "Bővítmény hozzáadása",
    ),
    "obAnimAdded": MessageLookupByLibrary.simpleMessage("Hozzáadva"),
    "obAnimConnectComputer": MessageLookupByLibrary.simpleMessage(
      "Csatlakozz a számítógépedhez",
    ),
    "obAnimConnectPhone": MessageLookupByLibrary.simpleMessage(
      "Csatlakoztasd a telefonod",
    ),
    "obAnimNewCode": m15,
    "obAnimRemoteConnected": MessageLookupByLibrary.simpleMessage(
      "Távirányító csatlakoztatva",
    ),
    "obAnimScanCode": MessageLookupByLibrary.simpleMessage(
      "Olvasd be ezt a kódot a telefonodon lévő Zappit alkalmazással.",
    ),
    "obAnimTagline": MessageLookupByLibrary.simpleMessage("Búcsú az egértől."),
    "obAnimYourPhones": MessageLookupByLibrary.simpleMessage("Telefonjaid"),
    "off": MessageLookupByLibrary.simpleMessage("Ki"),
    "offline": MessageLookupByLibrary.simpleMessage("Offline"),
    "offlineMessage": MessageLookupByLibrary.simpleMessage(
      "Ellenőrizd az internetkapcsolatot. A Zappit magától újracsatlakozik.",
    ),
    "onboarding0AnimLabel": MessageLookupByLibrary.simpleMessage(
      "A Zappit alkalmazás lejátszás/szünet gombjára koppintva a laptopon szünetel, majd folytatódik a videó",
    ),
    "onboarding1AnimLabel": MessageLookupByLibrary.simpleMessage(
      "A zappit.tv/get begépelése a böngészőbe és a Zappit bővítmény hozzáadása",
    ),
    "onboarding1Body": m16,
    "onboarding1Title": MessageLookupByLibrary.simpleMessage(
      "Először add hozzá a Zappit bővítményt a böngésződhöz",
    ),
    "onboarding2AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Kattintás a Zappit ikonra a böngészőben, majd a QR-kód beolvasása telefonnal",
    ),
    "onboarding2Body": MessageLookupByLibrary.simpleMessage(
      "Kattints a Zappit ikonra a böngésző eszköztárán, majd olvasd be a QR-kódot. Csatlakozás után indíts el egy YouTube-videót, és nézd, hogy történik a varázslat!",
    ),
    "onboarding2Title": MessageLookupByLibrary.simpleMessage(
      "Olvasd be a QR-kódot",
    ),
    "onboardingGetStarted": MessageLookupByLibrary.simpleMessage("Kezdjük"),
    "onboardingIconHelp": MessageLookupByLibrary.simpleMessage(
      "Nem látod a Zappit ikont?",
    ),
    "onboardingIconHelpLabel": MessageLookupByLibrary.simpleMessage(
      "Nem látod a Zappit ikont? Megnyitja a választ a GYIK-ben",
    ),
    "onboardingNext": MessageLookupByLibrary.simpleMessage("Tovább"),
    "onboardingOpenQrScanner": MessageLookupByLibrary.simpleMessage(
      "QR-olvasó megnyitása",
    ),
    "onboardingShareLink": MessageLookupByLibrary.simpleMessage(
      "Telepítési link küldése",
    ),
    "onboardingStepCount": m17,
    "onboardingStepLabel": m18,
    "onboardingWelcomeBody": MessageLookupByLibrary.simpleMessage(
      "Irányíts bármilyen videót a böngésződben. A beállítás csak két gyors lépés.",
    ),
    "onboardingWelcomeTitle": MessageLookupByLibrary.simpleMessage(
      "A telefonod mostantól távirányító",
    ),
    "openALink": MessageLookupByLibrary.simpleMessage("Link megnyitása"),
    "openBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "Nyisd meg a böngészőt a Zappit bővítménnyel, és látni fogod a lapjait.",
    ),
    "openLinkInBrowser": MessageLookupByLibrary.simpleMessage(
      "Link megnyitása a böngészőben",
    ),
    "openSite": m19,
    "openedIn": m20,
    "openingIn": m21,
    "pairCodeExpired": MessageLookupByLibrary.simpleMessage(
      "Ez a kód lejárt. Olvasd be az új kódot a számítógépen.",
    ),
    "pairCodeInvalid": MessageLookupByLibrary.simpleMessage(
      "Ez a kód már nem érvényes. Olvasd be az új kódot a számítógépen.",
    ),
    "pairCodeUsed": MessageLookupByLibrary.simpleMessage(
      "Ezt a kódot már használták. Olvasd be az új kódot a számítógépen.",
    ),
    "pairFailed": MessageLookupByLibrary.simpleMessage(
      "Nem sikerült csatlakozni. Ellenőrizd az internetkapcsolatot, és próbáld újra.",
    ),
    "pairHowToInstall": MessageLookupByLibrary.simpleMessage(
      "Így telepítsd a bővítményt",
    ),
    "pairPhoneLimit": MessageLookupByLibrary.simpleMessage(
      "Ehhez a számítógéphez már 3 telefon csatlakozik. Nyisd meg a Zappitot egy másik csatlakoztatott telefonodon, és a „Továbbiak” menüben koppints a „Telefon leválasztása” lehetőségre. Ha egyik ilyen telefonhoz sem férsz hozzá, a számítógépen nyisd meg a Zappit bővítmény „Beállítások” menüjét, és kattints a „Visszaállítás” gombra.",
    ),
    "pairTitle": MessageLookupByLibrary.simpleMessage(
      "Csatlakozz a böngészőbővítményhez",
    ),
    "paste": MessageLookupByLibrary.simpleMessage("Beillesztés"),
    "pasteALink": MessageLookupByLibrary.simpleMessage("Link beillesztése"),
    "pasteVideoLink": MessageLookupByLibrary.simpleMessage(
      "Illeszd be a videó linkjét",
    ),
    "pause": MessageLookupByLibrary.simpleMessage("Szünet"),
    "paymentPending": MessageLookupByLibrary.simpleMessage(
      "Függőben lévő fizetés",
    ),
    "paymentPendingMessage": MessageLookupByLibrary.simpleMessage(
      "A Pro azonnal bekapcsol, amint a fizetésedet megerősítik.",
    ),
    "phoneName": MessageLookupByLibrary.simpleMessage("Telefon neve"),
    "phoneNameEmpty": MessageLookupByLibrary.simpleMessage(
      "Adj meg egy nevet.",
    ),
    "phoneNameMessage": MessageLookupByLibrary.simpleMessage(
      "A számítógépen a Zappit bővítményben jelenik meg.",
    ),
    "pickATab": MessageLookupByLibrary.simpleMessage("Lap választása"),
    "pickBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "Válaszd ki, melyik böngészőt irányítsa ez a távirányító, és látni fogod a lapjait.",
    ),
    "pickVideosWithPro": MessageLookupByLibrary.simpleMessage(
      "Pro-val a telefonról választhatsz videót",
    ),
    "play": MessageLookupByLibrary.simpleMessage("Lejátszás"),
    "playInApp": MessageLookupByLibrary.simpleMessage("Folytatás a telefonon"),
    "playNow": MessageLookupByLibrary.simpleMessage("Lejátszás most"),
    "playVideoFirst": MessageLookupByLibrary.simpleMessage(
      "Előbb indíts el egy videót a böngészőben",
    ),
    "playing": MessageLookupByLibrary.simpleMessage("Lejátszás alatt"),
    "playlist": MessageLookupByLibrary.simpleMessage("Lejátszási lista"),
    "playlistCantRepeat": MessageLookupByLibrary.simpleMessage(
      "Ez a lejátszási lista nem ismételhető",
    ),
    "playlistCantShuffle": MessageLookupByLibrary.simpleMessage(
      "Ez a lejátszási lista nem keverhető",
    ),
    "previousChapter": MessageLookupByLibrary.simpleMessage("Előző fejezet"),
    "previousTab": MessageLookupByLibrary.simpleMessage("Előző lap"),
    "previousVideo": MessageLookupByLibrary.simpleMessage("Előző videó"),
    "pricePerMonth": m22,
    "pricePerYear": m23,
    "privacyPolicy": MessageLookupByLibrary.simpleMessage(
      "Adatvédelmi irányelvek",
    ),
    "proBannerSubtitle": MessageLookupByLibrary.simpleMessage(
      "Hozd ki a legtöbbet a távirányítódból",
    ),
    "proFeatureAbLoop": MessageLookupByLibrary.simpleMessage(
      "Korlátlan A-B Loop",
    ),
    "proFeatureAllSpeeds": MessageLookupByLibrary.simpleMessage(
      "Az összes lejátszási sebesség elérhető",
    ),
    "proFeatureDedicatedControllers": MessageLookupByLibrary.simpleMessage(
      "Támogatott oldalakra szabott távirányítók",
    ),
    "proFeatureFullLoop": MessageLookupByLibrary.simpleMessage(
      "Korlátlan videóismétlés",
    ),
    "proFeatureVoiceBoost": MessageLookupByLibrary.simpleMessage(
      "Korlátlan Voice Boost",
    ),
    "proPreviewActiveBanner": m24,
    "proPreviewEndedMessage": MessageLookupByLibrary.simpleMessage(
      "Köszönjük, hogy kipróbáltad a Zappit Pro-t! Fizess elő, és minden Pro funkció megszakítás nélkül megmarad.",
    ),
    "proPreviewEndedSubtitle": m25,
    "proPreviewEndedTitle": MessageLookupByLibrary.simpleMessage(
      "Véget ért az ingyenes Pro-próbaidőszakod",
    ),
    "proPreviewEndsTomorrow": MessageLookupByLibrary.simpleMessage(
      "Holnap lejár az ingyenes Pro-próbaidőszakod",
    ),
    "proPreviewStarted": m26,
    "proPreviewUntil": m27,
    "proRestored": m28,
    "proSubscriptionEnded": MessageLookupByLibrary.simpleMessage(
      "A Pro előfizetésed lejárt",
    ),
    "proSubtitle": MessageLookupByLibrary.simpleMessage(
      "Hozd ki a legtöbbet a távirányítódból.",
    ),
    "purchaseCancelled": MessageLookupByLibrary.simpleMessage(
      "Vásárlás megszakítva",
    ),
    "purchaseCancelledMessage": MessageLookupByLibrary.simpleMessage(
      "Nem történt terhelés. Bármikor újra megpróbálhatod.",
    ),
    "purchaseFailed": MessageLookupByLibrary.simpleMessage(
      "A vásárlás nem sikerült",
    ),
    "purchaseNotActivated": MessageLookupByLibrary.simpleMessage(
      "A vásárlás nincs aktiválva",
    ),
    "purchaseNotActivatedMessage": MessageLookupByLibrary.simpleMessage(
      "A fizetés sikerült, de a Pro még nem aktív. Koppints a „Vásárlások visszaállítása” lehetőségre.",
    ),
    "purchasesNotAllowed": MessageLookupByLibrary.simpleMessage(
      "Ezen az eszközön vagy fiókon nem engedélyezett a vásárlás.",
    ),
    "qualityNotChanged": MessageLookupByLibrary.simpleMessage(
      "A minőség nem változott",
    ),
    "rateZappit": MessageLookupByLibrary.simpleMessage("Zappit értékelése"),
    "reload": MessageLookupByLibrary.simpleMessage("Újratöltés"),
    "remindMe": MessageLookupByLibrary.simpleMessage("Kérek emlékeztetőt"),
    "remoteSettings": MessageLookupByLibrary.simpleMessage(
      "Távirányító beállításai",
    ),
    "removeFromFavorites": m29,
    "removedFromFavorites": m30,
    "reorderHint": MessageLookupByLibrary.simpleMessage(
      "Tarts lenyomva egy elemet, majd húzd a sorrend módosításához",
    ),
    "reorderSite": m31,
    "repeatOff": MessageLookupByLibrary.simpleMessage("Ismétlés ki"),
    "repeatOffNotice": MessageLookupByLibrary.simpleMessage(
      "Ismétlés kikapcsolva",
    ),
    "repeatOn": MessageLookupByLibrary.simpleMessage("Ismétlés be"),
    "repeatingPlaylist": MessageLookupByLibrary.simpleMessage(
      "A lejátszási lista ismétlődik",
    ),
    "replay": MessageLookupByLibrary.simpleMessage("Lejátszás az elejéről"),
    "restoreFailed": MessageLookupByLibrary.simpleMessage(
      "A visszaállítás nem sikerült",
    ),
    "restorePurchases": MessageLookupByLibrary.simpleMessage(
      "Vásárlások visszaállítása",
    ),
    "right": MessageLookupByLibrary.simpleMessage("Jobbra"),
    "save": MessageLookupByLibrary.simpleMessage("Mentés"),
    "savePercent": m32,
    "searchCategories": MessageLookupByLibrary.simpleMessage(
      "Kategóriák keresése",
    ),
    "seasonNumber": m33,
    "secondsShort": m34,
    "seekInterval": MessageLookupByLibrary.simpleMessage("Ugrás hossza"),
    "select": MessageLookupByLibrary.simpleMessage("Kiválasztás"),
    "selectVideoInBrowser": MessageLookupByLibrary.simpleMessage(
      "Nincs lejátszás",
    ),
    "selectVideoInBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "Kattints bármelyik videóra a számítógépen, és kezdődhet a nézés. A távirányító itt jelenik meg.",
    ),
    "send": MessageLookupByLibrary.simpleMessage("Küldés"),
    "settings": MessageLookupByLibrary.simpleMessage("Beállítások"),
    "showChat": MessageLookupByLibrary.simpleMessage("Csevegés mutatása"),
    "shuffleOff": MessageLookupByLibrary.simpleMessage("Véletlen sorrend ki"),
    "shuffleOffNotice": MessageLookupByLibrary.simpleMessage(
      "Véletlen sorrend kikapcsolva",
    ),
    "shuffleOn": MessageLookupByLibrary.simpleMessage("Véletlen sorrend be"),
    "shufflingPlaylist": MessageLookupByLibrary.simpleMessage(
      "A lejátszási lista véletlen sorrendben megy",
    ),
    "siteSettings": m35,
    "siteWeb": MessageLookupByLibrary.simpleMessage("Web"),
    "skipAd": MessageLookupByLibrary.simpleMessage("Hirdetés átugrása"),
    "skipIntro": MessageLookupByLibrary.simpleMessage("Intró átugrása"),
    "sleepTimer": MessageLookupByLibrary.simpleMessage("Elalvásidőzítő"),
    "sleepTimerLabel": MessageLookupByLibrary.simpleMessage("Elalvásidőzítő"),
    "smallerCaptions": MessageLookupByLibrary.simpleMessage("Kisebb felirat"),
    "soundBlockedMessage": MessageLookupByLibrary.simpleMessage(
      "Koppints, és megnézheted, hogyan kapcsold be a hangot.",
    ),
    "soundBlockedTitle": MessageLookupByLibrary.simpleMessage(
      "Miért nincs hang?",
    ),
    "soundHelpTitle": MessageLookupByLibrary.simpleMessage("Hang"),
    "speedTrialOver": m36,
    "startFreeTrial": MessageLookupByLibrary.simpleMessage(
      "Ingyenes próba indítása",
    ),
    "storeProblem": MessageLookupByLibrary.simpleMessage(
      "Hiba történt a vásárlás során. Próbáld újra egy kicsit később.",
    ),
    "storeUnavailable": MessageLookupByLibrary.simpleMessage(
      "A vásárlás most nem lehetséges. Próbáld újra később.",
    ),
    "subscribe": MessageLookupByLibrary.simpleMessage("Előfizetés"),
    "success": MessageLookupByLibrary.simpleMessage("Kész"),
    "support": MessageLookupByLibrary.simpleMessage("Támogatás"),
    "supportedSites": MessageLookupByLibrary.simpleMessage(
      "Támogatott oldalak",
    ),
    "supportedSitesIntro": MessageLookupByLibrary.simpleMessage(
      "Ezekhez az oldalakhoz külön, rájuk szabott távirányító tartozik. Minden más oldalon a Zappit normál távirányítóként működik.",
    ),
    "tabMore": MessageLookupByLibrary.simpleMessage("Továbbiak"),
    "tabRemote": MessageLookupByLibrary.simpleMessage("Távirányító"),
    "tabTabs": MessageLookupByLibrary.simpleMessage("Lapok"),
    "tapToKeepPro": MessageLookupByLibrary.simpleMessage(
      "Koppints, és megtarthatod az összes Pro funkciót.",
    ),
    "tellAFriend": MessageLookupByLibrary.simpleMessage(
      "Ajánld egy barátodnak",
    ),
    "termsOfService": MessageLookupByLibrary.simpleMessage(
      "Felhasználási feltételek",
    ),
    "theaterMode": MessageLookupByLibrary.simpleMessage("Moziüzemmód"),
    "trialReminderBody": m37,
    "trialReminderChannel": MessageLookupByLibrary.simpleMessage(
      "Ingyenes próba emlékeztető",
    ),
    "trialReminderChannelDescription": MessageLookupByLibrary.simpleMessage(
      "Emlékeztető az ingyenes próba vége előtt",
    ),
    "trialReminderMessage": MessageLookupByLibrary.simpleMessage(
      "Szóljunk az ingyenes próba vége előtti napon, hogy ne érjen meglepetésként a terhelés?",
    ),
    "trialReminderNotificationTitle": MessageLookupByLibrary.simpleMessage(
      "Hamarosan lejár az ingyenes próbaidőszakod",
    ),
    "trialReminderTitle": MessageLookupByLibrary.simpleMessage(
      "Próbaidőszak-emlékeztető",
    ),
    "trialTerms": m38,
    "trialTermsDays": m39,
    "trialTermsMonths": m40,
    "trialTermsYears": m41,
    "tryAgain": MessageLookupByLibrary.simpleMessage("Újra"),
    "turnOffAbFirst": MessageLookupByLibrary.simpleMessage(
      "Előbb kapcsold ki az A-B Loopot",
    ),
    "tutorial": MessageLookupByLibrary.simpleMessage("Útmutató"),
    "unavailable": MessageLookupByLibrary.simpleMessage("Nem érhető el"),
    "undo": MessageLookupByLibrary.simpleMessage("Visszavonás"),
    "unmute": MessageLookupByLibrary.simpleMessage("Hang be"),
    "untitled": MessageLookupByLibrary.simpleMessage("Névtelen"),
    "up": MessageLookupByLibrary.simpleMessage("Fel"),
    "upNext": MessageLookupByLibrary.simpleMessage("Következik"),
    "upNextCountdown": m42,
    "upgrade": MessageLookupByLibrary.simpleMessage("Váltás Pro-ra"),
    "videoLengthUnknown": MessageLookupByLibrary.simpleMessage(
      "A videó hossza ismeretlen",
    ),
    "videoQuality": MessageLookupByLibrary.simpleMessage("Videóminőség"),
    "view": MessageLookupByLibrary.simpleMessage("Megtekintés"),
    "voiceBoostDuringAd": MessageLookupByLibrary.simpleMessage(
      "Hirdetés közben a Voice Boost nem érhető el",
    ),
    "voiceBoostOff": MessageLookupByLibrary.simpleMessage("Voice Boost ki"),
    "voiceBoostOn": MessageLookupByLibrary.simpleMessage("Voice Boost be"),
    "voiceBoostTrialLeft": m43,
    "voiceBoostTrialOver": m44,
    "voiceBoostTurnedOn": MessageLookupByLibrary.simpleMessage(
      "Voice Boost be: a beszéd jobban érthető",
    ),
    "voiceBoostUnsupported": MessageLookupByLibrary.simpleMessage(
      "Ez a videó nem támogatja a Voice Boostot",
    ),
    "volumeDown": MessageLookupByLibrary.simpleMessage("Halkítás"),
    "volumeUp": MessageLookupByLibrary.simpleMessage("Hangosítás"),
    "waitingForBrowser": MessageLookupByLibrary.simpleMessage(
      "Várakozás a böngészőre…",
    ),
    "watchAgain": MessageLookupByLibrary.simpleMessage("Újranézés"),
    "watching": MessageLookupByLibrary.simpleMessage("Ezt nézed"),
    "welcomeToPro": m45,
    "windowNumber": m46,
    "yearly": MessageLookupByLibrary.simpleMessage("Éves"),
    "yourBrowser": MessageLookupByLibrary.simpleMessage("a böngésződ"),
    "youreConnected": MessageLookupByLibrary.simpleMessage("Csatlakoztatva!"),
    "youreOffline": MessageLookupByLibrary.simpleMessage("Offline vagy"),
    "youtubeHome": MessageLookupByLibrary.simpleMessage("YouTube kezdőlap"),
    "ytCourses": MessageLookupByLibrary.simpleMessage("Kurzusok"),
    "ytDownloads": MessageLookupByLibrary.simpleMessage("Letöltések"),
    "ytExplore": MessageLookupByLibrary.simpleMessage("Felfedezés"),
    "ytGaming": MessageLookupByLibrary.simpleMessage("Játékok"),
    "ytHistory": MessageLookupByLibrary.simpleMessage("Előzmények"),
    "ytHype": MessageLookupByLibrary.simpleMessage("Hype"),
    "ytLikedVideos": MessageLookupByLibrary.simpleMessage("Kedvelt videók"),
    "ytLive": MessageLookupByLibrary.simpleMessage("Élő"),
    "ytMemberships": MessageLookupByLibrary.simpleMessage("Tagságok"),
    "ytMusic": MessageLookupByLibrary.simpleMessage("Zene"),
    "ytPlaylists": MessageLookupByLibrary.simpleMessage("Lejátszási listák"),
    "ytPodcasts": MessageLookupByLibrary.simpleMessage("Podcastok"),
    "ytShorts": MessageLookupByLibrary.simpleMessage("Shorts"),
    "ytSubscriptions": MessageLookupByLibrary.simpleMessage("Feliratkozások"),
    "ytVideos": MessageLookupByLibrary.simpleMessage("Videók"),
    "ytWatchLater": MessageLookupByLibrary.simpleMessage("Megnézendő"),
    "ytYou": MessageLookupByLibrary.simpleMessage("Te"),
  };
}
