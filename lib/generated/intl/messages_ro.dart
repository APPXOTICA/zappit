// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ro locale. All the
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
  String get localeName => 'ro';

  static String m0(site) => "Adaugă ${site} la Favorite";

  static String m1(count) => "Înapoi ${count} secunde";

  static String m2(browser) =>
      "${browser} nu a răspuns. Verifică dacă browserul este deschis.";

  static String m3(browsers) => "Deconectat de la ${browsers}";

  static String m4(name) => "Canal: ${name}";

  static String m5(current, total) => "Capitolul ${current}/${total}";

  static String m6(browser) => "Conectat la ${browser}";

  static String m7(count) => "Înainte ${count} secunde";

  static String m8(count) => "Gratuit: ${count} zile";

  static String m9(count) => "Gratuit: ${count} luni";

  static String m10(count) => "Gratuit: ${count} săpt.";

  static String m11(count) => "Gratuit: ${count} ani";

  static String m12(price) => "Doar ${price}/lună";

  static String m13(count) =>
      "${Intl.plural(count, one: '1 minut', few: '${count} minute', other: '${count} de minute')}";

  static String m14(count) => "${count} min";

  static String m15(time) => "Cod nou în ${time}";

  static String m16(url) =>
      "Deschide ${url} în browserul computerului ca să instalezi extensia Zappit.";

  static String m17(current, total) => "${current} / ${total}";

  static String m18(current, total) => "Pasul ${current} din ${total}";

  static String m19(site) => "Deschide ${site}";

  static String m20(browser) => "Deschis în ${browser}";

  static String m21(browser) => "Se deschide în ${browser}…";

  static String m22(price) => "${price} / lună";

  static String m23(price) => "${price} / an";

  static String m24(date) =>
      "Accesul gratuit la Pro este activ până la ${date}. Abonează-te înainte să se termine ca să păstrezi toate funcțiile Pro fără întrerupere.";

  static String m25(proName) =>
      "Accesul gratuit la Pro s-a încheiat. Păstrează toate funcțiile Pro cu ${proName}.";

  static String m26(days) =>
      "Folosește toate funcțiile Zappit Pro timp de ${days} zile. Complet gratuit, fără nicio plată automată.";

  static String m27(date) => "Acces gratuit la Pro până la ${date}";

  static String m28(proName) => "${proName} a fost restabilit";

  static String m29(site) => "Elimină ${site} din Favorite";

  static String m30(site) => "${site} a fost eliminat din Favorite";

  static String m31(site) => "Reordonează ${site}";

  static String m32(percent) => "Economisești ${percent}%";

  static String m33(number) => "Sezonul ${number}";

  static String m34(count) => "${count} s";

  static String m35(site) => "Setări ${site}";

  static String m36(count) =>
      "Înapoi la 1x. Fără Pro poți folosi această viteză ${count} secunde.";

  static String m37(price, date) =>
      "Perioada de probă gratuită se termină mâine. Pe ${date} vei plăti automat ${price}. Dacă nu vrei să continui, anulează abonamentul înainte de această dată.";

  static String m38(price) =>
      "Începe cu o perioadă de probă gratuită, apoi ${price}/an.";

  static String m39(count, price) =>
      "Începe cu ${count} zile gratuite, apoi ${price}/an.";

  static String m40(count, price) =>
      "Începe cu ${count} luni gratuite, apoi ${price}/an.";

  static String m41(count, price) =>
      "Începe cu ${count} ani gratuiți, apoi ${price}/an.";

  static String m42(count) => "Urmează · pornește în ${count} s";

  static String m43(count) => "Probă Voice Boost, mai sunt ${count} secunde";

  static String m44(count) =>
      "Voice Boost s-a oprit. Fără Pro poți folosi Voice Boost ${count} secunde.";

  static String m45(proName) => "${proName} este acum activ!";

  static String m46(number) => "Fereastra ${number}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "abLoopCount": MessageLookupByLibrary.simpleMessage("Repetări A-B Loop"),
    "abOffForLive": MessageLookupByLibrary.simpleMessage(
      "A-B Loop este dezactivat pentru transmisiunile live",
    ),
    "account": MessageLookupByLibrary.simpleMessage("Conexiune"),
    "adBadge": MessageLookupByLibrary.simpleMessage("RECLAMĂ"),
    "addToFavorites": m0,
    "allCategories": MessageLookupByLibrary.simpleMessage("Toate categoriile"),
    "allSites": MessageLookupByLibrary.simpleMessage("Toate site-urile"),
    "alreadySubscribed": MessageLookupByLibrary.simpleMessage(
      "Ai deja acest abonament. Încearcă „Restabilește achizițiile”.",
    ),
    "back": MessageLookupByLibrary.simpleMessage("Înapoi"),
    "backSeconds": m1,
    "browserDidNotAnswer": m2,
    "browserNotResponding": MessageLookupByLibrary.simpleMessage(
      "Browserul nu răspunde",
    ),
    "browsers": MessageLookupByLibrary.simpleMessage("Browsere"),
    "browsersDisconnected": m3,
    "browsersDisconnectedBody": MessageLookupByLibrary.simpleMessage(
      "Un alt telefon a preluat conexiunea. Ca să te reconectezi, scanează codul QR din extensia Zappit de pe computer.",
    ),
    "cameraDenied": MessageLookupByLibrary.simpleMessage(
      "Permite accesul la cameră în Setări ca să scanezi codul.",
    ),
    "cameraUnavailable": MessageLookupByLibrary.simpleMessage(
      "Camera nu este disponibilă acum.",
    ),
    "cancel": MessageLookupByLibrary.simpleMessage("Anulează"),
    "cancelAnytime": MessageLookupByLibrary.simpleMessage(
      "Poți anula oricând din pagina de abonamente.",
    ),
    "cantLoadPage": MessageLookupByLibrary.simpleMessage(
      "Pagina nu poate fi încărcată",
    ),
    "cantOpenOnPhone": MessageLookupByLibrary.simpleMessage(
      "Acest videoclip nu poate fi deschis pe telefon",
    ),
    "cantReachBrowser": MessageLookupByLibrary.simpleMessage(
      "Niciun browser accesibil",
    ),
    "cantSeekVideo": MessageLookupByLibrary.simpleMessage(
      "În acest videoclip nu se poate derula",
    ),
    "captionLanguage": MessageLookupByLibrary.simpleMessage(
      "Limba subtitrărilor",
    ),
    "captions": MessageLookupByLibrary.simpleMessage("Subtitrări"),
    "captionsOff": MessageLookupByLibrary.simpleMessage(
      "Subtitrări dezactivate",
    ),
    "captionsOn": MessageLookupByLibrary.simpleMessage("Subtitrări activate"),
    "categories": MessageLookupByLibrary.simpleMessage("Categorii"),
    "categoryFavoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "Atinge steaua unei categorii ca s-o adaugi aici.",
    ),
    "channelLabel": m4,
    "chapterPosition": m5,
    "chapters": MessageLookupByLibrary.simpleMessage("Capitole"),
    "chaptersDuringAd": MessageLookupByLibrary.simpleMessage(
      "Nu poți sări capitole în timpul unei reclame",
    ),
    "checkConnection": MessageLookupByLibrary.simpleMessage(
      "Verifică conexiunea la internet și încearcă din nou.",
    ),
    "checkConnectionShort": MessageLookupByLibrary.simpleMessage(
      "Verifică conexiunea și încearcă din nou.",
    ),
    "chooseBrowser": MessageLookupByLibrary.simpleMessage("Alege un browser"),
    "chooseNextVideo": MessageLookupByLibrary.simpleMessage(
      "Alege următorul videoclip",
    ),
    "clear": MessageLookupByLibrary.simpleMessage("Șterge"),
    "close": MessageLookupByLibrary.simpleMessage("Închide"),
    "connectBrowser": MessageLookupByLibrary.simpleMessage(
      "Conectează un browser",
    ),
    "connectBrowserFirst": MessageLookupByLibrary.simpleMessage(
      "Conectează-te mai întâi la un browser",
    ),
    "connected": MessageLookupByLibrary.simpleMessage("Conectat"),
    "connectedTo": m6,
    "contactUs": MessageLookupByLibrary.simpleMessage("Contactează-ne"),
    "contactUsKeepInfo": MessageLookupByLibrary.simpleMessage(
      "Te rugăm să nu ștergi informațiile de mai jos.",
    ),
    "couldNotGetVideoLink": MessageLookupByLibrary.simpleMessage(
      "Linkul videoclipului nu a putut fi obținut",
    ),
    "couldNotLoadEpisodes": MessageLookupByLibrary.simpleMessage(
      "Episoadele nu au putut fi încărcate",
    ),
    "couldNotLoadPlaylist": MessageLookupByLibrary.simpleMessage(
      "Playlistul nu a putut fi încărcat",
    ),
    "couldNotOpenLink": MessageLookupByLibrary.simpleMessage(
      "Linkul nu a putut fi deschis",
    ),
    "couldNotReadQuality": MessageLookupByLibrary.simpleMessage(
      "Opțiunile de calitate nu au putut fi citite de pe pagină.",
    ),
    "delete": MessageLookupByLibrary.simpleMessage("Șterge"),
    "disconnect": MessageLookupByLibrary.simpleMessage("Deconectează"),
    "disconnectPhone": MessageLookupByLibrary.simpleMessage(
      "Deconectează acest telefon",
    ),
    "disconnectPhoneMessage": MessageLookupByLibrary.simpleMessage(
      "Acest telefon nu va mai controla computerul. Ca să-l conectezi din nou, scanează codul QR de pe computer.",
    ),
    "down": MessageLookupByLibrary.simpleMessage("Jos"),
    "endOfVideo": MessageLookupByLibrary.simpleMessage(
      "La finalul videoclipului",
    ),
    "enterValidLink": MessageLookupByLibrary.simpleMessage(
      "Introdu un link care începe cu http sau https",
    ),
    "episodes": MessageLookupByLibrary.simpleMessage("Episoade"),
    "error": MessageLookupByLibrary.simpleMessage("Eroare"),
    "errorButtonNotFound": MessageLookupByLibrary.simpleMessage(
      "Butonul nu a fost găsit pe pagină",
    ),
    "errorDuringAd": MessageLookupByLibrary.simpleMessage(
      "Nu se poate în timpul unei reclame",
    ),
    "errorEndBeforeStart": MessageLookupByLibrary.simpleMessage(
      "Punctul de final trebuie să fie după punctul de început",
    ),
    "errorGeneric": MessageLookupByLibrary.simpleMessage("Ceva nu a mers bine"),
    "errorInvalidUrl": MessageLookupByLibrary.simpleMessage(
      "Linkul nu poate fi deschis",
    ),
    "errorNoBrowser": MessageLookupByLibrary.simpleMessage(
      "Niciun browser selectat",
    ),
    "errorNoMedia": MessageLookupByLibrary.simpleMessage(
      "Nu rulează niciun videoclip",
    ),
    "errorNotChanged": MessageLookupByLibrary.simpleMessage(
      "Site-ul nu a aplicat modificarea",
    ),
    "errorNotSupported": MessageLookupByLibrary.simpleMessage(
      "Acest site nu acceptă asta",
    ),
    "errorStartAfterEnd": MessageLookupByLibrary.simpleMessage(
      "Punctul de început trebuie să fie înaintea punctului de final",
    ),
    "errorTabClosed": MessageLookupByLibrary.simpleMessage(
      "Fila este deja închisă",
    ),
    "exitFullScreen": MessageLookupByLibrary.simpleMessage(
      "Ieși din ecran complet",
    ),
    "extensionUpdatedReload": MessageLookupByLibrary.simpleMessage(
      "Extensia Zappit a fost actualizată. Reîncarcă pagina în browser ca să poți folosi în continuare toate comenzile.",
    ),
    "faq": MessageLookupByLibrary.simpleMessage("Întrebări frecvente"),
    "favorites": MessageLookupByLibrary.simpleMessage("Favorite"),
    "favoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "Atinge steaua unui site ca să-l adaugi aici.",
    ),
    "forwardSeconds": m7,
    "frameByFrame": MessageLookupByLibrary.simpleMessage("Cadru cu cadru"),
    "freeTrial": MessageLookupByLibrary.simpleMessage(
      "Perioadă de probă gratuită",
    ),
    "freeTrialDays": m8,
    "freeTrialMonths": m9,
    "freeTrialWeeks": m10,
    "freeTrialYears": m11,
    "fullPowerUnlocked": MessageLookupByLibrary.simpleMessage(
      "Toate funcțiile deblocate",
    ),
    "fullScreen": MessageLookupByLibrary.simpleMessage("Ecran complet"),
    "generalSettings": MessageLookupByLibrary.simpleMessage("Setări generale"),
    "gotIt": MessageLookupByLibrary.simpleMessage("Am înțeles"),
    "hideChat": MessageLookupByLibrary.simpleMessage("Ascunde chatul"),
    "home": MessageLookupByLibrary.simpleMessage("Pagina principală"),
    "justPerMonth": m12,
    "largerCaptions": MessageLookupByLibrary.simpleMessage(
      "Subtitrări mai mari",
    ),
    "lastVideoInPlaylist": MessageLookupByLibrary.simpleMessage(
      "Acesta este ultimul videoclip din playlist",
    ),
    "learnMore": MessageLookupByLibrary.simpleMessage("Află mai multe"),
    "left": MessageLookupByLibrary.simpleMessage("Stânga"),
    "linkPanelHint": MessageLookupByLibrary.simpleMessage(
      "Lipește linkul unui videoclip și atinge Trimite. Se deschide într-o filă nouă în browser.",
    ),
    "liveBadge": MessageLookupByLibrary.simpleMessage("LIVE"),
    "liveCantRewind": MessageLookupByLibrary.simpleMessage(
      "Această transmisiune live nu poate fi derulată înapoi",
    ),
    "longPressSpeed": MessageLookupByLibrary.simpleMessage(
      "Viteză la apăsare lungă",
    ),
    "loopEnd": MessageLookupByLibrary.simpleMessage("Sfârșit buclă"),
    "loopOff": MessageLookupByLibrary.simpleMessage("Repetare dezactivată"),
    "loopOn": MessageLookupByLibrary.simpleMessage("Repetare activată"),
    "loopStart": MessageLookupByLibrary.simpleMessage("Început buclă"),
    "manageSubscription": MessageLookupByLibrary.simpleMessage(
      "Gestionează abonamentul",
    ),
    "minutesCount": m13,
    "minutesShort": m14,
    "mixCantRepeat": MessageLookupByLibrary.simpleMessage(
      "Acest playlist redă la nesfârșit videoclipuri noi, așa că nu poate fi repetat",
    ),
    "mixCantShuffle": MessageLookupByLibrary.simpleMessage(
      "Acest playlist redă la nesfârșit videoclipuri noi, așa că nu poate fi amestecat",
    ),
    "monthly": MessageLookupByLibrary.simpleMessage("Lunar"),
    "multipleBrowsersMessage": MessageLookupByLibrary.simpleMessage(
      "Sunt mai multe browsere online. Alege-l pe cel pe care îl va controla această telecomandă.",
    ),
    "mute": MessageLookupByLibrary.simpleMessage("Dezactivează sunetul"),
    "nextChapter": MessageLookupByLibrary.simpleMessage("Capitolul următor"),
    "nextEpisode": MessageLookupByLibrary.simpleMessage("Episodul următor"),
    "nextTab": MessageLookupByLibrary.simpleMessage("Fila următoare"),
    "nextVideo": MessageLookupByLibrary.simpleMessage("Videoclipul următor"),
    "noBrowser": MessageLookupByLibrary.simpleMessage("Niciun browser"),
    "noBrowserConnectedShare": MessageLookupByLibrary.simpleMessage(
      "Niciun browser nu este conectat. Deschide browserul cu extensia Zappit și încearcă din nou.",
    ),
    "noBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "1. Deschide pe computer browserul conectat.\n2. Dacă nu se conectează, dă clic pe pictograma Zappit din bara de instrumente a browserului.",
    ),
    "noBrowserOnline": MessageLookupByLibrary.simpleMessage(
      "Niciun browser nu este online.",
    ),
    "noBrowserOnlineShort": MessageLookupByLibrary.simpleMessage(
      "Niciun browser online",
    ),
    "noBrowserSelected": MessageLookupByLibrary.simpleMessage(
      "Niciun browser selectat",
    ),
    "noCategoriesFound": MessageLookupByLibrary.simpleMessage(
      "Nu s-au găsit categorii",
    ),
    "noLinkInShare": MessageLookupByLibrary.simpleMessage(
      "Nu există niciun link în ce ai distribuit",
    ),
    "noMoreTabs": MessageLookupByLibrary.simpleMessage("Nu mai sunt file"),
    "noNextEpisode": MessageLookupByLibrary.simpleMessage(
      "Nu există un episod următor",
    ),
    "noOpenTabs": MessageLookupByLibrary.simpleMessage("Nicio filă deschisă"),
    "noPreviousPage": MessageLookupByLibrary.simpleMessage(
      "Nu există o pagină anterioară",
    ),
    "noSiteSettings": MessageLookupByLibrary.simpleMessage(
      "Încă nu există setări pentru acest site.",
    ),
    "noSubtitles": MessageLookupByLibrary.simpleMessage(
      "Acest videoclip nu are subtitrări",
    ),
    "noThanks": MessageLookupByLibrary.simpleMessage("Nu, mulțumesc"),
    "noVideosOnPage": MessageLookupByLibrary.simpleMessage(
      "Pe această pagină nu există videoclipuri.",
    ),
    "notAvailableDuringAd": MessageLookupByLibrary.simpleMessage(
      "Indisponibil în timpul unei reclame",
    ),
    "notAvailableForLive": MessageLookupByLibrary.simpleMessage(
      "Indisponibil în direct",
    ),
    "notAvailableForLiveStreams": MessageLookupByLibrary.simpleMessage(
      "Indisponibil pentru transmisiuni live",
    ),
    "notAvailableForPhotos": MessageLookupByLibrary.simpleMessage(
      "Indisponibil pentru postările cu fotografii",
    ),
    "notConnected": MessageLookupByLibrary.simpleMessage("Neconectat"),
    "nothingPlaying": MessageLookupByLibrary.simpleMessage(
      "Niciun videoclip găsit",
    ),
    "nothingPlayingMessage": MessageLookupByLibrary.simpleMessage(
      "Pe acest ecran nu există niciun videoclip. Alege altă filă sau lipește linkul unui videoclip.",
    ),
    "nothingToRestore": MessageLookupByLibrary.simpleMessage(
      "Nimic de restabilit",
    ),
    "nothingToRestoreMessage": MessageLookupByLibrary.simpleMessage(
      "Nu s-a găsit niciun abonament Zappit Pro activ pentru acest cont.",
    ),
    "obAnimAddExtension": MessageLookupByLibrary.simpleMessage(
      "Adaugă extensia",
    ),
    "obAnimAdded": MessageLookupByLibrary.simpleMessage("Adăugată"),
    "obAnimConnectComputer": MessageLookupByLibrary.simpleMessage(
      "Conectează-te la computer",
    ),
    "obAnimConnectPhone": MessageLookupByLibrary.simpleMessage(
      "Conectează-ți telefonul",
    ),
    "obAnimNewCode": m15,
    "obAnimRemoteConnected": MessageLookupByLibrary.simpleMessage(
      "Telecomandă conectată",
    ),
    "obAnimScanCode": MessageLookupByLibrary.simpleMessage(
      "Scanează acest cod cu aplicația Zappit de pe telefon.",
    ),
    "obAnimTagline": MessageLookupByLibrary.simpleMessage("Adio, mouse."),
    "obAnimYourPhones": MessageLookupByLibrary.simpleMessage(
      "Telefoanele tale",
    ),
    "off": MessageLookupByLibrary.simpleMessage("Dezactivat"),
    "offline": MessageLookupByLibrary.simpleMessage("Offline"),
    "offlineMessage": MessageLookupByLibrary.simpleMessage(
      "Verifică conexiunea la internet. Zappit se reconectează singur.",
    ),
    "onboarding0AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Atingerea butonului redare/pauză din aplicația Zappit pune pe pauză și reia videoclipul de pe laptop",
    ),
    "onboarding1AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Se tastează zappit.tv/get în browser și se adaugă extensia Zappit",
    ),
    "onboarding1Body": m16,
    "onboarding1Title": MessageLookupByLibrary.simpleMessage(
      "Mai întâi, adaugă extensia Zappit în browser",
    ),
    "onboarding2AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Clic pe pictograma Zappit din browser, apoi scanarea codului QR cu telefonul",
    ),
    "onboarding2Body": MessageLookupByLibrary.simpleMessage(
      "Dă clic pe pictograma Zappit din bara de instrumente a browserului, apoi îndreaptă camera spre codul QR.",
    ),
    "onboarding2Title": MessageLookupByLibrary.simpleMessage(
      "Scanează codul QR",
    ),
    "onboardingGetStarted": MessageLookupByLibrary.simpleMessage("Să începem"),
    "onboardingIconHelp": MessageLookupByLibrary.simpleMessage(
      "Nu vezi pictograma Zappit?",
    ),
    "onboardingIconHelpLabel": MessageLookupByLibrary.simpleMessage(
      "Nu vezi pictograma Zappit? Deschide răspunsul în Întrebări frecvente",
    ),
    "onboardingNext": MessageLookupByLibrary.simpleMessage("Înainte"),
    "onboardingOpenQrScanner": MessageLookupByLibrary.simpleMessage(
      "Deschide scanerul QR",
    ),
    "onboardingShareLink": MessageLookupByLibrary.simpleMessage(
      "Trimite linkul de instalare",
    ),
    "onboardingStepCount": m17,
    "onboardingStepLabel": m18,
    "onboardingWelcomeBody": MessageLookupByLibrary.simpleMessage(
      "Controlează orice videoclip de pe computer. Configurarea are doar doi pași rapizi.",
    ),
    "onboardingWelcomeTitle": MessageLookupByLibrary.simpleMessage(
      "Telefonul tău devine telecomandă",
    ),
    "openALink": MessageLookupByLibrary.simpleMessage("Deschide un link"),
    "openBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "Deschide browserul cu extensia Zappit ca să-i vezi filele.",
    ),
    "openLinkInBrowser": MessageLookupByLibrary.simpleMessage(
      "Deschide un link în browser",
    ),
    "openSite": m19,
    "openedIn": m20,
    "openingIn": m21,
    "pairCodeExpired": MessageLookupByLibrary.simpleMessage(
      "Acest cod a expirat. Scanează codul nou de pe computer.",
    ),
    "pairCodeInvalid": MessageLookupByLibrary.simpleMessage(
      "Acest cod nu mai este valid. Scanează codul nou de pe computer.",
    ),
    "pairCodeUsed": MessageLookupByLibrary.simpleMessage(
      "Acest cod a fost deja folosit. Scanează codul nou de pe computer.",
    ),
    "pairFailed": MessageLookupByLibrary.simpleMessage(
      "Conectarea nu a reușit. Verifică conexiunea la internet și încearcă din nou.",
    ),
    "pairHowToInstall": MessageLookupByLibrary.simpleMessage(
      "Cum instalezi extensia",
    ),
    "pairPhoneLimit": MessageLookupByLibrary.simpleMessage(
      "La acest computer sunt deja conectate 3 telefoane. Deschide Zappit pe unul dintre celelalte telefoane conectate și atinge „Deconectează acest telefon” din „Mai multe”. Dacă nu ai acces la niciunul dintre ele, deschide extensia Zappit de pe computer și dă clic pe „Setări” > „Resetează”.",
    ),
    "pairTitle": MessageLookupByLibrary.simpleMessage(
      "Conectează-te la extensia browserului",
    ),
    "paste": MessageLookupByLibrary.simpleMessage("Lipește"),
    "pasteALink": MessageLookupByLibrary.simpleMessage("Lipește un link"),
    "pasteVideoLink": MessageLookupByLibrary.simpleMessage(
      "Lipește linkul unui videoclip",
    ),
    "pause": MessageLookupByLibrary.simpleMessage("Pauză"),
    "paymentPending": MessageLookupByLibrary.simpleMessage(
      "Plată în așteptare",
    ),
    "paymentPendingMessage": MessageLookupByLibrary.simpleMessage(
      "Pro se activează imediat ce plata este confirmată.",
    ),
    "phoneName": MessageLookupByLibrary.simpleMessage("Numele telefonului"),
    "phoneNameEmpty": MessageLookupByLibrary.simpleMessage("Introdu un nume."),
    "phoneNameMessage": MessageLookupByLibrary.simpleMessage(
      "Apare în extensia Zappit de pe computer.",
    ),
    "pickATab": MessageLookupByLibrary.simpleMessage("Alege o filă"),
    "pickBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "Alege browserul pe care îl va controla această telecomandă ca să-i vezi filele.",
    ),
    "pickVideosWithPro": MessageLookupByLibrary.simpleMessage(
      "Alege videoclipuri de pe telefon cu Pro",
    ),
    "play": MessageLookupByLibrary.simpleMessage("Redă"),
    "playInApp": MessageLookupByLibrary.simpleMessage("Continuă pe telefon"),
    "playNow": MessageLookupByLibrary.simpleMessage("Redă acum"),
    "playVideoFirst": MessageLookupByLibrary.simpleMessage(
      "Redă mai întâi un videoclip în browser",
    ),
    "playing": MessageLookupByLibrary.simpleMessage("Se redă"),
    "playlist": MessageLookupByLibrary.simpleMessage("Playlist"),
    "playlistCantRepeat": MessageLookupByLibrary.simpleMessage(
      "Acest playlist nu poate fi repetat",
    ),
    "playlistCantShuffle": MessageLookupByLibrary.simpleMessage(
      "Acest playlist nu poate fi amestecat",
    ),
    "previousChapter": MessageLookupByLibrary.simpleMessage(
      "Capitolul anterior",
    ),
    "previousTab": MessageLookupByLibrary.simpleMessage("Fila anterioară"),
    "previousVideo": MessageLookupByLibrary.simpleMessage(
      "Videoclipul anterior",
    ),
    "pricePerMonth": m22,
    "pricePerYear": m23,
    "privacyPolicy": MessageLookupByLibrary.simpleMessage(
      "Politica de confidențialitate",
    ),
    "proBannerSubtitle": MessageLookupByLibrary.simpleMessage(
      "Folosește telecomanda la capacitate maximă",
    ),
    "proFeatureAbLoop": MessageLookupByLibrary.simpleMessage(
      "A-B Loop nelimitat",
    ),
    "proFeatureAllSpeeds": MessageLookupByLibrary.simpleMessage(
      "Acces la toate vitezele de redare",
    ),
    "proFeatureDedicatedControllers": MessageLookupByLibrary.simpleMessage(
      "Deblochează telecomenzile create special pentru anumite site-uri",
    ),
    "proFeatureFullLoop": MessageLookupByLibrary.simpleMessage(
      "Repetare nelimitată a întregului videoclip",
    ),
    "proFeatureVoiceBoost": MessageLookupByLibrary.simpleMessage(
      "Voice Boost nelimitat",
    ),
    "proPreviewActiveBanner": m24,
    "proPreviewEndedMessage": MessageLookupByLibrary.simpleMessage(
      "Sperăm că ți-a plăcut accesul gratuit la Zappit Pro! Abonează-te ca să folosești în continuare toate funcțiile Pro fără întrerupere.",
    ),
    "proPreviewEndedSubtitle": m25,
    "proPreviewEndedTitle": MessageLookupByLibrary.simpleMessage(
      "Accesul gratuit la Pro s-a încheiat",
    ),
    "proPreviewEndsTomorrow": MessageLookupByLibrary.simpleMessage(
      "Accesul gratuit la Pro se încheie mâine",
    ),
    "proPreviewStarted": m26,
    "proPreviewUntil": m27,
    "proRestored": m28,
    "proSubscriptionEnded": MessageLookupByLibrary.simpleMessage(
      "Abonamentul Pro s-a încheiat",
    ),
    "proSubtitle": MessageLookupByLibrary.simpleMessage(
      "Folosește telecomanda la capacitate maximă.",
    ),
    "purchaseCancelled": MessageLookupByLibrary.simpleMessage(
      "Achiziție anulată",
    ),
    "purchaseCancelledMessage": MessageLookupByLibrary.simpleMessage(
      "Nu ți s-a debitat nimic. Poți încerca din nou oricând.",
    ),
    "purchaseFailed": MessageLookupByLibrary.simpleMessage(
      "Achiziția nu a reușit",
    ),
    "purchaseNotActivated": MessageLookupByLibrary.simpleMessage(
      "Achiziția nu este activată",
    ),
    "purchaseNotActivatedMessage": MessageLookupByLibrary.simpleMessage(
      "Plata a fost făcută, dar Pro nu este încă activ. Încearcă „Restabilește achizițiile”.",
    ),
    "purchasesNotAllowed": MessageLookupByLibrary.simpleMessage(
      "Achizițiile nu sunt permise pe acest dispozitiv sau cont.",
    ),
    "qualityNotChanged": MessageLookupByLibrary.simpleMessage(
      "Calitatea nu s-a schimbat",
    ),
    "rateZappit": MessageLookupByLibrary.simpleMessage("Evaluează Zappit"),
    "reload": MessageLookupByLibrary.simpleMessage("Reîncarcă"),
    "remindMe": MessageLookupByLibrary.simpleMessage("Amintește-mi"),
    "remoteSettings": MessageLookupByLibrary.simpleMessage(
      "Setările telecomenzii",
    ),
    "removeFromFavorites": m29,
    "removedFromFavorites": m30,
    "reorderHint": MessageLookupByLibrary.simpleMessage(
      "Ține apăsat un element, apoi trage-l ca să schimbi ordinea",
    ),
    "reorderSite": m31,
    "repeatOff": MessageLookupByLibrary.simpleMessage("Repetare dezactivată"),
    "repeatOffNotice": MessageLookupByLibrary.simpleMessage(
      "Repetare dezactivată",
    ),
    "repeatOn": MessageLookupByLibrary.simpleMessage("Repetare activată"),
    "repeatingPlaylist": MessageLookupByLibrary.simpleMessage(
      "Playlistul se repetă",
    ),
    "replay": MessageLookupByLibrary.simpleMessage("Redă de la început"),
    "restoreFailed": MessageLookupByLibrary.simpleMessage(
      "Restabilirea nu a reușit",
    ),
    "restorePurchases": MessageLookupByLibrary.simpleMessage(
      "Restabilește achizițiile",
    ),
    "right": MessageLookupByLibrary.simpleMessage("Dreapta"),
    "save": MessageLookupByLibrary.simpleMessage("Salvează"),
    "savePercent": m32,
    "searchCategories": MessageLookupByLibrary.simpleMessage("Caută categorii"),
    "seasonNumber": m33,
    "secondsShort": m34,
    "seekInterval": MessageLookupByLibrary.simpleMessage("Interval de salt"),
    "select": MessageLookupByLibrary.simpleMessage("Selectează"),
    "selectVideoInBrowser": MessageLookupByLibrary.simpleMessage(
      "Nu rulează nimic",
    ),
    "selectVideoInBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "Dă clic pe orice videoclip de pe computer ca să începi vizionarea. Telecomanda va apărea aici.",
    ),
    "send": MessageLookupByLibrary.simpleMessage("Trimite"),
    "settings": MessageLookupByLibrary.simpleMessage("Setări"),
    "showChat": MessageLookupByLibrary.simpleMessage("Afișează chatul"),
    "shuffleOff": MessageLookupByLibrary.simpleMessage(
      "Redare aleatorie dezactivată",
    ),
    "shuffleOffNotice": MessageLookupByLibrary.simpleMessage(
      "Redare aleatorie dezactivată",
    ),
    "shuffleOn": MessageLookupByLibrary.simpleMessage(
      "Redare aleatorie activată",
    ),
    "shufflingPlaylist": MessageLookupByLibrary.simpleMessage(
      "Playlistul este redat aleatoriu",
    ),
    "siteSettings": m35,
    "siteWeb": MessageLookupByLibrary.simpleMessage("Web"),
    "skipAd": MessageLookupByLibrary.simpleMessage("Omite reclama"),
    "skipIntro": MessageLookupByLibrary.simpleMessage("Omite introducerea"),
    "sleepTimer": MessageLookupByLibrary.simpleMessage("Temporizator"),
    "sleepTimerLabel": MessageLookupByLibrary.simpleMessage("Temporizator"),
    "smallerCaptions": MessageLookupByLibrary.simpleMessage(
      "Subtitrări mai mici",
    ),
    "soundBlockedMessage": MessageLookupByLibrary.simpleMessage(
      "Atinge ca să vezi cum pornești sunetul.",
    ),
    "soundBlockedTitle": MessageLookupByLibrary.simpleMessage(
      "De ce nu se aude nimic?",
    ),
    "soundHelpTitle": MessageLookupByLibrary.simpleMessage("Sunet"),
    "speedTrialOver": m36,
    "startFreeTrial": MessageLookupByLibrary.simpleMessage(
      "Începe perioada de probă gratuită",
    ),
    "storeProblem": MessageLookupByLibrary.simpleMessage(
      "A apărut o problemă la achiziție. Încearcă din nou peste puțin timp.",
    ),
    "storeUnavailable": MessageLookupByLibrary.simpleMessage(
      "Achizițiile nu sunt disponibile momentan. Încearcă din nou mai târziu.",
    ),
    "subscribe": MessageLookupByLibrary.simpleMessage("Abonează-te"),
    "success": MessageLookupByLibrary.simpleMessage("Gata"),
    "support": MessageLookupByLibrary.simpleMessage("Asistență"),
    "supportedSites": MessageLookupByLibrary.simpleMessage(
      "Site-uri acceptate",
    ),
    "supportedSitesIntro": MessageLookupByLibrary.simpleMessage(
      "Aceste site-uri au o telecomandă creată special pentru ele. Pe orice alt site, Zappit funcționează ca o telecomandă standard.",
    ),
    "tabMore": MessageLookupByLibrary.simpleMessage("Mai multe"),
    "tabRemote": MessageLookupByLibrary.simpleMessage("Telecomandă"),
    "tabTabs": MessageLookupByLibrary.simpleMessage("File"),
    "tapToKeepPro": MessageLookupByLibrary.simpleMessage(
      "Atinge ca să păstrezi toate funcțiile Pro.",
    ),
    "tellAFriend": MessageLookupByLibrary.simpleMessage(
      "Recomandă unui prieten",
    ),
    "termsOfService": MessageLookupByLibrary.simpleMessage(
      "Termeni și condiții",
    ),
    "theaterMode": MessageLookupByLibrary.simpleMessage("Mod cinema"),
    "trialReminderBody": m37,
    "trialReminderChannel": MessageLookupByLibrary.simpleMessage(
      "Memento perioadă de probă gratuită",
    ),
    "trialReminderChannelDescription": MessageLookupByLibrary.simpleMessage(
      "Un memento înainte de sfârșitul perioadei de probă gratuite",
    ),
    "trialReminderMessage": MessageLookupByLibrary.simpleMessage(
      "Vrei să-ți amintim cu o zi înainte de sfârșitul perioadei de probă gratuite, ca să nu ai surprize la plată?",
    ),
    "trialReminderNotificationTitle": MessageLookupByLibrary.simpleMessage(
      "Perioada de probă gratuită Zappit Pro se termină curând",
    ),
    "trialReminderTitle": MessageLookupByLibrary.simpleMessage(
      "Memento perioadă de probă",
    ),
    "trialTerms": m38,
    "trialTermsDays": m39,
    "trialTermsMonths": m40,
    "trialTermsYears": m41,
    "tryAgain": MessageLookupByLibrary.simpleMessage("Încearcă din nou"),
    "turnOffAbFirst": MessageLookupByLibrary.simpleMessage(
      "Oprește mai întâi A-B Loop",
    ),
    "tutorial": MessageLookupByLibrary.simpleMessage("Ghid"),
    "unavailable": MessageLookupByLibrary.simpleMessage("Indisponibil"),
    "undo": MessageLookupByLibrary.simpleMessage("Anulează"),
    "unmute": MessageLookupByLibrary.simpleMessage("Pornește sunetul"),
    "untitled": MessageLookupByLibrary.simpleMessage("Fără titlu"),
    "up": MessageLookupByLibrary.simpleMessage("Sus"),
    "upNext": MessageLookupByLibrary.simpleMessage("Urmează"),
    "upNextCountdown": m42,
    "upgrade": MessageLookupByLibrary.simpleMessage("Treci la Pro"),
    "videoLengthUnknown": MessageLookupByLibrary.simpleMessage(
      "Durata videoclipului nu este cunoscută",
    ),
    "videoQuality": MessageLookupByLibrary.simpleMessage("Calitate video"),
    "view": MessageLookupByLibrary.simpleMessage("Vezi"),
    "voiceBoostDuringAd": MessageLookupByLibrary.simpleMessage(
      "Voice Boost nu este disponibil în timpul unei reclame",
    ),
    "voiceBoostOff": MessageLookupByLibrary.simpleMessage(
      "Voice Boost dezactivat",
    ),
    "voiceBoostOn": MessageLookupByLibrary.simpleMessage("Voice Boost activat"),
    "voiceBoostTrialLeft": m43,
    "voiceBoostTrialOver": m44,
    "voiceBoostTurnedOn": MessageLookupByLibrary.simpleMessage(
      "Voice Boost activat: vocile se aud mai bine",
    ),
    "voiceBoostUnsupported": MessageLookupByLibrary.simpleMessage(
      "Acest videoclip nu acceptă Voice Boost",
    ),
    "volumeDown": MessageLookupByLibrary.simpleMessage("Mai încet"),
    "volumeUp": MessageLookupByLibrary.simpleMessage("Mai tare"),
    "waitingForBrowser": MessageLookupByLibrary.simpleMessage(
      "Se așteaptă browserul…",
    ),
    "watchAgain": MessageLookupByLibrary.simpleMessage("Vizionează din nou"),
    "watching": MessageLookupByLibrary.simpleMessage("Urmărești"),
    "welcomeToPro": m45,
    "windowNumber": m46,
    "yearly": MessageLookupByLibrary.simpleMessage("Anual"),
    "yourBrowser": MessageLookupByLibrary.simpleMessage("browserul tău"),
    "youreConnected": MessageLookupByLibrary.simpleMessage("Conectat!"),
    "youreOffline": MessageLookupByLibrary.simpleMessage("Ești offline"),
    "youtubeHome": MessageLookupByLibrary.simpleMessage(
      "Pagina principală YouTube",
    ),
    "ytCourses": MessageLookupByLibrary.simpleMessage("Cursuri"),
    "ytDownloads": MessageLookupByLibrary.simpleMessage("Descărcări"),
    "ytExplore": MessageLookupByLibrary.simpleMessage("Explorează"),
    "ytGaming": MessageLookupByLibrary.simpleMessage("Jocuri"),
    "ytHistory": MessageLookupByLibrary.simpleMessage("Istoric"),
    "ytHype": MessageLookupByLibrary.simpleMessage("Hype"),
    "ytLikedVideos": MessageLookupByLibrary.simpleMessage(
      "Videoclipuri apreciate",
    ),
    "ytLive": MessageLookupByLibrary.simpleMessage("Live"),
    "ytMemberships": MessageLookupByLibrary.simpleMessage(
      "Abonamente de membru",
    ),
    "ytMusic": MessageLookupByLibrary.simpleMessage("Muzică"),
    "ytPlaylists": MessageLookupByLibrary.simpleMessage("Playlisturi"),
    "ytPodcasts": MessageLookupByLibrary.simpleMessage("Podcasturi"),
    "ytShorts": MessageLookupByLibrary.simpleMessage("Shorts"),
    "ytSubscriptions": MessageLookupByLibrary.simpleMessage("Abonamente"),
    "ytVideos": MessageLookupByLibrary.simpleMessage("Videoclipuri"),
    "ytWatchLater": MessageLookupByLibrary.simpleMessage(
      "Vizionează mai târziu",
    ),
    "ytYou": MessageLookupByLibrary.simpleMessage("Tu"),
  };
}
