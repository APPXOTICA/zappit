// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pl locale. All the
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
  String get localeName => 'pl';

  static String m0(site) => "Dodaj ${site} do Ulubionych";

  static String m1(count) => "${count} s do tyłu";

  static String m2(browser) =>
      "${browser} nie odpowiada. Sprawdź, czy przeglądarka jest otwarta.";

  static String m3(browsers) => "Odłączono od: ${browsers}";

  static String m4(name) => "Kanał: ${name}";

  static String m5(current, total) => "Rozdział ${current}/${total}";

  static String m6(browser) => "Połączono z ${browser}";

  static String m7(count) => "${count} s do przodu";

  static String m8(count) => "Za darmo: ${count} dni";

  static String m9(count) => "Za darmo: ${count} mies.";

  static String m10(count) => "Za darmo: ${count} tydz.";

  static String m11(count) => "Za darmo: ${count} r.";

  static String m12(price) => "Tylko ${price}/mies.";

  static String m13(count) =>
      "${Intl.plural(count, one: '1 minuta', few: '${count} minuty', many: '${count} minut', other: '${count} minuty')}";

  static String m14(count) => "${count} min";

  static String m15(time) => "Nowy kod za ${time}";

  static String m16(url) =>
      "Otwórz ${url} w przeglądarce na komputerze, aby zainstalować rozszerzenie Zappit.";

  static String m17(current, total) => "${current} / ${total}";

  static String m18(current, total) => "Krok ${current} z ${total}";

  static String m19(site) => "Otwórz ${site}";

  static String m20(browser) => "Otwarto w ${browser}";

  static String m21(browser) => "Otwieranie w ${browser}…";

  static String m22(price) => "${price} / mies.";

  static String m23(price) => "${price} / rok";

  static String m24(date) =>
      "Twój darmowy podgląd Pro jest aktywny do ${date}. Zasubskrybuj przed jego końcem, aby bez przerwy korzystać ze wszystkich funkcji Pro.";

  static String m25(proName) =>
      "Twój podgląd Pro się skończył. Zachowaj wszystkie funkcje Pro z ${proName}.";

  static String m26(days) =>
      "Korzystaj za darmo ze wszystkich funkcji Zappit Pro przez ${days} dni. Bez karty i bez automatycznych opłat.";

  static String m27(date) => "Podgląd Pro do ${date}";

  static String m28(proName) => "Przywrócono ${proName}";

  static String m29(site) => "Usuń ${site} z Ulubionych";

  static String m30(site) => "Usunięto ${site} z Ulubionych";

  static String m31(site) => "Przenieś ${site}";

  static String m32(percent) => "Oszczędzasz ${percent}%";

  static String m33(number) => "Sezon ${number}";

  static String m34(count) => "${count} s";

  static String m35(site) => "Ustawienia: ${site}";

  static String m36(count) =>
      "Z powrotem 1x. Bez Pro możesz używać tej prędkości przez ${count} s.";

  static String m37(price, date) =>
      "Twój darmowy okres próbny kończy się jutro. ${date} zostanie pobrane ${price}. Jeśli nie chcesz kontynuować, anuluj subskrypcję wcześniej.";

  static String m38(price) =>
      "Najpierw darmowy okres próbny, potem ${price}/rok.";

  static String m39(count, price) =>
      "Najpierw ${count} dni za darmo, potem ${price}/rok.";

  static String m40(count, price) =>
      "Najpierw ${count} mies. za darmo, potem ${price}/rok.";

  static String m41(count, price) =>
      "Najpierw ${count} r. za darmo, potem ${price}/rok.";

  static String m42(count) => "Następne · za ${count} s";

  static String m43(count) => "Próbny Voice Boost, zostało ${count} s";

  static String m44(count) =>
      "Voice Boost wyłączony. Bez Pro możesz używać Voice Boost przez ${count} s.";

  static String m45(proName) => "Witaj w ${proName}";

  static String m46(number) => "Okno ${number}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "abLoopCount": MessageLookupByLibrary.simpleMessage(
      "Liczba powtórzeń A-B Loop",
    ),
    "abOffForLive": MessageLookupByLibrary.simpleMessage(
      "A-B Loop jest wyłączony w transmisjach na żywo",
    ),
    "account": MessageLookupByLibrary.simpleMessage("Połączenie"),
    "adBadge": MessageLookupByLibrary.simpleMessage("REKLAMA"),
    "addToFavorites": m0,
    "allCategories": MessageLookupByLibrary.simpleMessage(
      "Wszystkie kategorie",
    ),
    "allSites": MessageLookupByLibrary.simpleMessage("Wszystkie strony"),
    "alreadySubscribed": MessageLookupByLibrary.simpleMessage(
      "Masz już tę subskrypcję. Spróbuj Przywróć zakupy.",
    ),
    "back": MessageLookupByLibrary.simpleMessage("Wstecz"),
    "backSeconds": m1,
    "banned": MessageLookupByLibrary.simpleMessage(
      "Niestety dostęp został zablokowany.",
    ),
    "browserDidNotAnswer": m2,
    "browserNotResponding": MessageLookupByLibrary.simpleMessage(
      "Przeglądarka nie odpowiada",
    ),
    "browsers": MessageLookupByLibrary.simpleMessage("Przeglądarki"),
    "browsersDisconnected": m3,
    "browsersDisconnectedBody": MessageLookupByLibrary.simpleMessage(
      "Połączył się z nim inny telefon. Aby znów go używać, zeskanuj kod QR na tamtym komputerze.",
    ),
    "cameraDenied": MessageLookupByLibrary.simpleMessage(
      "Zezwól na dostęp do aparatu w Ustawieniach, aby zeskanować kod.",
    ),
    "cameraUnavailable": MessageLookupByLibrary.simpleMessage(
      "Aparat jest teraz niedostępny.",
    ),
    "cancel": MessageLookupByLibrary.simpleMessage("Anuluj"),
    "cancelAnytime": MessageLookupByLibrary.simpleMessage(
      "Anulujesz w dowolnej chwili na koncie sklepu.",
    ),
    "cantLoadPage": MessageLookupByLibrary.simpleMessage(
      "Nie można wczytać tej strony",
    ),
    "cantOpenOnPhone": MessageLookupByLibrary.simpleMessage(
      "Tego wideo nie można otworzyć na telefonie",
    ),
    "cantReachBrowser": MessageLookupByLibrary.simpleMessage(
      "Brak połączenia z przeglądarką",
    ),
    "cantSeekVideo": MessageLookupByLibrary.simpleMessage(
      "W tym wideo nie można przewijać",
    ),
    "captionLanguage": MessageLookupByLibrary.simpleMessage("Język napisów"),
    "captions": MessageLookupByLibrary.simpleMessage("Napisy"),
    "captionsOff": MessageLookupByLibrary.simpleMessage("Napisy wyłączone"),
    "captionsOn": MessageLookupByLibrary.simpleMessage("Napisy włączone"),
    "categories": MessageLookupByLibrary.simpleMessage("Kategorie"),
    "categoryFavoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "Dotknij gwiazdki przy kategorii, aby dodać ją tutaj.",
    ),
    "channelLabel": m4,
    "chapterPosition": m5,
    "chapters": MessageLookupByLibrary.simpleMessage("Rozdziały"),
    "chaptersDuringAd": MessageLookupByLibrary.simpleMessage(
      "Podczas reklamy nie można przeskakiwać rozdziałów",
    ),
    "checkConnection": MessageLookupByLibrary.simpleMessage(
      "Sprawdź połączenie z internetem i spróbuj ponownie.",
    ),
    "checkConnectionShort": MessageLookupByLibrary.simpleMessage(
      "Sprawdź połączenie i spróbuj ponownie.",
    ),
    "chooseBrowser": MessageLookupByLibrary.simpleMessage(
      "Wybierz przeglądarkę",
    ),
    "chooseNextVideo": MessageLookupByLibrary.simpleMessage(
      "Wybierz następne wideo",
    ),
    "clear": MessageLookupByLibrary.simpleMessage("Wyczyść"),
    "close": MessageLookupByLibrary.simpleMessage("Zamknij"),
    "connectBrowser": MessageLookupByLibrary.simpleMessage(
      "Połącz przeglądarkę",
    ),
    "connectBrowserFirst": MessageLookupByLibrary.simpleMessage(
      "Najpierw połącz się z przeglądarką",
    ),
    "connected": MessageLookupByLibrary.simpleMessage("Połączono"),
    "connectedTo": m6,
    "contactUs": MessageLookupByLibrary.simpleMessage("Kontakt"),
    "contactUsKeepInfo": MessageLookupByLibrary.simpleMessage(
      "Nie usuwaj poniższych informacji.",
    ),
    "couldNotGetVideoLink": MessageLookupByLibrary.simpleMessage(
      "Nie udało się pobrać linku do wideo",
    ),
    "couldNotLoadEpisodes": MessageLookupByLibrary.simpleMessage(
      "Nie udało się wczytać odcinków",
    ),
    "couldNotLoadPlaylist": MessageLookupByLibrary.simpleMessage(
      "Nie udało się wczytać playlisty",
    ),
    "couldNotOpenLink": MessageLookupByLibrary.simpleMessage(
      "Nie udało się otworzyć linku",
    ),
    "couldNotReadQuality": MessageLookupByLibrary.simpleMessage(
      "Nie udało się odczytać opcji jakości ze strony.",
    ),
    "delete": MessageLookupByLibrary.simpleMessage("Usuń"),
    "disconnect": MessageLookupByLibrary.simpleMessage("Odłącz"),
    "disconnectPhone": MessageLookupByLibrary.simpleMessage(
      "Odłącz ten telefon",
    ),
    "disconnectPhoneMessage": MessageLookupByLibrary.simpleMessage(
      "Ten telefon przestanie sterować komputerem. Aby znów go używać, zeskanuj kod QR na komputerze.",
    ),
    "down": MessageLookupByLibrary.simpleMessage("W dół"),
    "endOfVideo": MessageLookupByLibrary.simpleMessage("Koniec wideo"),
    "enterValidLink": MessageLookupByLibrary.simpleMessage(
      "Wpisz link zaczynający się od http lub https",
    ),
    "episodes": MessageLookupByLibrary.simpleMessage("Odcinki"),
    "error": MessageLookupByLibrary.simpleMessage("Błąd"),
    "errorButtonNotFound": MessageLookupByLibrary.simpleMessage(
      "Nie znaleziono tego przycisku na stronie",
    ),
    "errorDuringAd": MessageLookupByLibrary.simpleMessage(
      "Nie można tego zrobić podczas reklamy",
    ),
    "errorEndBeforeStart": MessageLookupByLibrary.simpleMessage(
      "Punkt końcowy musi być po punkcie początkowym",
    ),
    "errorGeneric": MessageLookupByLibrary.simpleMessage("Coś poszło nie tak"),
    "errorInvalidUrl": MessageLookupByLibrary.simpleMessage(
      "Nie można otworzyć tego linku",
    ),
    "errorNoBrowser": MessageLookupByLibrary.simpleMessage(
      "Nie wybrano przeglądarki",
    ),
    "errorNoMedia": MessageLookupByLibrary.simpleMessage(
      "Żadne wideo nie jest odtwarzane",
    ),
    "errorNotChanged": MessageLookupByLibrary.simpleMessage(
      "Strona tego nie zmieniła",
    ),
    "errorNotSupported": MessageLookupByLibrary.simpleMessage(
      "Ta strona tego nie obsługuje",
    ),
    "errorStartAfterEnd": MessageLookupByLibrary.simpleMessage(
      "Punkt początkowy musi być przed punktem końcowym",
    ),
    "errorTabClosed": MessageLookupByLibrary.simpleMessage(
      "Ta karta jest już zamknięta",
    ),
    "exitFullScreen": MessageLookupByLibrary.simpleMessage(
      "Zamknij pełny ekran",
    ),
    "extensionUpdatedReload": MessageLookupByLibrary.simpleMessage(
      "Rozszerzenie Zappit zostało zaktualizowane. Odśwież tę stronę, aby dalej korzystać ze wszystkich przycisków.",
    ),
    "faq": MessageLookupByLibrary.simpleMessage("Częste pytania"),
    "favorites": MessageLookupByLibrary.simpleMessage("Ulubione"),
    "favoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "Dotknij gwiazdki przy stronie, aby dodać ją tutaj.",
    ),
    "forwardSeconds": m7,
    "frameByFrame": MessageLookupByLibrary.simpleMessage("Klatka po klatce"),
    "freeTrial": MessageLookupByLibrary.simpleMessage("Darmowy okres próbny"),
    "freeTrialDays": m8,
    "freeTrialMonths": m9,
    "freeTrialWeeks": m10,
    "freeTrialYears": m11,
    "fullPowerUnlocked": MessageLookupByLibrary.simpleMessage(
      "Wszystkie funkcje odblokowane",
    ),
    "fullScreen": MessageLookupByLibrary.simpleMessage("Pełny ekran"),
    "generalSettings": MessageLookupByLibrary.simpleMessage(
      "Ustawienia ogólne",
    ),
    "gotIt": MessageLookupByLibrary.simpleMessage("Rozumiem"),
    "hideChat": MessageLookupByLibrary.simpleMessage("Ukryj czat"),
    "home": MessageLookupByLibrary.simpleMessage("Strona główna"),
    "justPerMonth": m12,
    "largerCaptions": MessageLookupByLibrary.simpleMessage("Większe napisy"),
    "lastVideoInPlaylist": MessageLookupByLibrary.simpleMessage(
      "To ostatnie wideo na playliście",
    ),
    "learnMore": MessageLookupByLibrary.simpleMessage("Więcej"),
    "left": MessageLookupByLibrary.simpleMessage("W lewo"),
    "linkPanelHint": MessageLookupByLibrary.simpleMessage(
      "Wklej link do wideo i dotknij Wyślij. Otworzy się w nowej karcie przeglądarki.",
    ),
    "liveBadge": MessageLookupByLibrary.simpleMessage("NA ŻYWO"),
    "liveCantRewind": MessageLookupByLibrary.simpleMessage(
      "Tej transmisji na żywo nie można przewinąć",
    ),
    "longPressSpeed": MessageLookupByLibrary.simpleMessage(
      "Prędkość przy przytrzymaniu",
    ),
    "loopEnd": MessageLookupByLibrary.simpleMessage("Koniec pętli"),
    "loopOff": MessageLookupByLibrary.simpleMessage("Zapętlanie wyłączone"),
    "loopOn": MessageLookupByLibrary.simpleMessage("Zapętlanie włączone"),
    "loopStart": MessageLookupByLibrary.simpleMessage("Początek pętli"),
    "manageSubscription": MessageLookupByLibrary.simpleMessage(
      "Zarządzaj subskrypcją",
    ),
    "minutesCount": m13,
    "minutesShort": m14,
    "mixCantRepeat": MessageLookupByLibrary.simpleMessage(
      "Ta playlista bez końca odtwarza nowe filmy, więc nie można jej powtarzać",
    ),
    "mixCantShuffle": MessageLookupByLibrary.simpleMessage(
      "Ta playlista bez końca odtwarza nowe filmy, więc nie można jej odtwarzać losowo",
    ),
    "monthly": MessageLookupByLibrary.simpleMessage("Miesięcznie"),
    "multipleBrowsersMessage": MessageLookupByLibrary.simpleMessage(
      "Online jest kilka przeglądarek. Wybierz tę, którą ma sterować ten pilot.",
    ),
    "mute": MessageLookupByLibrary.simpleMessage("Wycisz"),
    "nextChapter": MessageLookupByLibrary.simpleMessage("Następny rozdział"),
    "nextEpisode": MessageLookupByLibrary.simpleMessage("Następny odcinek"),
    "nextTab": MessageLookupByLibrary.simpleMessage("Następna karta"),
    "nextVideo": MessageLookupByLibrary.simpleMessage("Następne wideo"),
    "noBrowser": MessageLookupByLibrary.simpleMessage("Brak przeglądarki"),
    "noBrowserConnectedShare": MessageLookupByLibrary.simpleMessage(
      "Żadna przeglądarka nie jest połączona. Otwórz przeglądarkę z rozszerzeniem Zappit i spróbuj ponownie.",
    ),
    "noBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "1. Otwórz na komputerze połączoną przeglądarkę.\n2. Jeśli się nie połączy, kliknij ikonę Zappit na pasku narzędzi przeglądarki.",
    ),
    "noBrowserOnline": MessageLookupByLibrary.simpleMessage(
      "Żadna przeglądarka nie jest online.",
    ),
    "noBrowserOnlineShort": MessageLookupByLibrary.simpleMessage(
      "Brak przeglądarki online",
    ),
    "noBrowserSelected": MessageLookupByLibrary.simpleMessage(
      "Nie wybrano przeglądarki",
    ),
    "noCategoriesFound": MessageLookupByLibrary.simpleMessage(
      "Nie znaleziono kategorii",
    ),
    "noLinkInShare": MessageLookupByLibrary.simpleMessage(
      "W udostępnionej treści nie ma linku",
    ),
    "noMoreTabs": MessageLookupByLibrary.simpleMessage("Nie ma więcej kart"),
    "noNextEpisode": MessageLookupByLibrary.simpleMessage(
      "Brak następnego odcinka",
    ),
    "noOpenTabs": MessageLookupByLibrary.simpleMessage("Brak otwartych kart"),
    "noPreviousPage": MessageLookupByLibrary.simpleMessage(
      "Nie ma poprzedniej strony",
    ),
    "noSiteSettings": MessageLookupByLibrary.simpleMessage(
      "Ta strona nie ma jeszcze ustawień.",
    ),
    "noSubtitles": MessageLookupByLibrary.simpleMessage(
      "To wideo nie ma napisów",
    ),
    "noThanks": MessageLookupByLibrary.simpleMessage("Nie, dzięki"),
    "noVideosOnPage": MessageLookupByLibrary.simpleMessage(
      "Na tej stronie nie ma filmów.",
    ),
    "notAvailableDuringAd": MessageLookupByLibrary.simpleMessage(
      "Niedostępne podczas reklamy",
    ),
    "notAvailableForLive": MessageLookupByLibrary.simpleMessage(
      "Niedostępne na żywo",
    ),
    "notAvailableForLiveStreams": MessageLookupByLibrary.simpleMessage(
      "Niedostępne podczas transmisji na żywo",
    ),
    "notAvailableForPhotos": MessageLookupByLibrary.simpleMessage(
      "Niedostępne w postach ze zdjęciami",
    ),
    "notConnected": MessageLookupByLibrary.simpleMessage("Nie połączono"),
    "nothingPlaying": MessageLookupByLibrary.simpleMessage(
      "Nie znaleziono wideo",
    ),
    "nothingPlayingMessage": MessageLookupByLibrary.simpleMessage(
      "Na tym ekranie nie ma wideo. Wybierz inną kartę albo wklej link do wideo.",
    ),
    "nothingToRestore": MessageLookupByLibrary.simpleMessage(
      "Nie ma czego przywracać",
    ),
    "nothingToRestoreMessage": MessageLookupByLibrary.simpleMessage(
      "Na tym koncie sklepu nie znaleziono aktywnej subskrypcji Zappit Pro.",
    ),
    "obAnimAddExtension": MessageLookupByLibrary.simpleMessage(
      "Dodaj rozszerzenie",
    ),
    "obAnimAdded": MessageLookupByLibrary.simpleMessage("Dodano"),
    "obAnimConnectComputer": MessageLookupByLibrary.simpleMessage(
      "Połącz się z komputerem",
    ),
    "obAnimConnectPhone": MessageLookupByLibrary.simpleMessage(
      "Połącz telefon",
    ),
    "obAnimNewCode": m15,
    "obAnimRemoteConnected": MessageLookupByLibrary.simpleMessage(
      "Pilot połączony",
    ),
    "obAnimScanCode": MessageLookupByLibrary.simpleMessage(
      "Zeskanuj ten kod aplikacją Zappit na telefonie.",
    ),
    "obAnimTagline": MessageLookupByLibrary.simpleMessage("Pożegnaj myszkę."),
    "obAnimYourPhones": MessageLookupByLibrary.simpleMessage("Twoje telefony"),
    "off": MessageLookupByLibrary.simpleMessage("Wył."),
    "offline": MessageLookupByLibrary.simpleMessage("Offline"),
    "offlineMessage": MessageLookupByLibrary.simpleMessage(
      "Sprawdź połączenie z internetem. Zappit połączy się ponownie sam.",
    ),
    "onboarding0AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Dotknięcie odtwarzania/pauzy w aplikacji Zappit wstrzymuje i wznawia wideo na laptopie",
    ),
    "onboarding1AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Wpisywanie zappit.tv/get w przeglądarce i dodawanie rozszerzenia Zappit",
    ),
    "onboarding1Body": m16,
    "onboarding1Title": MessageLookupByLibrary.simpleMessage(
      "Najpierw dodaj rozszerzenie Zappit do przeglądarki",
    ),
    "onboarding2AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Kliknięcie ikony Zappit w przeglądarce, a potem skanowanie kodu QR telefonem",
    ),
    "onboarding2Body": MessageLookupByLibrary.simpleMessage(
      "Kliknij ikonę Zappit na pasku narzędzi przeglądarki, a potem skieruj aparat na kod QR.",
    ),
    "onboarding2Title": MessageLookupByLibrary.simpleMessage("Zeskanuj kod QR"),
    "onboardingGetStarted": MessageLookupByLibrary.simpleMessage("Zaczynamy"),
    "onboardingIconHelp": MessageLookupByLibrary.simpleMessage(
      "Nie widzisz ikony Zappit?",
    ),
    "onboardingIconHelpLabel": MessageLookupByLibrary.simpleMessage(
      "Nie widzisz ikony Zappit? Otwiera odpowiedź w częstych pytaniach",
    ),
    "onboardingNext": MessageLookupByLibrary.simpleMessage("Dalej"),
    "onboardingOpenQrScanner": MessageLookupByLibrary.simpleMessage(
      "Otwórz skaner QR",
    ),
    "onboardingShareLink": MessageLookupByLibrary.simpleMessage(
      "Wyślij link do instalacji",
    ),
    "onboardingStepCount": m17,
    "onboardingStepLabel": m18,
    "onboardingWelcomeBody": MessageLookupByLibrary.simpleMessage(
      "Steruj dowolnym wideo na komputerze. Konfiguracja to tylko dwa szybkie kroki.",
    ),
    "onboardingWelcomeTitle": MessageLookupByLibrary.simpleMessage(
      "Twój telefon to teraz pilot",
    ),
    "openALink": MessageLookupByLibrary.simpleMessage("Otwórz link"),
    "openBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "Otwórz przeglądarkę z rozszerzeniem Zappit, aby zobaczyć jej karty.",
    ),
    "openLinkInBrowser": MessageLookupByLibrary.simpleMessage(
      "Otwórz link w przeglądarce",
    ),
    "openSite": m19,
    "openedIn": m20,
    "openingIn": m21,
    "pairCodeExpired": MessageLookupByLibrary.simpleMessage(
      "Ten kod wygasł. Zeskanuj nowy kod na komputerze.",
    ),
    "pairCodeInvalid": MessageLookupByLibrary.simpleMessage(
      "Ten kod jest już nieważny. Zeskanuj nowy kod na komputerze.",
    ),
    "pairCodeUsed": MessageLookupByLibrary.simpleMessage(
      "Ten kod został już użyty. Zeskanuj nowy kod na komputerze.",
    ),
    "pairFailed": MessageLookupByLibrary.simpleMessage(
      "Nie udało się połączyć. Sprawdź połączenie z internetem i spróbuj ponownie.",
    ),
    "pairHowToInstall": MessageLookupByLibrary.simpleMessage(
      "Jak zainstalować rozszerzenie",
    ),
    "pairPhoneLimit": MessageLookupByLibrary.simpleMessage(
      "Z tym komputerem połączone są już 3 telefony. Otwórz Zappit na jednym z pozostałych połączonych telefonów i dotknij „Odłącz ten telefon” w sekcji „Więcej”. Jeśli nie masz już tego telefonu, użyj opcji „Reset” w rozszerzeniu Zappit na komputerze.",
    ),
    "pairTitle": MessageLookupByLibrary.simpleMessage(
      "Połącz się z rozszerzeniem przeglądarki",
    ),
    "paste": MessageLookupByLibrary.simpleMessage("Wklej"),
    "pasteALink": MessageLookupByLibrary.simpleMessage("Wklej link"),
    "pasteVideoLink": MessageLookupByLibrary.simpleMessage(
      "Wklej link do wideo",
    ),
    "pause": MessageLookupByLibrary.simpleMessage("Pauza"),
    "paymentPending": MessageLookupByLibrary.simpleMessage("Płatność w toku"),
    "paymentPendingMessage": MessageLookupByLibrary.simpleMessage(
      "Pro włączy się, gdy tylko sklep potwierdzi płatność.",
    ),
    "phoneName": MessageLookupByLibrary.simpleMessage("Nazwa telefonu"),
    "phoneNameEmpty": MessageLookupByLibrary.simpleMessage("Wpisz nazwę."),
    "phoneNameMessage": MessageLookupByLibrary.simpleMessage(
      "Wyświetlana w rozszerzeniu Zappit na komputerze.",
    ),
    "pickATab": MessageLookupByLibrary.simpleMessage("Wybierz kartę"),
    "pickBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "Wybierz przeglądarkę, którą ma sterować ten pilot, aby zobaczyć jej karty.",
    ),
    "pickVideosWithPro": MessageLookupByLibrary.simpleMessage(
      "Wybieraj filmy z telefonu z Pro",
    ),
    "play": MessageLookupByLibrary.simpleMessage("Odtwórz"),
    "playInApp": MessageLookupByLibrary.simpleMessage(
      "Oglądaj dalej na telefonie",
    ),
    "playNow": MessageLookupByLibrary.simpleMessage("Odtwórz teraz"),
    "playVideoFirst": MessageLookupByLibrary.simpleMessage(
      "Najpierw włącz wideo w przeglądarce",
    ),
    "playing": MessageLookupByLibrary.simpleMessage("Odtwarzane"),
    "playlist": MessageLookupByLibrary.simpleMessage("Playlista"),
    "playlistCantRepeat": MessageLookupByLibrary.simpleMessage(
      "Tej playlisty nie można powtarzać",
    ),
    "playlistCantShuffle": MessageLookupByLibrary.simpleMessage(
      "Tej playlisty nie można odtwarzać losowo",
    ),
    "previousChapter": MessageLookupByLibrary.simpleMessage(
      "Poprzedni rozdział",
    ),
    "previousTab": MessageLookupByLibrary.simpleMessage("Poprzednia karta"),
    "previousVideo": MessageLookupByLibrary.simpleMessage("Poprzednie wideo"),
    "pricePerMonth": m22,
    "pricePerYear": m23,
    "privacyPolicy": MessageLookupByLibrary.simpleMessage(
      "Polityka prywatności",
    ),
    "proBannerSubtitle": MessageLookupByLibrary.simpleMessage(
      "Wykorzystaj pełnię możliwości pilota",
    ),
    "proFeatureAbLoop": MessageLookupByLibrary.simpleMessage(
      "A-B Loop bez limitu",
    ),
    "proFeatureAllSpeeds": MessageLookupByLibrary.simpleMessage(
      "Wszystkie prędkości odtwarzania",
    ),
    "proFeatureDedicatedControllers": MessageLookupByLibrary.simpleMessage(
      "Odblokuj piloty dopasowane do stron",
    ),
    "proFeatureFullLoop": MessageLookupByLibrary.simpleMessage(
      "Zapętlanie całego wideo bez limitu",
    ),
    "proFeatureVoiceBoost": MessageLookupByLibrary.simpleMessage(
      "Voice Boost bez limitu",
    ),
    "proPreviewActiveBanner": m24,
    "proPreviewEndedMessage": MessageLookupByLibrary.simpleMessage(
      "Dzięki za wypróbowanie Zappit Pro! Zasubskrybuj, aby dalej bez przerwy korzystać ze wszystkich funkcji Pro.",
    ),
    "proPreviewEndedSubtitle": m25,
    "proPreviewEndedTitle": MessageLookupByLibrary.simpleMessage(
      "Twój podgląd Pro się skończył",
    ),
    "proPreviewEndsTomorrow": MessageLookupByLibrary.simpleMessage(
      "Podgląd Pro kończy się jutro",
    ),
    "proPreviewStarted": m26,
    "proPreviewUntil": m27,
    "proRestored": m28,
    "proSubscriptionEnded": MessageLookupByLibrary.simpleMessage(
      "Twoja subskrypcja Pro się skończyła",
    ),
    "proSubtitle": MessageLookupByLibrary.simpleMessage(
      "Wykorzystaj pełnię możliwości pilota.",
    ),
    "purchaseCancelled": MessageLookupByLibrary.simpleMessage(
      "Zakup anulowany",
    ),
    "purchaseCancelledMessage": MessageLookupByLibrary.simpleMessage(
      "Nic nie zostało pobrane. Możesz spróbować ponownie w każdej chwili.",
    ),
    "purchaseFailed": MessageLookupByLibrary.simpleMessage(
      "Zakup się nie udał",
    ),
    "purchaseNotActivated": MessageLookupByLibrary.simpleMessage(
      "Zakup nieaktywny",
    ),
    "purchaseNotActivatedMessage": MessageLookupByLibrary.simpleMessage(
      "Płatność przeszła, ale Pro nie jest jeszcze aktywne. Spróbuj Przywróć zakupy.",
    ),
    "purchasesNotAllowed": MessageLookupByLibrary.simpleMessage(
      "Zakupy są niedozwolone na tym urządzeniu lub koncie.",
    ),
    "qualityNotChanged": MessageLookupByLibrary.simpleMessage(
      "Jakość się nie zmieniła",
    ),
    "rateZappit": MessageLookupByLibrary.simpleMessage("Oceń Zappit"),
    "reload": MessageLookupByLibrary.simpleMessage("Odśwież"),
    "remindMe": MessageLookupByLibrary.simpleMessage("Przypomnij"),
    "remoteSettings": MessageLookupByLibrary.simpleMessage("Ustawienia pilota"),
    "removeFromFavorites": m29,
    "removedFromFavorites": m30,
    "reorderHint": MessageLookupByLibrary.simpleMessage(
      "Przytrzymaj element i przeciągnij, aby zmienić kolejność",
    ),
    "reorderSite": m31,
    "repeatOff": MessageLookupByLibrary.simpleMessage("Powtarzanie wyłączone"),
    "repeatOffNotice": MessageLookupByLibrary.simpleMessage(
      "Powtarzanie wyłączone",
    ),
    "repeatOn": MessageLookupByLibrary.simpleMessage("Powtarzanie włączone"),
    "repeatingPlaylist": MessageLookupByLibrary.simpleMessage(
      "Powtarzanie tej playlisty",
    ),
    "replay": MessageLookupByLibrary.simpleMessage("Odtwórz od początku"),
    "restoreFailed": MessageLookupByLibrary.simpleMessage(
      "Nie udało się przywrócić",
    ),
    "restorePurchases": MessageLookupByLibrary.simpleMessage("Przywróć zakupy"),
    "right": MessageLookupByLibrary.simpleMessage("W prawo"),
    "save": MessageLookupByLibrary.simpleMessage("Zapisz"),
    "savePercent": m32,
    "searchCategories": MessageLookupByLibrary.simpleMessage(
      "Szukaj kategorii",
    ),
    "seasonNumber": m33,
    "secondsShort": m34,
    "seekInterval": MessageLookupByLibrary.simpleMessage("Skok przewijania"),
    "select": MessageLookupByLibrary.simpleMessage("Wybierz"),
    "selectVideoInBrowser": MessageLookupByLibrary.simpleMessage(
      "Nic nie jest odtwarzane",
    ),
    "selectVideoInBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "Kliknij dowolne wideo na komputerze, aby zacząć oglądać. Pilot pojawi się tutaj.",
    ),
    "send": MessageLookupByLibrary.simpleMessage("Wyślij"),
    "settings": MessageLookupByLibrary.simpleMessage("Ustawienia"),
    "showChat": MessageLookupByLibrary.simpleMessage("Pokaż czat"),
    "shuffleOff": MessageLookupByLibrary.simpleMessage(
      "Odtwarzanie losowe wyłączone",
    ),
    "shuffleOffNotice": MessageLookupByLibrary.simpleMessage(
      "Odtwarzanie losowe wyłączone",
    ),
    "shuffleOn": MessageLookupByLibrary.simpleMessage(
      "Odtwarzanie losowe włączone",
    ),
    "shufflingPlaylist": MessageLookupByLibrary.simpleMessage(
      "Losowe odtwarzanie tej playlisty",
    ),
    "siteSettings": m35,
    "siteWeb": MessageLookupByLibrary.simpleMessage("Sieć"),
    "skipAd": MessageLookupByLibrary.simpleMessage("Pomiń reklamę"),
    "skipIntro": MessageLookupByLibrary.simpleMessage("Pomiń czołówkę"),
    "sleepTimer": MessageLookupByLibrary.simpleMessage("Wyłącznik czasowy"),
    "sleepTimerLabel": MessageLookupByLibrary.simpleMessage(
      "Wyłącznik czasowy",
    ),
    "smallerCaptions": MessageLookupByLibrary.simpleMessage("Mniejsze napisy"),
    "somethingWrong": MessageLookupByLibrary.simpleMessage(
      "Niestety coś poszło nie tak.",
    ),
    "somethingWrongTryAgain": MessageLookupByLibrary.simpleMessage(
      "Niestety coś poszło nie tak. Spróbuj ponownie.",
    ),
    "soundBlockedMessage": MessageLookupByLibrary.simpleMessage(
      "Dotknij, aby zobaczyć, jak włączyć dźwięk.",
    ),
    "soundBlockedTitle": MessageLookupByLibrary.simpleMessage(
      "Dlaczego nic nie słychać?",
    ),
    "soundHelpTitle": MessageLookupByLibrary.simpleMessage("Dźwięk"),
    "speedTrialOver": m36,
    "startFreeTrial": MessageLookupByLibrary.simpleMessage("Zacznij za darmo"),
    "storeProblem": MessageLookupByLibrary.simpleMessage(
      "W sklepie wystąpił problem. Spróbuj ponownie za chwilę.",
    ),
    "storeUnavailable": MessageLookupByLibrary.simpleMessage(
      "Sklep jest teraz niedostępny. Spróbuj ponownie później.",
    ),
    "subscribe": MessageLookupByLibrary.simpleMessage("Subskrybuj"),
    "success": MessageLookupByLibrary.simpleMessage("Gotowe"),
    "support": MessageLookupByLibrary.simpleMessage("Pomoc"),
    "supportedSites": MessageLookupByLibrary.simpleMessage(
      "Obsługiwane strony",
    ),
    "supportedSitesIntro": MessageLookupByLibrary.simpleMessage(
      "Te strony mają pilota przygotowanego specjalnie dla nich. Na pozostałych stronach Zappit działa jak zwykły pilot.",
    ),
    "tabMore": MessageLookupByLibrary.simpleMessage("Więcej"),
    "tabRemote": MessageLookupByLibrary.simpleMessage("Pilot"),
    "tabTabs": MessageLookupByLibrary.simpleMessage("Karty"),
    "tapToKeepPro": MessageLookupByLibrary.simpleMessage(
      "Dotknij, aby zachować wszystkie funkcje Pro.",
    ),
    "tellAFriend": MessageLookupByLibrary.simpleMessage("Poleć znajomemu"),
    "termsOfService": MessageLookupByLibrary.simpleMessage(
      "Warunki korzystania",
    ),
    "theaterMode": MessageLookupByLibrary.simpleMessage("Tryb kinowy"),
    "trialReminderBody": m37,
    "trialReminderChannel": MessageLookupByLibrary.simpleMessage(
      "Przypomnienie o okresie próbnym",
    ),
    "trialReminderChannelDescription": MessageLookupByLibrary.simpleMessage(
      "Przypomnienie przed końcem darmowego okresu próbnego",
    ),
    "trialReminderMessage": MessageLookupByLibrary.simpleMessage(
      "Przypomnieć Ci dzień przed końcem darmowego okresu próbnego, żeby opłata Cię nie zaskoczyła?",
    ),
    "trialReminderNotificationTitle": MessageLookupByLibrary.simpleMessage(
      "Darmowy okres próbny Zappit Pro wkrótce się skończy",
    ),
    "trialReminderTitle": MessageLookupByLibrary.simpleMessage(
      "Przypomnienie o okresie próbnym",
    ),
    "trialTerms": m38,
    "trialTermsDays": m39,
    "trialTermsMonths": m40,
    "trialTermsYears": m41,
    "tryAgain": MessageLookupByLibrary.simpleMessage("Spróbuj ponownie"),
    "turnOffAbFirst": MessageLookupByLibrary.simpleMessage(
      "Najpierw wyłącz A-B Loop",
    ),
    "tutorial": MessageLookupByLibrary.simpleMessage("Poradnik"),
    "unavailable": MessageLookupByLibrary.simpleMessage("Niedostępne"),
    "undo": MessageLookupByLibrary.simpleMessage("Cofnij"),
    "unmute": MessageLookupByLibrary.simpleMessage("Włącz dźwięk"),
    "untitled": MessageLookupByLibrary.simpleMessage("Bez tytułu"),
    "up": MessageLookupByLibrary.simpleMessage("W górę"),
    "upNext": MessageLookupByLibrary.simpleMessage("Następne"),
    "upNextCountdown": m42,
    "upgrade": MessageLookupByLibrary.simpleMessage("Przejdź na Pro"),
    "videoLengthUnknown": MessageLookupByLibrary.simpleMessage(
      "Długość tego wideo jest nieznana",
    ),
    "videoQuality": MessageLookupByLibrary.simpleMessage("Jakość wideo"),
    "view": MessageLookupByLibrary.simpleMessage("Pokaż"),
    "voiceBoostDuringAd": MessageLookupByLibrary.simpleMessage(
      "Voice Boost jest niedostępny podczas reklamy",
    ),
    "voiceBoostOff": MessageLookupByLibrary.simpleMessage(
      "Voice Boost wyłączony",
    ),
    "voiceBoostOn": MessageLookupByLibrary.simpleMessage(
      "Voice Boost włączony",
    ),
    "voiceBoostTrialLeft": m43,
    "voiceBoostTrialOver": m44,
    "voiceBoostTurnedOn": MessageLookupByLibrary.simpleMessage(
      "Voice Boost włączony: głosy są lepiej słyszalne",
    ),
    "voiceBoostUnsupported": MessageLookupByLibrary.simpleMessage(
      "To wideo nie obsługuje Voice Boost",
    ),
    "volumeDown": MessageLookupByLibrary.simpleMessage("Ciszej"),
    "volumeUp": MessageLookupByLibrary.simpleMessage("Głośniej"),
    "waitingForBrowser": MessageLookupByLibrary.simpleMessage(
      "Czekam na przeglądarkę…",
    ),
    "watchAgain": MessageLookupByLibrary.simpleMessage("Obejrzyj ponownie"),
    "watching": MessageLookupByLibrary.simpleMessage("Oglądasz"),
    "welcomeToPro": m45,
    "windowNumber": m46,
    "yearly": MessageLookupByLibrary.simpleMessage("Rocznie"),
    "yourBrowser": MessageLookupByLibrary.simpleMessage("przeglądarce"),
    "youreConnected": MessageLookupByLibrary.simpleMessage("Połączono!"),
    "youreOffline": MessageLookupByLibrary.simpleMessage("Jesteś offline"),
    "youtubeHome": MessageLookupByLibrary.simpleMessage(
      "Strona główna YouTube",
    ),
    "ytCourses": MessageLookupByLibrary.simpleMessage("Kursy"),
    "ytDownloads": MessageLookupByLibrary.simpleMessage("Pobrane"),
    "ytExplore": MessageLookupByLibrary.simpleMessage("Odkrywaj"),
    "ytGaming": MessageLookupByLibrary.simpleMessage("Gry"),
    "ytHistory": MessageLookupByLibrary.simpleMessage("Historia"),
    "ytHype": MessageLookupByLibrary.simpleMessage("Hype"),
    "ytLikedVideos": MessageLookupByLibrary.simpleMessage("Polubione filmy"),
    "ytLive": MessageLookupByLibrary.simpleMessage("Na żywo"),
    "ytMemberships": MessageLookupByLibrary.simpleMessage("Wspieranie kanałów"),
    "ytMusic": MessageLookupByLibrary.simpleMessage("Muzyka"),
    "ytPlaylists": MessageLookupByLibrary.simpleMessage("Playlisty"),
    "ytPodcasts": MessageLookupByLibrary.simpleMessage("Podcasty"),
    "ytShorts": MessageLookupByLibrary.simpleMessage("Shorts"),
    "ytSubscriptions": MessageLookupByLibrary.simpleMessage("Subskrypcje"),
    "ytVideos": MessageLookupByLibrary.simpleMessage("Filmy"),
    "ytWatchLater": MessageLookupByLibrary.simpleMessage("Do obejrzenia"),
    "ytYou": MessageLookupByLibrary.simpleMessage("Ty"),
  };
}
