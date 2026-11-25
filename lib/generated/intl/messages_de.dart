// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de locale. All the
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
  String get localeName => 'de';

  static String m0(site) => "${site} zu Favoriten hinzufügen";

  static String m1(count) => "${count} Sekunden zurück";

  static String m2(browser) =>
      "${browser} hat nicht geantwortet. Prüfe, ob der Browser geöffnet ist.";

  static String m3(browsers) => "Von ${browsers} getrennt";

  static String m4(name) => "Kanal: ${name}";

  static String m5(current, total) => "Kapitel ${current}/${total}";

  static String m6(browser) => "Mit ${browser} verbunden";

  static String m7(count) => "${count} Sekunden vor";

  static String m8(count) =>
      "${Intl.plural(count, one: '${count} Tag gratis testen', other: '${count} Tage gratis testen')}";

  static String m9(count) =>
      "${Intl.plural(count, one: '${count} Monat gratis testen', other: '${count} Monate gratis testen')}";

  static String m10(count) =>
      "${Intl.plural(count, one: '${count} Woche gratis testen', other: '${count} Wochen gratis testen')}";

  static String m11(count) =>
      "${Intl.plural(count, one: '${count} Jahr gratis testen', other: '${count} Jahre gratis testen')}";

  static String m12(price) => "Nur ${price}/Monat";

  static String m13(count) =>
      "${Intl.plural(count, one: '1 Minute', other: '${count} Minuten')}";

  static String m14(count) => "${count} Min.";

  static String m15(time) => "Neuer Code in ${time}";

  static String m16(url) =>
      "Öffne ${url} im Browser deines Computers, um die Zappit-Erweiterung zu installieren.";

  static String m17(current, total) => "${current} / ${total}";

  static String m18(current, total) => "Schritt ${current} von ${total}";

  static String m19(site) => "${site} öffnen";

  static String m20(browser) => "In ${browser} geöffnet";

  static String m21(browser) => "Wird in ${browser} geöffnet…";

  static String m22(price) => "${price} / Monat";

  static String m23(price) => "${price} / Jahr";

  static String m24(date) =>
      "Deine kostenlose Pro-Testphase läuft bis ${date}. Abonniere vorher, damit du alle Pro-Funktionen ohne Unterbrechung weiter nutzen kannst.";

  static String m25(proName) =>
      "Deine kostenlose Pro-Testphase ist abgelaufen. Mit ${proName} kannst du alle Pro-Funktionen weiter nutzen.";

  static String m26(days) =>
      "Nutze ${days} Tage lang alle Funktionen von Zappit Pro. Komplett kostenlos – danach wird nichts automatisch abgerechnet.";

  static String m27(date) => "Pro-Testphase bis ${date}";

  static String m28(proName) => "${proName} wiederhergestellt";

  static String m29(site) => "${site} aus Favoriten entfernen";

  static String m30(site) => "${site} aus Favoriten entfernt";

  static String m31(site) => "${site} verschieben";

  static String m32(percent) => "${percent} % sparen";

  static String m33(number) => "Staffel ${number}";

  static String m34(count) => "${count} s";

  static String m35(site) => "Einstellungen für ${site}";

  static String m36(count) =>
      "Zurück auf 1x. Ohne Pro kannst du dieses Tempo ${count} Sekunden nutzen.";

  static String m37(price, date) =>
      "Dein Gratis-Test endet morgen. Am ${date} werden ${price} berechnet. Wenn du das Abo nicht behalten willst, kündige es vorher.";

  static String m38(price) =>
      "Beginnt mit einem Gratis-Test, danach ${price}/Jahr.";

  static String m39(count, price) =>
      "Beginnt mit ${count} Tagen gratis, danach ${price}/Jahr.";

  static String m40(count, price) =>
      "Beginnt mit ${Intl.plural(count, one: '${count} Monat', other: '${count} Monaten')} gratis, danach ${price}/Jahr.";

  static String m41(count, price) =>
      "Beginnt mit ${Intl.plural(count, one: '${count} Jahr', other: '${count} Jahren')} gratis, danach ${price}/Jahr.";

  static String m42(count) => "Als Nächstes · startet in ${count} s";

  static String m43(count) => "Voice Boost zum Testen: noch ${count} Sekunden";

  static String m44(count) =>
      "Voice Boost ist aus. Ohne Pro kannst du Voice Boost ${count} Sekunden nutzen.";

  static String m45(proName) => "Willkommen bei ${proName}";

  static String m46(number) => "Fenster ${number}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "abLoopCount": MessageLookupByLibrary.simpleMessage(
      "A-B-Loop-Wiederholungen",
    ),
    "abOffForLive": MessageLookupByLibrary.simpleMessage(
      "Der A-B-Loop ist bei Livestreams aus",
    ),
    "account": MessageLookupByLibrary.simpleMessage("Verbindung"),
    "adBadge": MessageLookupByLibrary.simpleMessage("WERBUNG"),
    "addToFavorites": m0,
    "allCategories": MessageLookupByLibrary.simpleMessage("Alle Kategorien"),
    "allSites": MessageLookupByLibrary.simpleMessage("Alle Websites"),
    "alreadySubscribed": MessageLookupByLibrary.simpleMessage(
      "Du hast dieses Abo bereits. Versuch es mit „Käufe wiederherstellen“.",
    ),
    "back": MessageLookupByLibrary.simpleMessage("Zurück"),
    "backSeconds": m1,
    "browserDidNotAnswer": m2,
    "browserNotResponding": MessageLookupByLibrary.simpleMessage(
      "Browser antwortet nicht",
    ),
    "browsers": MessageLookupByLibrary.simpleMessage("Browser"),
    "browsersDisconnected": m3,
    "browsersDisconnectedBody": MessageLookupByLibrary.simpleMessage(
      "Ein anderes Handy hat die Verbindung übernommen. Um die Verbindung wiederherzustellen, scanne den QR-Code auf dem Computer.",
    ),
    "cameraDenied": MessageLookupByLibrary.simpleMessage(
      "Erlaube in den Einstellungen den Kamerazugriff, um den Code zu scannen.",
    ),
    "cameraUnavailable": MessageLookupByLibrary.simpleMessage(
      "Die Kamera ist gerade nicht verfügbar.",
    ),
    "cancel": MessageLookupByLibrary.simpleMessage("Abbrechen"),
    "cancelAnytime": MessageLookupByLibrary.simpleMessage(
      "Jederzeit in deinen Abo-Einstellungen kündbar.",
    ),
    "cantLoadPage": MessageLookupByLibrary.simpleMessage(
      "Seite kann nicht geladen werden",
    ),
    "cantOpenOnPhone": MessageLookupByLibrary.simpleMessage(
      "Dieses Video lässt sich nicht am Handy öffnen",
    ),
    "cantReachBrowser": MessageLookupByLibrary.simpleMessage(
      "Kein Browser erreichbar",
    ),
    "cantSeekVideo": MessageLookupByLibrary.simpleMessage(
      "In diesem Video kann nicht gespult werden",
    ),
    "captionLanguage": MessageLookupByLibrary.simpleMessage(
      "Untertitelsprache",
    ),
    "captions": MessageLookupByLibrary.simpleMessage("Untertitel"),
    "captionsOff": MessageLookupByLibrary.simpleMessage("Untertitel aus"),
    "captionsOn": MessageLookupByLibrary.simpleMessage("Untertitel an"),
    "categories": MessageLookupByLibrary.simpleMessage("Kategorien"),
    "categoryFavoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "Tippe bei einer Kategorie auf den Stern, um sie hier hinzuzufügen.",
    ),
    "channelLabel": m4,
    "chapterPosition": m5,
    "chapters": MessageLookupByLibrary.simpleMessage("Kapitel"),
    "chaptersDuringAd": MessageLookupByLibrary.simpleMessage(
      "Während einer Werbung kann kein Kapitel übersprungen werden",
    ),
    "checkConnection": MessageLookupByLibrary.simpleMessage(
      "Prüfe deine Internetverbindung und versuch es noch einmal.",
    ),
    "checkConnectionShort": MessageLookupByLibrary.simpleMessage(
      "Prüfe deine Verbindung und versuch es noch einmal.",
    ),
    "chooseBrowser": MessageLookupByLibrary.simpleMessage("Browser auswählen"),
    "chooseNextVideo": MessageLookupByLibrary.simpleMessage(
      "Nächstes Video wählen",
    ),
    "clear": MessageLookupByLibrary.simpleMessage("Löschen"),
    "close": MessageLookupByLibrary.simpleMessage("Schließen"),
    "connectBrowser": MessageLookupByLibrary.simpleMessage("Browser verbinden"),
    "connectBrowserFirst": MessageLookupByLibrary.simpleMessage(
      "Verbinde dich zuerst mit einem Browser",
    ),
    "connected": MessageLookupByLibrary.simpleMessage("Verbunden"),
    "connectedTo": m6,
    "contactUs": MessageLookupByLibrary.simpleMessage("Kontakt"),
    "contactUsKeepInfo": MessageLookupByLibrary.simpleMessage(
      "Bitte lösche die Infos unten nicht.",
    ),
    "couldNotGetVideoLink": MessageLookupByLibrary.simpleMessage(
      "Der Videolink konnte nicht abgerufen werden",
    ),
    "couldNotLoadEpisodes": MessageLookupByLibrary.simpleMessage(
      "Folgen konnten nicht geladen werden",
    ),
    "couldNotLoadPlaylist": MessageLookupByLibrary.simpleMessage(
      "Die Playlist konnte nicht geladen werden",
    ),
    "couldNotOpenLink": MessageLookupByLibrary.simpleMessage(
      "Der Link konnte nicht geöffnet werden",
    ),
    "couldNotReadQuality": MessageLookupByLibrary.simpleMessage(
      "Die Qualitätsoptionen konnten nicht von der Seite gelesen werden.",
    ),
    "delete": MessageLookupByLibrary.simpleMessage("Löschen"),
    "disconnect": MessageLookupByLibrary.simpleMessage("Trennen"),
    "disconnectPhone": MessageLookupByLibrary.simpleMessage(
      "Dieses Handy trennen",
    ),
    "disconnectPhoneMessage": MessageLookupByLibrary.simpleMessage(
      "Dieses Handy steuert deinen Computer dann nicht mehr. Um es wieder zu verbinden, scanne den QR-Code auf deinem Computer.",
    ),
    "down": MessageLookupByLibrary.simpleMessage("Runter"),
    "endOfVideo": MessageLookupByLibrary.simpleMessage("Ende des Videos"),
    "enterValidLink": MessageLookupByLibrary.simpleMessage(
      "Gib einen Link ein, der mit http oder https beginnt",
    ),
    "episodes": MessageLookupByLibrary.simpleMessage("Folgen"),
    "error": MessageLookupByLibrary.simpleMessage("Fehler"),
    "errorButtonNotFound": MessageLookupByLibrary.simpleMessage(
      "Diese Schaltfläche wurde auf der Seite nicht gefunden",
    ),
    "errorDuringAd": MessageLookupByLibrary.simpleMessage(
      "Während einer Werbung nicht möglich",
    ),
    "errorEndBeforeStart": MessageLookupByLibrary.simpleMessage(
      "Der Endpunkt muss nach dem Startpunkt liegen",
    ),
    "errorGeneric": MessageLookupByLibrary.simpleMessage(
      "Etwas ist schiefgelaufen",
    ),
    "errorInvalidUrl": MessageLookupByLibrary.simpleMessage(
      "Dieser Link lässt sich nicht öffnen",
    ),
    "errorNoBrowser": MessageLookupByLibrary.simpleMessage(
      "Kein Browser ausgewählt",
    ),
    "errorNoMedia": MessageLookupByLibrary.simpleMessage("Es läuft kein Video"),
    "errorNotChanged": MessageLookupByLibrary.simpleMessage(
      "Die Website hat es nicht geändert",
    ),
    "errorNotSupported": MessageLookupByLibrary.simpleMessage(
      "Diese Website unterstützt das nicht",
    ),
    "errorStartAfterEnd": MessageLookupByLibrary.simpleMessage(
      "Der Startpunkt muss vor dem Endpunkt liegen",
    ),
    "errorTabClosed": MessageLookupByLibrary.simpleMessage(
      "Dieser Tab ist bereits geschlossen",
    ),
    "exitFullScreen": MessageLookupByLibrary.simpleMessage("Vollbild beenden"),
    "extensionUpdatedReload": MessageLookupByLibrary.simpleMessage(
      "Die Zappit-Erweiterung wurde aktualisiert. Lade die Seite im Browser neu, um weiter alle Funktionen zu nutzen.",
    ),
    "faq": MessageLookupByLibrary.simpleMessage("FAQ"),
    "favorites": MessageLookupByLibrary.simpleMessage("Favoriten"),
    "favoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "Tippe bei einer Website auf den Stern, um sie hier hinzuzufügen.",
    ),
    "forwardSeconds": m7,
    "frameByFrame": MessageLookupByLibrary.simpleMessage("Bild für Bild"),
    "freeTrial": MessageLookupByLibrary.simpleMessage("Gratis testen"),
    "freeTrialDays": m8,
    "freeTrialMonths": m9,
    "freeTrialWeeks": m10,
    "freeTrialYears": m11,
    "fullPowerUnlocked": MessageLookupByLibrary.simpleMessage(
      "Alle Funktionen freigeschaltet",
    ),
    "fullScreen": MessageLookupByLibrary.simpleMessage("Vollbild"),
    "generalSettings": MessageLookupByLibrary.simpleMessage("Allgemein"),
    "gotIt": MessageLookupByLibrary.simpleMessage("Verstanden"),
    "hideChat": MessageLookupByLibrary.simpleMessage("Chat ausblenden"),
    "home": MessageLookupByLibrary.simpleMessage("Startseite"),
    "justPerMonth": m12,
    "largerCaptions": MessageLookupByLibrary.simpleMessage(
      "Größere Untertitel",
    ),
    "lastVideoInPlaylist": MessageLookupByLibrary.simpleMessage(
      "Das ist das letzte Video der Playlist",
    ),
    "learnMore": MessageLookupByLibrary.simpleMessage("Mehr erfahren"),
    "left": MessageLookupByLibrary.simpleMessage("Links"),
    "linkPanelHint": MessageLookupByLibrary.simpleMessage(
      "Füge einen Videolink ein und tippe auf Senden. Er öffnet sich in einem neuen Tab in deinem Browser.",
    ),
    "liveBadge": MessageLookupByLibrary.simpleMessage("LIVE"),
    "liveCantRewind": MessageLookupByLibrary.simpleMessage(
      "Dieser Livestream lässt sich nicht zurückspulen",
    ),
    "longPressSpeed": MessageLookupByLibrary.simpleMessage(
      "Tempo bei langem Drücken",
    ),
    "loopEnd": MessageLookupByLibrary.simpleMessage("Loop-Ende"),
    "loopOff": MessageLookupByLibrary.simpleMessage("Wiederholen aus"),
    "loopOn": MessageLookupByLibrary.simpleMessage("Wiederholen an"),
    "loopStart": MessageLookupByLibrary.simpleMessage("Loop-Anfang"),
    "manageSubscription": MessageLookupByLibrary.simpleMessage("Abo verwalten"),
    "minutesCount": m13,
    "minutesShort": m14,
    "mixCantRepeat": MessageLookupByLibrary.simpleMessage(
      "Diese Playlist spielt endlos neue Videos ab und kann daher nicht wiederholt werden",
    ),
    "mixCantShuffle": MessageLookupByLibrary.simpleMessage(
      "Diese Playlist spielt endlos neue Videos ab und kann daher nicht gemischt werden",
    ),
    "monthly": MessageLookupByLibrary.simpleMessage("Monatlich"),
    "multipleBrowsersMessage": MessageLookupByLibrary.simpleMessage(
      "Mehrere Browser sind online. Wähle den aus, den diese Fernbedienung steuern soll.",
    ),
    "mute": MessageLookupByLibrary.simpleMessage("Stummschalten"),
    "nextChapter": MessageLookupByLibrary.simpleMessage("Nächstes Kapitel"),
    "nextEpisode": MessageLookupByLibrary.simpleMessage("Nächste Folge"),
    "nextTab": MessageLookupByLibrary.simpleMessage("Nächster Tab"),
    "nextVideo": MessageLookupByLibrary.simpleMessage("Nächstes Video"),
    "noBrowser": MessageLookupByLibrary.simpleMessage("Kein Browser"),
    "noBrowserConnectedShare": MessageLookupByLibrary.simpleMessage(
      "Kein Browser ist verbunden. Öffne deinen Browser mit der Zappit-Erweiterung und versuch es noch einmal.",
    ),
    "noBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "1. Öffne deinen verbundenen Browser auf dem Computer.\n2. Wenn er sich nicht verbindet, klicke oben in der Symbolleiste deines Browsers auf das Zappit-Symbol.",
    ),
    "noBrowserOnline": MessageLookupByLibrary.simpleMessage(
      "Kein Browser ist online.",
    ),
    "noBrowserOnlineShort": MessageLookupByLibrary.simpleMessage(
      "Kein Browser online",
    ),
    "noBrowserSelected": MessageLookupByLibrary.simpleMessage(
      "Kein Browser ausgewählt",
    ),
    "noCategoriesFound": MessageLookupByLibrary.simpleMessage(
      "Keine Kategorien gefunden",
    ),
    "noLinkInShare": MessageLookupByLibrary.simpleMessage(
      "In den geteilten Inhalten wurde kein Link gefunden",
    ),
    "noMoreTabs": MessageLookupByLibrary.simpleMessage("Keine weiteren Tabs"),
    "noNextEpisode": MessageLookupByLibrary.simpleMessage(
      "Keine nächste Folge",
    ),
    "noOpenTabs": MessageLookupByLibrary.simpleMessage("Keine offenen Tabs"),
    "noPreviousPage": MessageLookupByLibrary.simpleMessage(
      "Es gibt keine vorherige Seite",
    ),
    "noSiteSettings": MessageLookupByLibrary.simpleMessage(
      "Für diese Website gibt es noch keine Einstellungen.",
    ),
    "noSubtitles": MessageLookupByLibrary.simpleMessage(
      "Dieses Video hat keine Untertitel",
    ),
    "noThanks": MessageLookupByLibrary.simpleMessage("Nein, danke"),
    "noVideosOnPage": MessageLookupByLibrary.simpleMessage(
      "Auf dieser Seite gibt es keine Videos.",
    ),
    "notAvailableDuringAd": MessageLookupByLibrary.simpleMessage(
      "Während einer Werbung nicht verfügbar",
    ),
    "notAvailableForLive": MessageLookupByLibrary.simpleMessage(
      "Nicht bei Livestreams",
    ),
    "notAvailableForLiveStreams": MessageLookupByLibrary.simpleMessage(
      "Bei Livestreams nicht verfügbar",
    ),
    "notAvailableForPhotos": MessageLookupByLibrary.simpleMessage(
      "Bei Fotobeiträgen nicht verfügbar",
    ),
    "notConnected": MessageLookupByLibrary.simpleMessage("Nicht verbunden"),
    "nothingPlaying": MessageLookupByLibrary.simpleMessage(
      "Kein Video gefunden",
    ),
    "nothingPlayingMessage": MessageLookupByLibrary.simpleMessage(
      "Auf diesem Bildschirm gibt es kein Video. Wähle einen anderen Tab oder füge einen Videolink ein.",
    ),
    "nothingToRestore": MessageLookupByLibrary.simpleMessage(
      "Nichts wiederherzustellen",
    ),
    "nothingToRestoreMessage": MessageLookupByLibrary.simpleMessage(
      "Für dieses Konto wurde kein aktives Abo von Zappit Pro gefunden.",
    ),
    "obAnimAddExtension": MessageLookupByLibrary.simpleMessage(
      "Erweiterung hinzufügen",
    ),
    "obAnimAdded": MessageLookupByLibrary.simpleMessage("Hinzugefügt"),
    "obAnimConnectComputer": MessageLookupByLibrary.simpleMessage(
      "Mit deinem Computer verbinden",
    ),
    "obAnimConnectPhone": MessageLookupByLibrary.simpleMessage(
      "Handy verbinden",
    ),
    "obAnimNewCode": m15,
    "obAnimRemoteConnected": MessageLookupByLibrary.simpleMessage(
      "Fernbedienung verbunden",
    ),
    "obAnimScanCode": MessageLookupByLibrary.simpleMessage(
      "Scanne diesen Code mit der Zappit-App auf deinem Handy.",
    ),
    "obAnimTagline": MessageLookupByLibrary.simpleMessage(
      "Schluss mit der Maus.",
    ),
    "obAnimYourPhones": MessageLookupByLibrary.simpleMessage("Deine Handys"),
    "off": MessageLookupByLibrary.simpleMessage("Aus"),
    "offline": MessageLookupByLibrary.simpleMessage("Offline"),
    "offlineMessage": MessageLookupByLibrary.simpleMessage(
      "Prüfe deine Internetverbindung. Zappit verbindet sich von selbst wieder.",
    ),
    "onboarding0AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Ein Tippen auf Play/Pause in der Zappit-App pausiert das Video auf dem Laptop und setzt es fort",
    ),
    "onboarding1AnimLabel": MessageLookupByLibrary.simpleMessage(
      "zappit.tv/get wird im Browser eingegeben und die Zappit-Erweiterung hinzugefügt",
    ),
    "onboarding1Body": m16,
    "onboarding1Title": MessageLookupByLibrary.simpleMessage(
      "Füge zuerst die Zappit-Erweiterung zu deinem Browser hinzu",
    ),
    "onboarding2AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Klick auf das Zappit-Symbol im Browser, dann wird der QR-Code mit dem Handy gescannt",
    ),
    "onboarding2Body": MessageLookupByLibrary.simpleMessage(
      "Klicke in der Symbolleiste deines Browsers auf das Zappit-Symbol und scanne dann den QR-Code. Sobald die Verbindung steht, spiel ein YouTube-Video ab und erlebe die Magie!",
    ),
    "onboarding2Title": MessageLookupByLibrary.simpleMessage("QR-Code scannen"),
    "onboardingGetStarted": MessageLookupByLibrary.simpleMessage("Los geht’s"),
    "onboardingIconHelp": MessageLookupByLibrary.simpleMessage(
      "Zappit-Symbol nicht zu sehen?",
    ),
    "onboardingIconHelpLabel": MessageLookupByLibrary.simpleMessage(
      "Zappit-Symbol nicht zu sehen? Öffnet die Antwort in den FAQ",
    ),
    "onboardingNext": MessageLookupByLibrary.simpleMessage("Weiter"),
    "onboardingOpenQrScanner": MessageLookupByLibrary.simpleMessage(
      "QR-Scanner öffnen",
    ),
    "onboardingShareLink": MessageLookupByLibrary.simpleMessage(
      "Installationslink senden",
    ),
    "onboardingStepCount": m17,
    "onboardingStepLabel": m18,
    "onboardingWelcomeBody": MessageLookupByLibrary.simpleMessage(
      "Steuere jedes Video in deinem Browser. Die Einrichtung dauert nur zwei kurze Schritte.",
    ),
    "onboardingWelcomeTitle": MessageLookupByLibrary.simpleMessage(
      "Dein Handy ist jetzt deine Fernbedienung",
    ),
    "openALink": MessageLookupByLibrary.simpleMessage("Link öffnen"),
    "openBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "Öffne deinen Browser mit der Zappit-Erweiterung, um seine Tabs zu sehen.",
    ),
    "openLinkInBrowser": MessageLookupByLibrary.simpleMessage(
      "Link im Browser öffnen",
    ),
    "openSite": m19,
    "openedIn": m20,
    "openingIn": m21,
    "pairCodeExpired": MessageLookupByLibrary.simpleMessage(
      "Dieser Code ist abgelaufen. Scanne den neuen Code auf deinem Computer.",
    ),
    "pairCodeInvalid": MessageLookupByLibrary.simpleMessage(
      "Dieser Code ist nicht mehr gültig. Scanne den neuen Code auf deinem Computer.",
    ),
    "pairCodeUsed": MessageLookupByLibrary.simpleMessage(
      "Dieser Code wurde schon verwendet. Scanne den neuen Code auf deinem Computer.",
    ),
    "pairFailed": MessageLookupByLibrary.simpleMessage(
      "Verbindung fehlgeschlagen. Prüfe deine Internetverbindung und versuch es noch einmal.",
    ),
    "pairHowToInstall": MessageLookupByLibrary.simpleMessage(
      "So installierst du die Erweiterung",
    ),
    "pairPhoneLimit": MessageLookupByLibrary.simpleMessage(
      "Mit diesem Computer sind bereits 3 Handys verbunden. Öffne Zappit auf einem deiner anderen verbundenen Handys und tippe unter „Mehr“ auf „Dieses Handy trennen“. Wenn du keinen Zugriff auf die anderen Handys hast, öffne in der Zappit-Erweiterung auf deinem Computer die „Einstellungen“ und klicke auf „Zurücksetzen“.",
    ),
    "pairTitle": MessageLookupByLibrary.simpleMessage(
      "Mit der Browsererweiterung verbinden",
    ),
    "paste": MessageLookupByLibrary.simpleMessage("Einfügen"),
    "pasteALink": MessageLookupByLibrary.simpleMessage("Link einfügen"),
    "pasteVideoLink": MessageLookupByLibrary.simpleMessage(
      "Videolink einfügen",
    ),
    "pause": MessageLookupByLibrary.simpleMessage("Pause"),
    "paymentPending": MessageLookupByLibrary.simpleMessage(
      "Zahlung ausstehend",
    ),
    "paymentPendingMessage": MessageLookupByLibrary.simpleMessage(
      "Pro wird aktiviert, sobald deine Zahlung bestätigt ist.",
    ),
    "phoneName": MessageLookupByLibrary.simpleMessage("Name des Handys"),
    "phoneNameEmpty": MessageLookupByLibrary.simpleMessage(
      "Gib einen Namen ein.",
    ),
    "phoneNameMessage": MessageLookupByLibrary.simpleMessage(
      "Wird in der Zappit-Erweiterung auf deinem Computer angezeigt.",
    ),
    "pickATab": MessageLookupByLibrary.simpleMessage("Tab auswählen"),
    "pickBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "Wähle den Browser, den diese Fernbedienung steuern soll, um seine Tabs zu sehen.",
    ),
    "pickVideosWithPro": MessageLookupByLibrary.simpleMessage(
      "Mit Pro Videos am Handy auswählen",
    ),
    "play": MessageLookupByLibrary.simpleMessage("Abspielen"),
    "playInApp": MessageLookupByLibrary.simpleMessage("Am Handy weiterschauen"),
    "playNow": MessageLookupByLibrary.simpleMessage("Jetzt abspielen"),
    "playVideoFirst": MessageLookupByLibrary.simpleMessage(
      "Spiele zuerst ein Video im Browser ab",
    ),
    "playing": MessageLookupByLibrary.simpleMessage("Läuft"),
    "playlist": MessageLookupByLibrary.simpleMessage("Playlist"),
    "playlistCantRepeat": MessageLookupByLibrary.simpleMessage(
      "Diese Playlist kann nicht wiederholt werden",
    ),
    "playlistCantShuffle": MessageLookupByLibrary.simpleMessage(
      "Diese Playlist kann nicht gemischt werden",
    ),
    "previousChapter": MessageLookupByLibrary.simpleMessage(
      "Vorheriges Kapitel",
    ),
    "previousTab": MessageLookupByLibrary.simpleMessage("Vorheriger Tab"),
    "previousVideo": MessageLookupByLibrary.simpleMessage("Vorheriges Video"),
    "pricePerMonth": m22,
    "pricePerYear": m23,
    "privacyPolicy": MessageLookupByLibrary.simpleMessage(
      "Datenschutzerklärung",
    ),
    "proBannerSubtitle": MessageLookupByLibrary.simpleMessage(
      "Hol das Beste aus deiner Fernbedienung heraus",
    ),
    "proFeatureAbLoop": MessageLookupByLibrary.simpleMessage(
      "Unbegrenzter A-B-Loop",
    ),
    "proFeatureAllSpeeds": MessageLookupByLibrary.simpleMessage(
      "Alle Wiedergabegeschwindigkeiten verfügbar",
    ),
    "proFeatureDedicatedControllers": MessageLookupByLibrary.simpleMessage(
      "Angepasste Fernbedienungen für unterstützte Websites",
    ),
    "proFeatureFullLoop": MessageLookupByLibrary.simpleMessage(
      "Unbegrenzte Wiederholung ganzer Videos",
    ),
    "proFeatureVoiceBoost": MessageLookupByLibrary.simpleMessage(
      "Unbegrenzter Voice Boost",
    ),
    "proPreviewActiveBanner": m24,
    "proPreviewEndedMessage": MessageLookupByLibrary.simpleMessage(
      "Danke, dass du Zappit Pro ausprobiert hast! Mit einem Abo kannst du alle Pro-Funktionen weiter nutzen.",
    ),
    "proPreviewEndedSubtitle": m25,
    "proPreviewEndedTitle": MessageLookupByLibrary.simpleMessage(
      "Deine Pro-Testphase ist abgelaufen",
    ),
    "proPreviewEndsTomorrow": MessageLookupByLibrary.simpleMessage(
      "Pro-Testphase endet morgen",
    ),
    "proPreviewStarted": m26,
    "proPreviewUntil": m27,
    "proRestored": m28,
    "proSubscriptionEnded": MessageLookupByLibrary.simpleMessage(
      "Dein Pro-Abo ist abgelaufen",
    ),
    "proSubtitle": MessageLookupByLibrary.simpleMessage(
      "Hol das Beste aus deiner Fernbedienung heraus.",
    ),
    "purchaseCancelled": MessageLookupByLibrary.simpleMessage(
      "Kauf abgebrochen",
    ),
    "purchaseCancelledMessage": MessageLookupByLibrary.simpleMessage(
      "Es wurde nichts abgebucht. Du kannst es jederzeit noch einmal versuchen.",
    ),
    "purchaseFailed": MessageLookupByLibrary.simpleMessage(
      "Kauf fehlgeschlagen",
    ),
    "purchaseNotActivated": MessageLookupByLibrary.simpleMessage(
      "Kauf nicht aktiviert",
    ),
    "purchaseNotActivatedMessage": MessageLookupByLibrary.simpleMessage(
      "Dein Kauf war erfolgreich, aber Pro ist noch nicht aktiv. Tippe auf „Käufe wiederherstellen“.",
    ),
    "purchasesNotAllowed": MessageLookupByLibrary.simpleMessage(
      "Käufe sind auf diesem Gerät oder Konto nicht erlaubt.",
    ),
    "qualityNotChanged": MessageLookupByLibrary.simpleMessage(
      "Die Qualität hat sich nicht geändert",
    ),
    "rateZappit": MessageLookupByLibrary.simpleMessage("Zappit bewerten"),
    "reload": MessageLookupByLibrary.simpleMessage("Neu laden"),
    "remindMe": MessageLookupByLibrary.simpleMessage("Erinnern"),
    "remoteSettings": MessageLookupByLibrary.simpleMessage(
      "Einstellungen der Fernbedienung",
    ),
    "removeFromFavorites": m29,
    "removedFromFavorites": m30,
    "reorderHint": MessageLookupByLibrary.simpleMessage(
      "Halte einen Eintrag gedrückt und zieh ihn, um die Reihenfolge zu ändern",
    ),
    "reorderSite": m31,
    "repeatOff": MessageLookupByLibrary.simpleMessage("Wiederholen aus"),
    "repeatOffNotice": MessageLookupByLibrary.simpleMessage("Wiederholen aus"),
    "repeatOn": MessageLookupByLibrary.simpleMessage("Wiederholen an"),
    "repeatingPlaylist": MessageLookupByLibrary.simpleMessage(
      "Playlist wird wiederholt",
    ),
    "replay": MessageLookupByLibrary.simpleMessage("Von vorn abspielen"),
    "restoreFailed": MessageLookupByLibrary.simpleMessage(
      "Wiederherstellen fehlgeschlagen",
    ),
    "restorePurchases": MessageLookupByLibrary.simpleMessage(
      "Käufe wiederherstellen",
    ),
    "right": MessageLookupByLibrary.simpleMessage("Rechts"),
    "save": MessageLookupByLibrary.simpleMessage("Speichern"),
    "savePercent": m32,
    "searchCategories": MessageLookupByLibrary.simpleMessage(
      "Kategorien suchen",
    ),
    "seasonNumber": m33,
    "secondsShort": m34,
    "seekInterval": MessageLookupByLibrary.simpleMessage("Sprungweite"),
    "select": MessageLookupByLibrary.simpleMessage("Auswählen"),
    "selectVideoInBrowser": MessageLookupByLibrary.simpleMessage(
      "Nichts läuft",
    ),
    "selectVideoInBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "Klicke auf dem Computer auf ein beliebiges Video, um loszulegen. Die Fernbedienung erscheint dann hier.",
    ),
    "send": MessageLookupByLibrary.simpleMessage("Senden"),
    "settings": MessageLookupByLibrary.simpleMessage("Einstellungen"),
    "showChat": MessageLookupByLibrary.simpleMessage("Chat einblenden"),
    "shuffleOff": MessageLookupByLibrary.simpleMessage("Zufallswiedergabe aus"),
    "shuffleOffNotice": MessageLookupByLibrary.simpleMessage(
      "Zufallswiedergabe aus",
    ),
    "shuffleOn": MessageLookupByLibrary.simpleMessage("Zufallswiedergabe an"),
    "shufflingPlaylist": MessageLookupByLibrary.simpleMessage(
      "Playlist wird zufällig wiedergegeben",
    ),
    "siteSettings": m35,
    "siteWeb": MessageLookupByLibrary.simpleMessage("Web"),
    "skipAd": MessageLookupByLibrary.simpleMessage("Werbung überspringen"),
    "skipIntro": MessageLookupByLibrary.simpleMessage("Intro überspringen"),
    "sleepTimer": MessageLookupByLibrary.simpleMessage("Sleep-Timer"),
    "sleepTimerLabel": MessageLookupByLibrary.simpleMessage("Sleep-Timer"),
    "smallerCaptions": MessageLookupByLibrary.simpleMessage(
      "Kleinere Untertitel",
    ),
    "soundBlockedMessage": MessageLookupByLibrary.simpleMessage(
      "Tippe, um zu sehen, wie du den Ton einschaltest.",
    ),
    "soundBlockedTitle": MessageLookupByLibrary.simpleMessage(
      "Warum höre ich nichts?",
    ),
    "soundHelpTitle": MessageLookupByLibrary.simpleMessage("Ton"),
    "speedTrialOver": m36,
    "startFreeTrial": MessageLookupByLibrary.simpleMessage("Gratis testen"),
    "storeProblem": MessageLookupByLibrary.simpleMessage(
      "Beim Kauf ist ein Problem aufgetreten. Bitte versuch es gleich noch einmal.",
    ),
    "storeUnavailable": MessageLookupByLibrary.simpleMessage(
      "Käufe sind gerade nicht möglich. Bitte versuch es später noch einmal.",
    ),
    "subscribe": MessageLookupByLibrary.simpleMessage("Abonnieren"),
    "success": MessageLookupByLibrary.simpleMessage("Erledigt"),
    "support": MessageLookupByLibrary.simpleMessage("Hilfe"),
    "supportedSites": MessageLookupByLibrary.simpleMessage(
      "Unterstützte Websites",
    ),
    "supportedSitesIntro": MessageLookupByLibrary.simpleMessage(
      "Für diese Websites gibt es eine speziell angepasste Fernbedienung. Auf allen anderen Websites funktioniert Zappit als normale Fernbedienung.",
    ),
    "tabMore": MessageLookupByLibrary.simpleMessage("Mehr"),
    "tabRemote": MessageLookupByLibrary.simpleMessage("Fernbedienung"),
    "tabTabs": MessageLookupByLibrary.simpleMessage("Tabs"),
    "tapToKeepPro": MessageLookupByLibrary.simpleMessage(
      "Tippe, um alle Pro-Funktionen zu behalten.",
    ),
    "tellAFriend": MessageLookupByLibrary.simpleMessage("Weiterempfehlen"),
    "termsOfService": MessageLookupByLibrary.simpleMessage(
      "Nutzungsbedingungen",
    ),
    "theaterMode": MessageLookupByLibrary.simpleMessage("Kinomodus"),
    "trialReminderBody": m37,
    "trialReminderChannel": MessageLookupByLibrary.simpleMessage(
      "Erinnerung an den Gratis-Test",
    ),
    "trialReminderChannelDescription": MessageLookupByLibrary.simpleMessage(
      "Eine Erinnerung, bevor dein Gratis-Test endet",
    ),
    "trialReminderMessage": MessageLookupByLibrary.simpleMessage(
      "Sollen wir dich am Tag vor dem Ende deines Gratis-Tests erinnern, damit du nie unerwartet zahlst?",
    ),
    "trialReminderNotificationTitle": MessageLookupByLibrary.simpleMessage(
      "Dein Gratis-Test von Zappit Pro endet bald",
    ),
    "trialReminderTitle": MessageLookupByLibrary.simpleMessage(
      "Erinnerung an den Gratis-Test",
    ),
    "trialTerms": m38,
    "trialTermsDays": m39,
    "trialTermsMonths": m40,
    "trialTermsYears": m41,
    "tryAgain": MessageLookupByLibrary.simpleMessage("Erneut versuchen"),
    "turnOffAbFirst": MessageLookupByLibrary.simpleMessage(
      "Schalte zuerst den A-B-Loop aus",
    ),
    "tutorial": MessageLookupByLibrary.simpleMessage("Anleitung"),
    "unavailable": MessageLookupByLibrary.simpleMessage("Nicht verfügbar"),
    "undo": MessageLookupByLibrary.simpleMessage("Rückgängig"),
    "unmute": MessageLookupByLibrary.simpleMessage("Ton an"),
    "untitled": MessageLookupByLibrary.simpleMessage("Ohne Titel"),
    "up": MessageLookupByLibrary.simpleMessage("Hoch"),
    "upNext": MessageLookupByLibrary.simpleMessage("Als Nächstes"),
    "upNextCountdown": m42,
    "upgrade": MessageLookupByLibrary.simpleMessage("Upgrade"),
    "videoLengthUnknown": MessageLookupByLibrary.simpleMessage(
      "Die Länge dieses Videos ist unbekannt",
    ),
    "videoQuality": MessageLookupByLibrary.simpleMessage("Videoqualität"),
    "view": MessageLookupByLibrary.simpleMessage("Ansehen"),
    "voiceBoostDuringAd": MessageLookupByLibrary.simpleMessage(
      "Voice Boost ist während einer Werbung nicht verfügbar",
    ),
    "voiceBoostOff": MessageLookupByLibrary.simpleMessage("Voice Boost aus"),
    "voiceBoostOn": MessageLookupByLibrary.simpleMessage("Voice Boost an"),
    "voiceBoostTrialLeft": m43,
    "voiceBoostTrialOver": m44,
    "voiceBoostTurnedOn": MessageLookupByLibrary.simpleMessage(
      "Voice Boost an: Stimmen sind besser zu hören",
    ),
    "voiceBoostUnsupported": MessageLookupByLibrary.simpleMessage(
      "Dieses Video unterstützt Voice Boost nicht",
    ),
    "volumeDown": MessageLookupByLibrary.simpleMessage("Leiser"),
    "volumeUp": MessageLookupByLibrary.simpleMessage("Lauter"),
    "waitingForBrowser": MessageLookupByLibrary.simpleMessage(
      "Warte auf deinen Browser…",
    ),
    "watchAgain": MessageLookupByLibrary.simpleMessage("Noch einmal ansehen"),
    "watching": MessageLookupByLibrary.simpleMessage("Läuft gerade"),
    "welcomeToPro": m45,
    "windowNumber": m46,
    "yearly": MessageLookupByLibrary.simpleMessage("Jährlich"),
    "yourBrowser": MessageLookupByLibrary.simpleMessage("deinem Browser"),
    "youreConnected": MessageLookupByLibrary.simpleMessage("Verbunden!"),
    "youreOffline": MessageLookupByLibrary.simpleMessage("Du bist offline"),
    "youtubeHome": MessageLookupByLibrary.simpleMessage("YouTube-Startseite"),
    "ytCourses": MessageLookupByLibrary.simpleMessage("Kurse"),
    "ytDownloads": MessageLookupByLibrary.simpleMessage("Downloads"),
    "ytExplore": MessageLookupByLibrary.simpleMessage("Entdecken"),
    "ytGaming": MessageLookupByLibrary.simpleMessage("Gaming"),
    "ytHistory": MessageLookupByLibrary.simpleMessage("Verlauf"),
    "ytHype": MessageLookupByLibrary.simpleMessage("Hype"),
    "ytLikedVideos": MessageLookupByLibrary.simpleMessage(
      "Videos mit „Mag ich“",
    ),
    "ytLive": MessageLookupByLibrary.simpleMessage("Live"),
    "ytMemberships": MessageLookupByLibrary.simpleMessage("Mitgliedschaften"),
    "ytMusic": MessageLookupByLibrary.simpleMessage("Musik"),
    "ytPlaylists": MessageLookupByLibrary.simpleMessage("Playlists"),
    "ytPodcasts": MessageLookupByLibrary.simpleMessage("Podcasts"),
    "ytShorts": MessageLookupByLibrary.simpleMessage("Shorts"),
    "ytSubscriptions": MessageLookupByLibrary.simpleMessage("Abos"),
    "ytVideos": MessageLookupByLibrary.simpleMessage("Videos"),
    "ytWatchLater": MessageLookupByLibrary.simpleMessage("Später ansehen"),
    "ytYou": MessageLookupByLibrary.simpleMessage("Du"),
  };
}
