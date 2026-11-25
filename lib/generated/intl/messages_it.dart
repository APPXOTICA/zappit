// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a it locale. All the
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
  String get localeName => 'it';

  static String m0(site) => "Aggiungi ${site} ai Preferiti";

  static String m1(count) => "Indietro di ${count} secondi";

  static String m2(browser) =>
      "${browser} non ha risposto. Controlla che sia aperto.";

  static String m3(browsers) => "Scollegato da ${browsers}";

  static String m4(name) => "Canale: ${name}";

  static String m5(current, total) => "Capitolo ${current}/${total}";

  static String m6(browser) => "Collegato a ${browser}";

  static String m7(count) => "Avanti di ${count} secondi";

  static String m8(count) => "Prova gratuita: ${count} giorni";

  static String m9(count) =>
      "${Intl.plural(count, one: '${count} mese di prova gratuita', other: '${count} mesi di prova gratuita')}";

  static String m10(count) => "Prova gratuita: ${count} sett.";

  static String m11(count) =>
      "${Intl.plural(count, one: '${count} anno di prova gratuita', other: '${count} anni di prova gratuita')}";

  static String m12(price) => "Solo ${price}/mese";

  static String m13(count) =>
      "${Intl.plural(count, one: '1 minuto', other: '${count} minuti')}";

  static String m14(count) => "${count} min";

  static String m15(time) => "Nuovo codice tra ${time}";

  static String m16(url) =>
      "Apri ${url} nel browser del computer per installare l’estensione Zappit.";

  static String m17(current, total) => "${current} / ${total}";

  static String m18(current, total) => "Passaggio ${current} di ${total}";

  static String m19(site) => "Apri ${site}";

  static String m20(browser) => "Aperto in ${browser}";

  static String m21(browser) => "Apertura in ${browser}…";

  static String m22(price) => "${price} / mese";

  static String m23(price) => "${price} / anno";

  static String m24(date) =>
      "La tua prova gratuita di Pro è attiva fino al ${date}. Abbonati prima della scadenza per continuare a usare tutte le funzioni Pro senza interruzioni.";

  static String m25(proName) =>
      "La tua prova gratuita di Pro è terminata. Continua a usare tutte le funzioni Pro con ${proName}.";

  static String m26(days) =>
      "Usa tutte le funzioni di Zappit Pro per ${days} giorni, completamente gratis e senza addebiti automatici.";

  static String m27(date) => "Prova gratuita di Pro fino al ${date}";

  static String m28(proName) => "${proName} ripristinato";

  static String m29(site) => "Rimuovi ${site} dai Preferiti";

  static String m30(site) => "${site} rimosso dai Preferiti";

  static String m31(site) => "Riordina ${site}";

  static String m32(percent) => "Risparmi il ${percent}%";

  static String m33(number) => "Stagione ${number}";

  static String m34(count) => "${count} s";

  static String m35(site) => "Impostazioni di ${site}";

  static String m36(count) =>
      "Velocità riportata a 1x. Senza Pro puoi usare questa velocità per ${count} secondi.";

  static String m37(price, date) =>
      "La tua prova gratuita termina domani. Il ${date} ti verranno addebitati ${price}. Se non vuoi continuare, annulla l’abbonamento prima di allora.";

  static String m38(price) =>
      "Inizia con una prova gratuita, poi ${price}/anno.";

  static String m39(count, price) =>
      "Inizia con una prova gratuita di ${count} giorni, poi ${price}/anno.";

  static String m40(count, price) =>
      "${Intl.plural(count, one: '${count} mese di prova gratuita, poi ${price}/anno.', other: '${count} mesi di prova gratuita, poi ${price}/anno.')}";

  static String m41(count, price) =>
      "${Intl.plural(count, one: '${count} anno di prova gratuita, poi ${price}/anno.', other: '${count} anni di prova gratuita, poi ${price}/anno.')}";

  static String m42(count) => "A seguire · parte tra ${count} s";

  static String m43(count) => "Prova di Voice Boost, ancora ${count} secondi";

  static String m44(count) =>
      "Voice Boost disattivato. Senza Pro puoi usare Voice Boost per ${count} secondi.";

  static String m45(proName) => "${proName} attivato!";

  static String m46(number) => "Finestra ${number}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "abLoopCount": MessageLookupByLibrary.simpleMessage("Ripetizioni A-B Loop"),
    "abOffForLive": MessageLookupByLibrary.simpleMessage(
      "L’A-B Loop non è disponibile per le dirette",
    ),
    "account": MessageLookupByLibrary.simpleMessage("Connessione"),
    "adBadge": MessageLookupByLibrary.simpleMessage("PUBBL."),
    "addToFavorites": m0,
    "allCategories": MessageLookupByLibrary.simpleMessage("Tutte le categorie"),
    "allSites": MessageLookupByLibrary.simpleMessage("Tutti i siti"),
    "alreadySubscribed": MessageLookupByLibrary.simpleMessage(
      "Hai già questo abbonamento. Tocca «Ripristina acquisti».",
    ),
    "back": MessageLookupByLibrary.simpleMessage("Indietro"),
    "backSeconds": m1,
    "browserDidNotAnswer": m2,
    "browserNotResponding": MessageLookupByLibrary.simpleMessage(
      "Il browser non risponde",
    ),
    "browsers": MessageLookupByLibrary.simpleMessage("Browser"),
    "browsersDisconnected": m3,
    "browsersDisconnectedBody": MessageLookupByLibrary.simpleMessage(
      "Un altro telefono si è collegato al posto di questo. Per ricollegarti, scansiona il codice QR su quel computer.",
    ),
    "cameraDenied": MessageLookupByLibrary.simpleMessage(
      "Consenti l’accesso alla fotocamera in Impostazioni per scansionare il codice.",
    ),
    "cameraUnavailable": MessageLookupByLibrary.simpleMessage(
      "La fotocamera non è disponibile al momento.",
    ),
    "cancel": MessageLookupByLibrary.simpleMessage("Annulla"),
    "cancelAnytime": MessageLookupByLibrary.simpleMessage(
      "Puoi annullare l’abbonamento quando vuoi dalla pagina degli abbonamenti.",
    ),
    "cantLoadPage": MessageLookupByLibrary.simpleMessage(
      "Impossibile caricare questa pagina",
    ),
    "cantOpenOnPhone": MessageLookupByLibrary.simpleMessage(
      "Questo video non può essere aperto sul telefono",
    ),
    "cantReachBrowser": MessageLookupByLibrary.simpleMessage(
      "Nessun browser raggiungibile",
    ),
    "cantSeekVideo": MessageLookupByLibrary.simpleMessage(
      "Impossibile spostarsi in questo video",
    ),
    "captionLanguage": MessageLookupByLibrary.simpleMessage(
      "Lingua dei sottotitoli",
    ),
    "captions": MessageLookupByLibrary.simpleMessage("Sottotitoli"),
    "captionsOff": MessageLookupByLibrary.simpleMessage(
      "Sottotitoli disattivati",
    ),
    "captionsOn": MessageLookupByLibrary.simpleMessage("Sottotitoli attivi"),
    "categories": MessageLookupByLibrary.simpleMessage("Categorie"),
    "categoryFavoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "Tocca la stella di una categoria per aggiungerla qui.",
    ),
    "channelLabel": m4,
    "chapterPosition": m5,
    "chapters": MessageLookupByLibrary.simpleMessage("Capitoli"),
    "chaptersDuringAd": MessageLookupByLibrary.simpleMessage(
      "Non puoi saltare i capitoli durante una pubblicità",
    ),
    "checkConnection": MessageLookupByLibrary.simpleMessage(
      "Controlla la connessione a internet e riprova.",
    ),
    "checkConnectionShort": MessageLookupByLibrary.simpleMessage(
      "Controlla la connessione e riprova.",
    ),
    "chooseBrowser": MessageLookupByLibrary.simpleMessage("Scegli un browser"),
    "chooseNextVideo": MessageLookupByLibrary.simpleMessage(
      "Scegli il prossimo video",
    ),
    "clear": MessageLookupByLibrary.simpleMessage("Cancella"),
    "close": MessageLookupByLibrary.simpleMessage("Chiudi"),
    "connectBrowser": MessageLookupByLibrary.simpleMessage(
      "Collega un browser",
    ),
    "connectBrowserFirst": MessageLookupByLibrary.simpleMessage(
      "Collegati prima a un browser",
    ),
    "connected": MessageLookupByLibrary.simpleMessage("Collegato"),
    "connectedTo": m6,
    "contactUs": MessageLookupByLibrary.simpleMessage("Contattaci"),
    "contactUsKeepInfo": MessageLookupByLibrary.simpleMessage(
      "Non cancellare le informazioni qui sotto.",
    ),
    "couldNotGetVideoLink": MessageLookupByLibrary.simpleMessage(
      "Impossibile ottenere il link del video",
    ),
    "couldNotLoadEpisodes": MessageLookupByLibrary.simpleMessage(
      "Impossibile caricare gli episodi",
    ),
    "couldNotLoadPlaylist": MessageLookupByLibrary.simpleMessage(
      "Impossibile caricare la playlist",
    ),
    "couldNotOpenLink": MessageLookupByLibrary.simpleMessage(
      "Impossibile aprire il link",
    ),
    "couldNotReadQuality": MessageLookupByLibrary.simpleMessage(
      "Impossibile leggere le opzioni di qualità dalla pagina.",
    ),
    "delete": MessageLookupByLibrary.simpleMessage("Elimina"),
    "disconnect": MessageLookupByLibrary.simpleMessage("Scollega"),
    "disconnectPhone": MessageLookupByLibrary.simpleMessage(
      "Scollega questo telefono",
    ),
    "disconnectPhoneMessage": MessageLookupByLibrary.simpleMessage(
      "Questo telefono non controllerà più il computer. Per ricollegarlo, scansiona il codice QR sul computer.",
    ),
    "down": MessageLookupByLibrary.simpleMessage("Giù"),
    "endOfVideo": MessageLookupByLibrary.simpleMessage("Fine del video"),
    "enterValidLink": MessageLookupByLibrary.simpleMessage(
      "Inserisci un link che inizi con http o https",
    ),
    "episodes": MessageLookupByLibrary.simpleMessage("Episodi"),
    "error": MessageLookupByLibrary.simpleMessage("Errore"),
    "errorButtonNotFound": MessageLookupByLibrary.simpleMessage(
      "Impossibile trovare quel pulsante nella pagina",
    ),
    "errorDuringAd": MessageLookupByLibrary.simpleMessage(
      "Non puoi farlo durante una pubblicità",
    ),
    "errorEndBeforeStart": MessageLookupByLibrary.simpleMessage(
      "Il punto di fine deve seguire il punto di inizio",
    ),
    "errorGeneric": MessageLookupByLibrary.simpleMessage(
      "Qualcosa è andato storto",
    ),
    "errorInvalidUrl": MessageLookupByLibrary.simpleMessage(
      "Impossibile aprire questo link",
    ),
    "errorNoBrowser": MessageLookupByLibrary.simpleMessage(
      "Nessun browser selezionato",
    ),
    "errorNoMedia": MessageLookupByLibrary.simpleMessage(
      "Nessun video in riproduzione",
    ),
    "errorNotChanged": MessageLookupByLibrary.simpleMessage(
      "Il sito non l’ha modificato",
    ),
    "errorNotSupported": MessageLookupByLibrary.simpleMessage(
      "Questo sito non lo supporta",
    ),
    "errorStartAfterEnd": MessageLookupByLibrary.simpleMessage(
      "Il punto di inizio deve precedere il punto di fine",
    ),
    "errorTabClosed": MessageLookupByLibrary.simpleMessage(
      "Quella scheda è già chiusa",
    ),
    "exitFullScreen": MessageLookupByLibrary.simpleMessage(
      "Esci da schermo intero",
    ),
    "extensionUpdatedReload": MessageLookupByLibrary.simpleMessage(
      "L’estensione Zappit è stata aggiornata. Ricarica la pagina nel browser per continuare a usare tutti i comandi.",
    ),
    "faq": MessageLookupByLibrary.simpleMessage("Domande frequenti"),
    "favorites": MessageLookupByLibrary.simpleMessage("Preferiti"),
    "favoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "Tocca la stella di un sito per aggiungerlo qui.",
    ),
    "forwardSeconds": m7,
    "frameByFrame": MessageLookupByLibrary.simpleMessage(
      "Fotogramma per fotogramma",
    ),
    "freeTrial": MessageLookupByLibrary.simpleMessage("Prova gratuita"),
    "freeTrialDays": m8,
    "freeTrialMonths": m9,
    "freeTrialWeeks": m10,
    "freeTrialYears": m11,
    "fullPowerUnlocked": MessageLookupByLibrary.simpleMessage(
      "Tutte le funzioni sbloccate",
    ),
    "fullScreen": MessageLookupByLibrary.simpleMessage("Schermo intero"),
    "generalSettings": MessageLookupByLibrary.simpleMessage(
      "Impostazioni generali",
    ),
    "gotIt": MessageLookupByLibrary.simpleMessage("Ho capito"),
    "hideChat": MessageLookupByLibrary.simpleMessage("Nascondi chat"),
    "home": MessageLookupByLibrary.simpleMessage("Home"),
    "justPerMonth": m12,
    "largerCaptions": MessageLookupByLibrary.simpleMessage(
      "Sottotitoli più grandi",
    ),
    "lastVideoInPlaylist": MessageLookupByLibrary.simpleMessage(
      "Questo è l’ultimo video della playlist",
    ),
    "learnMore": MessageLookupByLibrary.simpleMessage("Scopri di più"),
    "left": MessageLookupByLibrary.simpleMessage("Sinistra"),
    "linkPanelHint": MessageLookupByLibrary.simpleMessage(
      "Incolla il link di un video e tocca Invia. Si aprirà in una nuova scheda del browser.",
    ),
    "liveBadge": MessageLookupByLibrary.simpleMessage("LIVE"),
    "liveCantRewind": MessageLookupByLibrary.simpleMessage(
      "Non puoi tornare indietro in questa diretta",
    ),
    "longPressSpeed": MessageLookupByLibrary.simpleMessage(
      "Velocità con pressione prolungata",
    ),
    "loopEnd": MessageLookupByLibrary.simpleMessage("Fine del loop"),
    "loopOff": MessageLookupByLibrary.simpleMessage("Ripetizione disattivata"),
    "loopOn": MessageLookupByLibrary.simpleMessage("Ripetizione attiva"),
    "loopStart": MessageLookupByLibrary.simpleMessage("Inizio del loop"),
    "manageSubscription": MessageLookupByLibrary.simpleMessage(
      "Gestisci abbonamento",
    ),
    "minutesCount": m13,
    "minutesShort": m14,
    "mixCantRepeat": MessageLookupByLibrary.simpleMessage(
      "Questa playlist continua a riprodurre nuovi video all’infinito, quindi non può essere ripetuta",
    ),
    "mixCantShuffle": MessageLookupByLibrary.simpleMessage(
      "Questa playlist continua a riprodurre nuovi video all’infinito, quindi non può essere riprodotta in ordine casuale",
    ),
    "monthly": MessageLookupByLibrary.simpleMessage("Mensile"),
    "multipleBrowsersMessage": MessageLookupByLibrary.simpleMessage(
      "Ci sono più browser online. Scegli quello che questo telecomando deve controllare.",
    ),
    "mute": MessageLookupByLibrary.simpleMessage("Disattiva audio"),
    "nextChapter": MessageLookupByLibrary.simpleMessage("Capitolo successivo"),
    "nextEpisode": MessageLookupByLibrary.simpleMessage("Episodio successivo"),
    "nextTab": MessageLookupByLibrary.simpleMessage("Scheda successiva"),
    "nextVideo": MessageLookupByLibrary.simpleMessage("Video successivo"),
    "noBrowser": MessageLookupByLibrary.simpleMessage("Nessun browser"),
    "noBrowserConnectedShare": MessageLookupByLibrary.simpleMessage(
      "Nessun browser è collegato. Apri il browser con l’estensione Zappit e riprova.",
    ),
    "noBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "1. Apri sul computer il browser collegato.\n2. Se non si collega, fai clic sull’icona di Zappit nella barra degli strumenti del browser.",
    ),
    "noBrowserOnline": MessageLookupByLibrary.simpleMessage(
      "Nessun browser è online.",
    ),
    "noBrowserOnlineShort": MessageLookupByLibrary.simpleMessage(
      "Nessun browser online",
    ),
    "noBrowserSelected": MessageLookupByLibrary.simpleMessage(
      "Nessun browser selezionato",
    ),
    "noCategoriesFound": MessageLookupByLibrary.simpleMessage(
      "Nessuna categoria trovata",
    ),
    "noLinkInShare": MessageLookupByLibrary.simpleMessage(
      "Nessun link trovato in ciò che hai condiviso",
    ),
    "noMoreTabs": MessageLookupByLibrary.simpleMessage(
      "Non ci sono altre schede",
    ),
    "noNextEpisode": MessageLookupByLibrary.simpleMessage(
      "Nessun episodio successivo",
    ),
    "noOpenTabs": MessageLookupByLibrary.simpleMessage("Nessuna scheda aperta"),
    "noPreviousPage": MessageLookupByLibrary.simpleMessage(
      "Non c’è una pagina precedente a cui tornare",
    ),
    "noSiteSettings": MessageLookupByLibrary.simpleMessage(
      "Ancora nessuna impostazione per questo sito.",
    ),
    "noSubtitles": MessageLookupByLibrary.simpleMessage(
      "Questo video non ha sottotitoli",
    ),
    "noThanks": MessageLookupByLibrary.simpleMessage("No, grazie"),
    "noVideosOnPage": MessageLookupByLibrary.simpleMessage(
      "In questa pagina non ci sono video.",
    ),
    "notAvailableDuringAd": MessageLookupByLibrary.simpleMessage(
      "Non disponibile durante una pubblicità",
    ),
    "notAvailableForLive": MessageLookupByLibrary.simpleMessage(
      "Non disponibile in diretta",
    ),
    "notAvailableForLiveStreams": MessageLookupByLibrary.simpleMessage(
      "Non disponibile per le dirette",
    ),
    "notAvailableForPhotos": MessageLookupByLibrary.simpleMessage(
      "Non disponibile per i post con foto",
    ),
    "notConnected": MessageLookupByLibrary.simpleMessage("Non collegato"),
    "nothingPlaying": MessageLookupByLibrary.simpleMessage(
      "Nessun video trovato",
    ),
    "nothingPlayingMessage": MessageLookupByLibrary.simpleMessage(
      "Non c’è nessun video in questa schermata. Scegli un’altra scheda o incolla il link di un video.",
    ),
    "nothingToRestore": MessageLookupByLibrary.simpleMessage(
      "Niente da ripristinare",
    ),
    "nothingToRestoreMessage": MessageLookupByLibrary.simpleMessage(
      "Non è stato trovato nessun abbonamento Zappit Pro attivo per questo account.",
    ),
    "obAnimAddExtension": MessageLookupByLibrary.simpleMessage(
      "Aggiungi estensione",
    ),
    "obAnimAdded": MessageLookupByLibrary.simpleMessage("Aggiunta"),
    "obAnimConnectComputer": MessageLookupByLibrary.simpleMessage(
      "Collegati al computer",
    ),
    "obAnimConnectPhone": MessageLookupByLibrary.simpleMessage(
      "Collega il telefono",
    ),
    "obAnimNewCode": m15,
    "obAnimRemoteConnected": MessageLookupByLibrary.simpleMessage(
      "Telecomando collegato",
    ),
    "obAnimScanCode": MessageLookupByLibrary.simpleMessage(
      "Scansiona questo codice con l’app Zappit sul telefono.",
    ),
    "obAnimTagline": MessageLookupByLibrary.simpleMessage("Addio mouse."),
    "obAnimYourPhones": MessageLookupByLibrary.simpleMessage("I tuoi telefoni"),
    "off": MessageLookupByLibrary.simpleMessage("Disattivato"),
    "offline": MessageLookupByLibrary.simpleMessage("Offline"),
    "offlineMessage": MessageLookupByLibrary.simpleMessage(
      "Controlla la connessione a internet. Zappit si ricollega da solo.",
    ),
    "onboarding0AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Toccando play/pausa nell’app Zappit, il video sul portatile si mette in pausa e riprende",
    ),
    "onboarding1AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Si digita zappit.tv/get nel browser e si aggiunge l’estensione Zappit",
    ),
    "onboarding1Body": m16,
    "onboarding1Title": MessageLookupByLibrary.simpleMessage(
      "Per prima cosa, aggiungi l’estensione Zappit al browser",
    ),
    "onboarding2AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Clic sull’icona di Zappit nel browser, poi scansione del codice QR con il telefono",
    ),
    "onboarding2Body": MessageLookupByLibrary.simpleMessage(
      "Fai clic sull’icona di Zappit nella barra degli strumenti del browser, poi inquadra il codice QR con la fotocamera.",
    ),
    "onboarding2Title": MessageLookupByLibrary.simpleMessage(
      "Scansiona il codice QR",
    ),
    "onboardingGetStarted": MessageLookupByLibrary.simpleMessage("Inizia"),
    "onboardingIconHelp": MessageLookupByLibrary.simpleMessage(
      "Non vedi l’icona di Zappit?",
    ),
    "onboardingIconHelpLabel": MessageLookupByLibrary.simpleMessage(
      "Non vedi l’icona di Zappit? Apre la risposta nelle domande frequenti",
    ),
    "onboardingNext": MessageLookupByLibrary.simpleMessage("Avanti"),
    "onboardingOpenQrScanner": MessageLookupByLibrary.simpleMessage(
      "Apri lo scanner QR",
    ),
    "onboardingShareLink": MessageLookupByLibrary.simpleMessage(
      "Invia il link di installazione",
    ),
    "onboardingStepCount": m17,
    "onboardingStepLabel": m18,
    "onboardingWelcomeBody": MessageLookupByLibrary.simpleMessage(
      "Controlla qualsiasi video sul computer. La configurazione richiede solo due rapidi passaggi.",
    ),
    "onboardingWelcomeTitle": MessageLookupByLibrary.simpleMessage(
      "Il tuo telefono ora è un telecomando",
    ),
    "openALink": MessageLookupByLibrary.simpleMessage("Apri un link"),
    "openBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "Apri il browser con l’estensione Zappit per vederne le schede.",
    ),
    "openLinkInBrowser": MessageLookupByLibrary.simpleMessage(
      "Apri un link nel browser",
    ),
    "openSite": m19,
    "openedIn": m20,
    "openingIn": m21,
    "pairCodeExpired": MessageLookupByLibrary.simpleMessage(
      "Questo codice è scaduto. Scansiona il nuovo codice sul computer.",
    ),
    "pairCodeInvalid": MessageLookupByLibrary.simpleMessage(
      "Questo codice non è più valido. Scansiona il nuovo codice sul computer.",
    ),
    "pairCodeUsed": MessageLookupByLibrary.simpleMessage(
      "Questo codice è già stato usato. Scansiona il nuovo codice sul computer.",
    ),
    "pairFailed": MessageLookupByLibrary.simpleMessage(
      "Impossibile collegarsi. Controlla la connessione a internet e riprova.",
    ),
    "pairHowToInstall": MessageLookupByLibrary.simpleMessage(
      "Come installare l’estensione",
    ),
    "pairPhoneLimit": MessageLookupByLibrary.simpleMessage(
      "Questo computer ha già 3 telefoni collegati. Apri Zappit su uno degli altri telefoni collegati e tocca «Scollega questo telefono» in «Altro». Se non hai accesso agli altri telefoni, fai clic su «Reimposta» nelle «Impostazioni» dell’estensione Zappit sul computer.",
    ),
    "pairTitle": MessageLookupByLibrary.simpleMessage(
      "Collegati all’estensione del browser",
    ),
    "paste": MessageLookupByLibrary.simpleMessage("Incolla"),
    "pasteALink": MessageLookupByLibrary.simpleMessage("Incolla un link"),
    "pasteVideoLink": MessageLookupByLibrary.simpleMessage(
      "Incolla il link di un video",
    ),
    "pause": MessageLookupByLibrary.simpleMessage("Pausa"),
    "paymentPending": MessageLookupByLibrary.simpleMessage(
      "Pagamento in sospeso",
    ),
    "paymentPendingMessage": MessageLookupByLibrary.simpleMessage(
      "Pro si attiva non appena il pagamento viene confermato.",
    ),
    "phoneName": MessageLookupByLibrary.simpleMessage("Nome del telefono"),
    "phoneNameEmpty": MessageLookupByLibrary.simpleMessage(
      "Inserisci un nome.",
    ),
    "phoneNameMessage": MessageLookupByLibrary.simpleMessage(
      "Viene mostrato nell’estensione Zappit sul computer.",
    ),
    "pickATab": MessageLookupByLibrary.simpleMessage("Scegli una scheda"),
    "pickBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "Scegli il browser che questo telecomando deve controllare per vederne le schede.",
    ),
    "pickVideosWithPro": MessageLookupByLibrary.simpleMessage(
      "Scegli i video dal telefono con Pro",
    ),
    "play": MessageLookupByLibrary.simpleMessage("Riproduci"),
    "playInApp": MessageLookupByLibrary.simpleMessage("Continua sul telefono"),
    "playNow": MessageLookupByLibrary.simpleMessage("Riproduci ora"),
    "playVideoFirst": MessageLookupByLibrary.simpleMessage(
      "Avvia prima un video nel browser",
    ),
    "playing": MessageLookupByLibrary.simpleMessage("In riproduzione"),
    "playlist": MessageLookupByLibrary.simpleMessage("Playlist"),
    "playlistCantRepeat": MessageLookupByLibrary.simpleMessage(
      "Questa playlist non può essere ripetuta",
    ),
    "playlistCantShuffle": MessageLookupByLibrary.simpleMessage(
      "Questa playlist non può essere riprodotta in ordine casuale",
    ),
    "previousChapter": MessageLookupByLibrary.simpleMessage(
      "Capitolo precedente",
    ),
    "previousTab": MessageLookupByLibrary.simpleMessage("Scheda precedente"),
    "previousVideo": MessageLookupByLibrary.simpleMessage("Video precedente"),
    "pricePerMonth": m22,
    "pricePerYear": m23,
    "privacyPolicy": MessageLookupByLibrary.simpleMessage(
      "Informativa sulla privacy",
    ),
    "proBannerSubtitle": MessageLookupByLibrary.simpleMessage(
      "Sfrutta tutta la potenza del tuo telecomando",
    ),
    "proFeatureAbLoop": MessageLookupByLibrary.simpleMessage(
      "A-B Loop illimitato",
    ),
    "proFeatureAllSpeeds": MessageLookupByLibrary.simpleMessage(
      "Scegli qualsiasi velocità di riproduzione",
    ),
    "proFeatureDedicatedControllers": MessageLookupByLibrary.simpleMessage(
      "Sblocca i telecomandi dedicati ai singoli siti",
    ),
    "proFeatureFullLoop": MessageLookupByLibrary.simpleMessage(
      "Ripetizione del video illimitata",
    ),
    "proFeatureVoiceBoost": MessageLookupByLibrary.simpleMessage(
      "Voice Boost illimitato",
    ),
    "proPreviewActiveBanner": m24,
    "proPreviewEndedMessage": MessageLookupByLibrary.simpleMessage(
      "Grazie per aver provato Zappit Pro! Abbonati per continuare a usare tutte le funzioni Pro senza interruzioni.",
    ),
    "proPreviewEndedSubtitle": m25,
    "proPreviewEndedTitle": MessageLookupByLibrary.simpleMessage(
      "La tua prova gratuita di Pro è terminata",
    ),
    "proPreviewEndsTomorrow": MessageLookupByLibrary.simpleMessage(
      "La prova gratuita di Pro termina domani",
    ),
    "proPreviewStarted": m26,
    "proPreviewUntil": m27,
    "proRestored": m28,
    "proSubscriptionEnded": MessageLookupByLibrary.simpleMessage(
      "Il tuo abbonamento Pro è terminato",
    ),
    "proSubtitle": MessageLookupByLibrary.simpleMessage(
      "Sfrutta tutta la potenza del tuo telecomando.",
    ),
    "purchaseCancelled": MessageLookupByLibrary.simpleMessage(
      "Acquisto annullato",
    ),
    "purchaseCancelledMessage": MessageLookupByLibrary.simpleMessage(
      "Non ti è stato addebitato nulla. Puoi riprovare quando vuoi.",
    ),
    "purchaseFailed": MessageLookupByLibrary.simpleMessage(
      "Acquisto non riuscito",
    ),
    "purchaseNotActivated": MessageLookupByLibrary.simpleMessage(
      "Acquisto non attivato",
    ),
    "purchaseNotActivatedMessage": MessageLookupByLibrary.simpleMessage(
      "Il pagamento è andato a buon fine, ma Pro non è ancora attivo. Tocca «Ripristina acquisti».",
    ),
    "purchasesNotAllowed": MessageLookupByLibrary.simpleMessage(
      "Gli acquisti non sono consentiti su questo dispositivo o account.",
    ),
    "qualityNotChanged": MessageLookupByLibrary.simpleMessage(
      "La qualità non è cambiata",
    ),
    "rateZappit": MessageLookupByLibrary.simpleMessage("Valuta Zappit"),
    "reload": MessageLookupByLibrary.simpleMessage("Ricarica"),
    "remindMe": MessageLookupByLibrary.simpleMessage("Avvisami"),
    "remoteSettings": MessageLookupByLibrary.simpleMessage(
      "Impostazioni del telecomando",
    ),
    "removeFromFavorites": m29,
    "removedFromFavorites": m30,
    "reorderHint": MessageLookupByLibrary.simpleMessage(
      "Tieni premuto un elemento e trascinalo per riordinarlo",
    ),
    "reorderSite": m31,
    "repeatOff": MessageLookupByLibrary.simpleMessage(
      "Ripetizione disattivata",
    ),
    "repeatOffNotice": MessageLookupByLibrary.simpleMessage(
      "Ripetizione disattivata",
    ),
    "repeatOn": MessageLookupByLibrary.simpleMessage("Ripetizione attiva"),
    "repeatingPlaylist": MessageLookupByLibrary.simpleMessage(
      "Ripetizione della playlist",
    ),
    "replay": MessageLookupByLibrary.simpleMessage("Riproduci dall’inizio"),
    "restoreFailed": MessageLookupByLibrary.simpleMessage(
      "Ripristino non riuscito",
    ),
    "restorePurchases": MessageLookupByLibrary.simpleMessage(
      "Ripristina acquisti",
    ),
    "right": MessageLookupByLibrary.simpleMessage("Destra"),
    "save": MessageLookupByLibrary.simpleMessage("Salva"),
    "savePercent": m32,
    "searchCategories": MessageLookupByLibrary.simpleMessage("Cerca categorie"),
    "seasonNumber": m33,
    "secondsShort": m34,
    "seekInterval": MessageLookupByLibrary.simpleMessage("Intervallo di salto"),
    "select": MessageLookupByLibrary.simpleMessage("Seleziona"),
    "selectVideoInBrowser": MessageLookupByLibrary.simpleMessage(
      "Niente in riproduzione",
    ),
    "selectVideoInBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "Fai clic su un video qualsiasi sul computer per iniziare a guardarlo. Il telecomando apparirà qui.",
    ),
    "send": MessageLookupByLibrary.simpleMessage("Invia"),
    "settings": MessageLookupByLibrary.simpleMessage("Impostazioni"),
    "showChat": MessageLookupByLibrary.simpleMessage("Mostra chat"),
    "shuffleOff": MessageLookupByLibrary.simpleMessage(
      "Riproduzione casuale disattivata",
    ),
    "shuffleOffNotice": MessageLookupByLibrary.simpleMessage(
      "Riproduzione casuale disattivata",
    ),
    "shuffleOn": MessageLookupByLibrary.simpleMessage(
      "Riproduzione casuale attiva",
    ),
    "shufflingPlaylist": MessageLookupByLibrary.simpleMessage(
      "Riproduzione casuale della playlist",
    ),
    "siteSettings": m35,
    "siteWeb": MessageLookupByLibrary.simpleMessage("Web"),
    "skipAd": MessageLookupByLibrary.simpleMessage("Salta pubblicità"),
    "skipIntro": MessageLookupByLibrary.simpleMessage("Salta intro"),
    "sleepTimer": MessageLookupByLibrary.simpleMessage("Timer di spegnimento"),
    "sleepTimerLabel": MessageLookupByLibrary.simpleMessage(
      "Timer di spegnimento",
    ),
    "smallerCaptions": MessageLookupByLibrary.simpleMessage(
      "Sottotitoli più piccoli",
    ),
    "soundBlockedMessage": MessageLookupByLibrary.simpleMessage(
      "Tocca per vedere come attivare l’audio.",
    ),
    "soundBlockedTitle": MessageLookupByLibrary.simpleMessage(
      "Perché non si sente niente?",
    ),
    "soundHelpTitle": MessageLookupByLibrary.simpleMessage("Audio"),
    "speedTrialOver": m36,
    "startFreeTrial": MessageLookupByLibrary.simpleMessage(
      "Inizia la prova gratuita",
    ),
    "storeProblem": MessageLookupByLibrary.simpleMessage(
      "Si è verificato un problema durante l’acquisto. Riprova tra poco.",
    ),
    "storeUnavailable": MessageLookupByLibrary.simpleMessage(
      "Al momento non è possibile effettuare acquisti. Riprova più tardi.",
    ),
    "subscribe": MessageLookupByLibrary.simpleMessage("Abbonati"),
    "success": MessageLookupByLibrary.simpleMessage("Fatto"),
    "support": MessageLookupByLibrary.simpleMessage("Assistenza"),
    "supportedSites": MessageLookupByLibrary.simpleMessage("Siti supportati"),
    "supportedSitesIntro": MessageLookupByLibrary.simpleMessage(
      "Questi siti hanno un telecomando dedicato, creato apposta per loro. Su tutti gli altri siti, Zappit funziona come un telecomando standard.",
    ),
    "tabMore": MessageLookupByLibrary.simpleMessage("Altro"),
    "tabRemote": MessageLookupByLibrary.simpleMessage("Telecomando"),
    "tabTabs": MessageLookupByLibrary.simpleMessage("Schede"),
    "tapToKeepPro": MessageLookupByLibrary.simpleMessage(
      "Tocca per mantenere tutte le funzioni Pro.",
    ),
    "tellAFriend": MessageLookupByLibrary.simpleMessage("Consiglia a un amico"),
    "termsOfService": MessageLookupByLibrary.simpleMessage(
      "Termini di servizio",
    ),
    "theaterMode": MessageLookupByLibrary.simpleMessage("Modalità cinema"),
    "trialReminderBody": m37,
    "trialReminderChannel": MessageLookupByLibrary.simpleMessage(
      "Promemoria prova gratuita",
    ),
    "trialReminderChannelDescription": MessageLookupByLibrary.simpleMessage(
      "Un promemoria prima della fine della prova gratuita",
    ),
    "trialReminderMessage": MessageLookupByLibrary.simpleMessage(
      "Vuoi che ti avvisiamo il giorno prima della fine della prova gratuita, così non avrai addebiti a sorpresa?",
    ),
    "trialReminderNotificationTitle": MessageLookupByLibrary.simpleMessage(
      "La prova gratuita dell’abbonamento Zappit Pro sta per terminare",
    ),
    "trialReminderTitle": MessageLookupByLibrary.simpleMessage(
      "Promemoria della prova",
    ),
    "trialTerms": m38,
    "trialTermsDays": m39,
    "trialTermsMonths": m40,
    "trialTermsYears": m41,
    "tryAgain": MessageLookupByLibrary.simpleMessage("Riprova"),
    "turnOffAbFirst": MessageLookupByLibrary.simpleMessage(
      "Disattiva prima l’A-B Loop",
    ),
    "tutorial": MessageLookupByLibrary.simpleMessage("Guida"),
    "unavailable": MessageLookupByLibrary.simpleMessage("Non disponibile"),
    "undo": MessageLookupByLibrary.simpleMessage("Annulla"),
    "unmute": MessageLookupByLibrary.simpleMessage("Riattiva audio"),
    "untitled": MessageLookupByLibrary.simpleMessage("Senza titolo"),
    "up": MessageLookupByLibrary.simpleMessage("Su"),
    "upNext": MessageLookupByLibrary.simpleMessage("A seguire"),
    "upNextCountdown": m42,
    "upgrade": MessageLookupByLibrary.simpleMessage("Passa a Pro"),
    "videoLengthUnknown": MessageLookupByLibrary.simpleMessage(
      "La durata di questo video è sconosciuta",
    ),
    "videoQuality": MessageLookupByLibrary.simpleMessage("Qualità video"),
    "view": MessageLookupByLibrary.simpleMessage("Vedi"),
    "voiceBoostDuringAd": MessageLookupByLibrary.simpleMessage(
      "Voice Boost non è disponibile durante una pubblicità",
    ),
    "voiceBoostOff": MessageLookupByLibrary.simpleMessage(
      "Voice Boost disattivato",
    ),
    "voiceBoostOn": MessageLookupByLibrary.simpleMessage("Voice Boost attivo"),
    "voiceBoostTrialLeft": m43,
    "voiceBoostTrialOver": m44,
    "voiceBoostTurnedOn": MessageLookupByLibrary.simpleMessage(
      "Voice Boost attivo: le voci si sentono meglio",
    ),
    "voiceBoostUnsupported": MessageLookupByLibrary.simpleMessage(
      "Questo video non supporta Voice Boost",
    ),
    "volumeDown": MessageLookupByLibrary.simpleMessage("Abbassa volume"),
    "volumeUp": MessageLookupByLibrary.simpleMessage("Alza volume"),
    "waitingForBrowser": MessageLookupByLibrary.simpleMessage(
      "In attesa del browser…",
    ),
    "watchAgain": MessageLookupByLibrary.simpleMessage("Guarda di nuovo"),
    "watching": MessageLookupByLibrary.simpleMessage("In visione"),
    "welcomeToPro": m45,
    "windowNumber": m46,
    "yearly": MessageLookupByLibrary.simpleMessage("Annuale"),
    "yourBrowser": MessageLookupByLibrary.simpleMessage("il tuo browser"),
    "youreConnected": MessageLookupByLibrary.simpleMessage(
      "Collegamento riuscito!",
    ),
    "youreOffline": MessageLookupByLibrary.simpleMessage("Sei offline"),
    "youtubeHome": MessageLookupByLibrary.simpleMessage("Home di YouTube"),
    "ytCourses": MessageLookupByLibrary.simpleMessage("Corsi"),
    "ytDownloads": MessageLookupByLibrary.simpleMessage("Download"),
    "ytExplore": MessageLookupByLibrary.simpleMessage("Esplora"),
    "ytGaming": MessageLookupByLibrary.simpleMessage("Videogiochi"),
    "ytHistory": MessageLookupByLibrary.simpleMessage("Cronologia"),
    "ytHype": MessageLookupByLibrary.simpleMessage("Hype"),
    "ytLikedVideos": MessageLookupByLibrary.simpleMessage("Video piaciuti"),
    "ytLive": MessageLookupByLibrary.simpleMessage("Live"),
    "ytMemberships": MessageLookupByLibrary.simpleMessage("Abbonamenti"),
    "ytMusic": MessageLookupByLibrary.simpleMessage("Musica"),
    "ytPlaylists": MessageLookupByLibrary.simpleMessage("Playlist"),
    "ytPodcasts": MessageLookupByLibrary.simpleMessage("Podcast"),
    "ytShorts": MessageLookupByLibrary.simpleMessage("Shorts"),
    "ytSubscriptions": MessageLookupByLibrary.simpleMessage("Iscrizioni"),
    "ytVideos": MessageLookupByLibrary.simpleMessage("Video"),
    "ytWatchLater": MessageLookupByLibrary.simpleMessage("Guarda più tardi"),
    "ytYou": MessageLookupByLibrary.simpleMessage("Tu"),
  };
}
