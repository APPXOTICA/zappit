// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
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
  String get localeName => 'es';

  static String m0(site) => "Añadir ${site} a Favoritos";

  static String m1(count) => "Retroceder ${count} segundos";

  static String m2(browser) =>
      "${browser} no ha respondido. Comprueba que está abierto.";

  static String m3(browsers) => "Desconectado de ${browsers}";

  static String m4(name) => "Canal: ${name}";

  static String m5(current, total) => "Capítulo ${current}/${total}";

  static String m6(browser) => "Conectado a ${browser}";

  static String m7(count) => "Avanzar ${count} segundos";

  static String m8(count) =>
      "Prueba gratis: ${Intl.plural(count, one: '${count} día', other: '${count} días')}";

  static String m9(count) =>
      "Prueba gratis: ${Intl.plural(count, one: '${count} mes', other: '${count} meses')}";

  static String m10(count) => "Prueba gratis: ${count} sem.";

  static String m11(count) =>
      "Prueba gratis: ${Intl.plural(count, one: '${count} año', other: '${count} años')}";

  static String m12(price) => "Solo ${price}/mes";

  static String m13(count) =>
      "${Intl.plural(count, one: '1 minuto', other: '${count} minutos')}";

  static String m14(count) => "${count} min";

  static String m15(time) => "Nuevo código en ${time}";

  static String m16(url) =>
      "Abre ${url} en el navegador de tu ordenador para instalar la extensión de Zappit.";

  static String m17(current, total) => "${current} / ${total}";

  static String m18(current, total) => "Paso ${current} de ${total}";

  static String m19(site) => "Abrir ${site}";

  static String m20(browser) => "Abierto en ${browser}";

  static String m21(browser) => "Abriendo en ${browser}…";

  static String m22(price) => "${price} / mes";

  static String m23(price) => "${price} / año";

  static String m24(date) =>
      "Tu acceso gratis a Pro dura hasta el ${date}. Suscríbete antes de que termine para seguir con todas las funciones Pro sin interrupciones.";

  static String m25(proName) =>
      "Tu acceso gratis a Pro ha terminado. Sigue disfrutando de todas las funciones Pro con ${proName}.";

  static String m26(days) =>
      "Disfruta de todas las funciones de Zappit Pro durante ${days} días. Es totalmente gratis: no se te cobrará nada al terminar.";

  static String m27(date) => "Acceso gratis a Pro hasta el ${date}";

  static String m28(proName) => "${proName} restaurado";

  static String m29(site) => "Quitar ${site} de Favoritos";

  static String m30(site) => "${site} quitado de Favoritos";

  static String m31(site) => "Reordenar ${site}";

  static String m32(percent) => "Ahorra un ${percent} %";

  static String m33(number) => "Temporada ${number}";

  static String m34(count) => "${count} s";

  static String m35(site) => "Ajustes de ${site}";

  static String m36(count) =>
      "Vuelta a 1x. Sin Pro, puedes usar esta velocidad durante ${count} segundos.";

  static String m37(price, date) =>
      "Tu prueba gratis acaba mañana. El ${date} se te cobrarán ${price}. Si no quieres continuar, cancela tu suscripción antes.";

  static String m38(price) =>
      "Empieza con una prueba gratis y después ${price}/año.";

  static String m39(count, price) =>
      "Empieza con una prueba gratis de ${Intl.plural(count, one: '${count} día', other: '${count} días')} y después ${price}/año.";

  static String m40(count, price) =>
      "Empieza con una prueba gratis de ${Intl.plural(count, one: '${count} mes', other: '${count} meses')} y después ${price}/año.";

  static String m41(count, price) =>
      "Empieza con una prueba gratis de ${Intl.plural(count, one: '${count} año', other: '${count} años')} y después ${price}/año.";

  static String m42(count) => "A continuación · empieza en ${count} s";

  static String m43(count) => "Prueba de Voice Boost, quedan ${count} segundos";

  static String m44(count) =>
      "Voice Boost desactivado. Sin Pro, puedes usar Voice Boost durante ${count} segundos.";

  static String m45(proName) => "Te damos la bienvenida a ${proName}";

  static String m46(number) => "Ventana ${number}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "abLoopCount": MessageLookupByLibrary.simpleMessage(
      "Repeticiones del A-B Loop",
    ),
    "abOffForLive": MessageLookupByLibrary.simpleMessage(
      "El A-B Loop no está disponible en directo",
    ),
    "account": MessageLookupByLibrary.simpleMessage("Conexión"),
    "adBadge": MessageLookupByLibrary.simpleMessage("ANUNCIO"),
    "addToFavorites": m0,
    "allCategories": MessageLookupByLibrary.simpleMessage(
      "Todas las categorías",
    ),
    "allSites": MessageLookupByLibrary.simpleMessage("Todos los sitios"),
    "alreadySubscribed": MessageLookupByLibrary.simpleMessage(
      "Ya tienes esta suscripción. Prueba con Restaurar compras.",
    ),
    "back": MessageLookupByLibrary.simpleMessage("Atrás"),
    "backSeconds": m1,
    "browserDidNotAnswer": m2,
    "browserNotResponding": MessageLookupByLibrary.simpleMessage(
      "El navegador no responde",
    ),
    "browsers": MessageLookupByLibrary.simpleMessage("Navegadores"),
    "browsersDisconnected": m3,
    "browsersDisconnectedBody": MessageLookupByLibrary.simpleMessage(
      "Otro móvil se ha conectado en su lugar. Para volver a conectar este móvil, escanea el código QR en ese ordenador.",
    ),
    "cameraDenied": MessageLookupByLibrary.simpleMessage(
      "Permite el acceso a la cámara en Ajustes para escanear el código.",
    ),
    "cameraUnavailable": MessageLookupByLibrary.simpleMessage(
      "La cámara no está disponible ahora.",
    ),
    "cancel": MessageLookupByLibrary.simpleMessage("Cancelar"),
    "cancelAnytime": MessageLookupByLibrary.simpleMessage(
      "Puedes cancelar cuando quieras desde tus suscripciones.",
    ),
    "cantLoadPage": MessageLookupByLibrary.simpleMessage(
      "No se puede cargar esta página",
    ),
    "cantOpenOnPhone": MessageLookupByLibrary.simpleMessage(
      "Este vídeo no se puede abrir en el móvil",
    ),
    "cantReachBrowser": MessageLookupByLibrary.simpleMessage(
      "No se encuentra ningún navegador",
    ),
    "cantSeekVideo": MessageLookupByLibrary.simpleMessage(
      "No se puede avanzar ni retroceder en este vídeo",
    ),
    "captionLanguage": MessageLookupByLibrary.simpleMessage(
      "Idioma de los subtítulos",
    ),
    "captions": MessageLookupByLibrary.simpleMessage("Subtítulos"),
    "captionsOff": MessageLookupByLibrary.simpleMessage(
      "Subtítulos desactivados",
    ),
    "captionsOn": MessageLookupByLibrary.simpleMessage("Subtítulos activados"),
    "categories": MessageLookupByLibrary.simpleMessage("Categorías"),
    "categoryFavoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "Toca la estrella de una categoría para añadirla aquí.",
    ),
    "channelLabel": m4,
    "chapterPosition": m5,
    "chapters": MessageLookupByLibrary.simpleMessage("Capítulos"),
    "chaptersDuringAd": MessageLookupByLibrary.simpleMessage(
      "No se pueden saltar capítulos durante un anuncio",
    ),
    "checkConnection": MessageLookupByLibrary.simpleMessage(
      "Comprueba tu conexión a internet e inténtalo de nuevo.",
    ),
    "checkConnectionShort": MessageLookupByLibrary.simpleMessage(
      "Comprueba tu conexión e inténtalo de nuevo.",
    ),
    "chooseBrowser": MessageLookupByLibrary.simpleMessage("Elige un navegador"),
    "chooseNextVideo": MessageLookupByLibrary.simpleMessage(
      "Elige el siguiente vídeo",
    ),
    "clear": MessageLookupByLibrary.simpleMessage("Borrar"),
    "close": MessageLookupByLibrary.simpleMessage("Cerrar"),
    "connectBrowser": MessageLookupByLibrary.simpleMessage(
      "Conectar un navegador",
    ),
    "connectBrowserFirst": MessageLookupByLibrary.simpleMessage(
      "Conéctate primero a un navegador",
    ),
    "connected": MessageLookupByLibrary.simpleMessage("Conectado"),
    "connectedTo": m6,
    "contactUs": MessageLookupByLibrary.simpleMessage("Contáctanos"),
    "contactUsKeepInfo": MessageLookupByLibrary.simpleMessage(
      "No borres la información de abajo.",
    ),
    "couldNotGetVideoLink": MessageLookupByLibrary.simpleMessage(
      "No se ha podido obtener el enlace del vídeo",
    ),
    "couldNotLoadEpisodes": MessageLookupByLibrary.simpleMessage(
      "No se han podido cargar los episodios",
    ),
    "couldNotLoadPlaylist": MessageLookupByLibrary.simpleMessage(
      "No se ha podido cargar la lista de reproducción",
    ),
    "couldNotOpenLink": MessageLookupByLibrary.simpleMessage(
      "No se ha podido abrir el enlace",
    ),
    "couldNotReadQuality": MessageLookupByLibrary.simpleMessage(
      "No se han podido leer las opciones de calidad de la página.",
    ),
    "delete": MessageLookupByLibrary.simpleMessage("Eliminar"),
    "disconnect": MessageLookupByLibrary.simpleMessage("Desconectar"),
    "disconnectPhone": MessageLookupByLibrary.simpleMessage(
      "Desconectar este móvil",
    ),
    "disconnectPhoneMessage": MessageLookupByLibrary.simpleMessage(
      "Este móvil dejará de controlar tu ordenador. Para volver a conectarlo, escanea el código QR de tu ordenador.",
    ),
    "down": MessageLookupByLibrary.simpleMessage("Abajo"),
    "endOfVideo": MessageLookupByLibrary.simpleMessage("Al terminar el vídeo"),
    "enterValidLink": MessageLookupByLibrary.simpleMessage(
      "Introduce un enlace que empiece por http o https",
    ),
    "episodes": MessageLookupByLibrary.simpleMessage("Episodios"),
    "error": MessageLookupByLibrary.simpleMessage("Error"),
    "errorButtonNotFound": MessageLookupByLibrary.simpleMessage(
      "No se ha encontrado ese botón en la página",
    ),
    "errorDuringAd": MessageLookupByLibrary.simpleMessage(
      "No se puede durante un anuncio",
    ),
    "errorEndBeforeStart": MessageLookupByLibrary.simpleMessage(
      "El punto final debe estar después del punto de inicio",
    ),
    "errorGeneric": MessageLookupByLibrary.simpleMessage("Algo ha fallado"),
    "errorInvalidUrl": MessageLookupByLibrary.simpleMessage(
      "No se puede abrir ese enlace",
    ),
    "errorNoBrowser": MessageLookupByLibrary.simpleMessage(
      "No hay ningún navegador seleccionado",
    ),
    "errorNoMedia": MessageLookupByLibrary.simpleMessage(
      "No se está reproduciendo ningún vídeo",
    ),
    "errorNotChanged": MessageLookupByLibrary.simpleMessage(
      "El sitio no lo ha cambiado",
    ),
    "errorNotSupported": MessageLookupByLibrary.simpleMessage(
      "Este sitio no lo permite",
    ),
    "errorStartAfterEnd": MessageLookupByLibrary.simpleMessage(
      "El punto de inicio debe estar antes del punto final",
    ),
    "errorTabClosed": MessageLookupByLibrary.simpleMessage(
      "Esa pestaña ya está cerrada",
    ),
    "exitFullScreen": MessageLookupByLibrary.simpleMessage(
      "Salir de pantalla completa",
    ),
    "extensionUpdatedReload": MessageLookupByLibrary.simpleMessage(
      "La extensión de Zappit se ha actualizado. Recarga la pestaña en el navegador para seguir usando todos los controles.",
    ),
    "faq": MessageLookupByLibrary.simpleMessage("Preguntas frecuentes"),
    "favorites": MessageLookupByLibrary.simpleMessage("Favoritos"),
    "favoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "Toca la estrella de un sitio para añadirlo aquí.",
    ),
    "forwardSeconds": m7,
    "frameByFrame": MessageLookupByLibrary.simpleMessage(
      "Fotograma a fotograma",
    ),
    "freeTrial": MessageLookupByLibrary.simpleMessage("Prueba gratis"),
    "freeTrialDays": m8,
    "freeTrialMonths": m9,
    "freeTrialWeeks": m10,
    "freeTrialYears": m11,
    "fullPowerUnlocked": MessageLookupByLibrary.simpleMessage(
      "Todas las funciones desbloqueadas",
    ),
    "fullScreen": MessageLookupByLibrary.simpleMessage("Pantalla completa"),
    "generalSettings": MessageLookupByLibrary.simpleMessage(
      "Ajustes generales",
    ),
    "gotIt": MessageLookupByLibrary.simpleMessage("Entendido"),
    "hideChat": MessageLookupByLibrary.simpleMessage("Ocultar chat"),
    "home": MessageLookupByLibrary.simpleMessage("Inicio"),
    "justPerMonth": m12,
    "largerCaptions": MessageLookupByLibrary.simpleMessage(
      "Subtítulos más grandes",
    ),
    "lastVideoInPlaylist": MessageLookupByLibrary.simpleMessage(
      "Es el último vídeo de la lista",
    ),
    "learnMore": MessageLookupByLibrary.simpleMessage("Más información"),
    "left": MessageLookupByLibrary.simpleMessage("Izquierda"),
    "linkPanelHint": MessageLookupByLibrary.simpleMessage(
      "Pega un enlace de vídeo y toca Enviar. Se abrirá en una pestaña nueva de tu navegador.",
    ),
    "liveBadge": MessageLookupByLibrary.simpleMessage("EN DIRECTO"),
    "liveCantRewind": MessageLookupByLibrary.simpleMessage(
      "Esta emisión en directo no se puede rebobinar",
    ),
    "longPressSpeed": MessageLookupByLibrary.simpleMessage(
      "Velocidad al mantener pulsado",
    ),
    "loopEnd": MessageLookupByLibrary.simpleMessage("Fin del bucle"),
    "loopOff": MessageLookupByLibrary.simpleMessage("Repetición desactivada"),
    "loopOn": MessageLookupByLibrary.simpleMessage("Repetición activada"),
    "loopStart": MessageLookupByLibrary.simpleMessage("Inicio del bucle"),
    "manageSubscription": MessageLookupByLibrary.simpleMessage(
      "Gestionar suscripción",
    ),
    "minutesCount": m13,
    "minutesShort": m14,
    "mixCantRepeat": MessageLookupByLibrary.simpleMessage(
      "Esta lista reproduce vídeos nuevos sin fin, así que no se puede repetir",
    ),
    "mixCantShuffle": MessageLookupByLibrary.simpleMessage(
      "Esta lista reproduce vídeos nuevos sin fin, así que no se puede poner en aleatorio",
    ),
    "monthly": MessageLookupByLibrary.simpleMessage("Mensual"),
    "multipleBrowsersMessage": MessageLookupByLibrary.simpleMessage(
      "Hay varios navegadores conectados. Elige el que quieres controlar con este mando.",
    ),
    "mute": MessageLookupByLibrary.simpleMessage("Silenciar"),
    "nextChapter": MessageLookupByLibrary.simpleMessage("Capítulo siguiente"),
    "nextEpisode": MessageLookupByLibrary.simpleMessage("Siguiente episodio"),
    "nextTab": MessageLookupByLibrary.simpleMessage("Pestaña siguiente"),
    "nextVideo": MessageLookupByLibrary.simpleMessage("Vídeo siguiente"),
    "noBrowser": MessageLookupByLibrary.simpleMessage("Sin navegador"),
    "noBrowserConnectedShare": MessageLookupByLibrary.simpleMessage(
      "No hay ningún navegador conectado. Abre tu navegador con la extensión de Zappit e inténtalo de nuevo.",
    ),
    "noBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "1. Abre en tu ordenador el navegador que conectaste.\n2. Si no se conecta, haz clic en el icono de Zappit en la barra de herramientas del navegador.",
    ),
    "noBrowserOnline": MessageLookupByLibrary.simpleMessage(
      "No hay ningún navegador conectado.",
    ),
    "noBrowserOnlineShort": MessageLookupByLibrary.simpleMessage(
      "Ningún navegador conectado",
    ),
    "noBrowserSelected": MessageLookupByLibrary.simpleMessage(
      "Ningún navegador seleccionado",
    ),
    "noCategoriesFound": MessageLookupByLibrary.simpleMessage(
      "No se han encontrado categorías",
    ),
    "noLinkInShare": MessageLookupByLibrary.simpleMessage(
      "No hay ningún enlace en lo que has compartido",
    ),
    "noMoreTabs": MessageLookupByLibrary.simpleMessage("No hay más pestañas"),
    "noNextEpisode": MessageLookupByLibrary.simpleMessage(
      "No hay siguiente episodio",
    ),
    "noOpenTabs": MessageLookupByLibrary.simpleMessage(
      "No hay pestañas abiertas",
    ),
    "noPreviousPage": MessageLookupByLibrary.simpleMessage(
      "No hay ninguna página anterior a la que volver",
    ),
    "noSiteSettings": MessageLookupByLibrary.simpleMessage(
      "Este sitio aún no tiene ajustes.",
    ),
    "noSubtitles": MessageLookupByLibrary.simpleMessage(
      "Este vídeo no tiene subtítulos",
    ),
    "noThanks": MessageLookupByLibrary.simpleMessage("No, gracias"),
    "noVideosOnPage": MessageLookupByLibrary.simpleMessage(
      "No hay vídeos en esta página.",
    ),
    "notAvailableDuringAd": MessageLookupByLibrary.simpleMessage(
      "No disponible durante un anuncio",
    ),
    "notAvailableForLive": MessageLookupByLibrary.simpleMessage(
      "No disponible en directo",
    ),
    "notAvailableForLiveStreams": MessageLookupByLibrary.simpleMessage(
      "No disponible en emisiones en directo",
    ),
    "notAvailableForPhotos": MessageLookupByLibrary.simpleMessage(
      "No disponible en publicaciones de fotos",
    ),
    "notConnected": MessageLookupByLibrary.simpleMessage("Sin conexión"),
    "nothingPlaying": MessageLookupByLibrary.simpleMessage(
      "No se ha encontrado ningún vídeo",
    ),
    "nothingPlayingMessage": MessageLookupByLibrary.simpleMessage(
      "No hay vídeo en esta pantalla. Elige otra pestaña o pega un enlace de vídeo.",
    ),
    "nothingToRestore": MessageLookupByLibrary.simpleMessage(
      "Nada que restaurar",
    ),
    "nothingToRestoreMessage": MessageLookupByLibrary.simpleMessage(
      "No se ha encontrado ninguna suscripción activa a Zappit Pro en esta cuenta.",
    ),
    "obAnimAddExtension": MessageLookupByLibrary.simpleMessage(
      "Añadir extensión",
    ),
    "obAnimAdded": MessageLookupByLibrary.simpleMessage("Añadida"),
    "obAnimConnectComputer": MessageLookupByLibrary.simpleMessage(
      "Conecta con tu ordenador",
    ),
    "obAnimConnectPhone": MessageLookupByLibrary.simpleMessage(
      "Conecta tu móvil",
    ),
    "obAnimNewCode": m15,
    "obAnimRemoteConnected": MessageLookupByLibrary.simpleMessage(
      "Mando conectado",
    ),
    "obAnimScanCode": MessageLookupByLibrary.simpleMessage(
      "Escanea este código con la app de Zappit en tu móvil.",
    ),
    "obAnimTagline": MessageLookupByLibrary.simpleMessage(
      "Olvídate del ratón.",
    ),
    "obAnimYourPhones": MessageLookupByLibrary.simpleMessage("Tus móviles"),
    "off": MessageLookupByLibrary.simpleMessage("Desactivado"),
    "offline": MessageLookupByLibrary.simpleMessage("Sin conexión"),
    "offlineMessage": MessageLookupByLibrary.simpleMessage(
      "Comprueba tu conexión a internet. Zappit se volverá a conectar solo.",
    ),
    "onboarding0AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Al tocar reproducir/pausa en la app de Zappit, el vídeo del portátil se pausa y se reanuda",
    ),
    "onboarding1AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Se escribe zappit.tv/get en el navegador y se añade la extensión de Zappit",
    ),
    "onboarding1Body": m16,
    "onboarding1Title": MessageLookupByLibrary.simpleMessage(
      "Primero, añade la extensión de Zappit a tu navegador",
    ),
    "onboarding2AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Clic en el icono de Zappit del navegador y escaneo del código QR con el móvil",
    ),
    "onboarding2Body": MessageLookupByLibrary.simpleMessage(
      "Haz clic en el icono de Zappit en la barra de herramientas del navegador y apunta la cámara al código QR.",
    ),
    "onboarding2Title": MessageLookupByLibrary.simpleMessage(
      "Escanea el código QR",
    ),
    "onboardingGetStarted": MessageLookupByLibrary.simpleMessage("Empezar"),
    "onboardingIconHelp": MessageLookupByLibrary.simpleMessage(
      "¿No ves el icono de Zappit?",
    ),
    "onboardingIconHelpLabel": MessageLookupByLibrary.simpleMessage(
      "¿No ves el icono de Zappit? Abre la respuesta en las preguntas frecuentes",
    ),
    "onboardingNext": MessageLookupByLibrary.simpleMessage("Siguiente"),
    "onboardingOpenQrScanner": MessageLookupByLibrary.simpleMessage(
      "Abrir escáner QR",
    ),
    "onboardingShareLink": MessageLookupByLibrary.simpleMessage(
      "Enviar enlace de instalación",
    ),
    "onboardingStepCount": m17,
    "onboardingStepLabel": m18,
    "onboardingWelcomeBody": MessageLookupByLibrary.simpleMessage(
      "Controla cualquier vídeo de tu ordenador. Se configura en solo dos pasos.",
    ),
    "onboardingWelcomeTitle": MessageLookupByLibrary.simpleMessage(
      "Tu móvil ya es tu mando",
    ),
    "openALink": MessageLookupByLibrary.simpleMessage("Abrir un enlace"),
    "openBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "Abre tu navegador con la extensión de Zappit para ver sus pestañas.",
    ),
    "openLinkInBrowser": MessageLookupByLibrary.simpleMessage(
      "Abrir un enlace en el navegador",
    ),
    "openSite": m19,
    "openedIn": m20,
    "openingIn": m21,
    "pairCodeExpired": MessageLookupByLibrary.simpleMessage(
      "Este código ha caducado. Escanea el nuevo código de tu ordenador.",
    ),
    "pairCodeInvalid": MessageLookupByLibrary.simpleMessage(
      "Este código ya no es válido. Escanea el nuevo código de tu ordenador.",
    ),
    "pairCodeUsed": MessageLookupByLibrary.simpleMessage(
      "Este código ya se ha usado. Escanea el nuevo código de tu ordenador.",
    ),
    "pairFailed": MessageLookupByLibrary.simpleMessage(
      "No se ha podido conectar. Comprueba tu conexión a internet e inténtalo de nuevo.",
    ),
    "pairHowToInstall": MessageLookupByLibrary.simpleMessage(
      "Cómo instalar la extensión",
    ),
    "pairPhoneLimit": MessageLookupByLibrary.simpleMessage(
      "Este ordenador ya tiene 3 móviles conectados. Abre Zappit en uno de tus otros móviles conectados y toca «Desconectar este móvil» en «Más». Si no tienes acceso a ninguno de esos móviles, haz clic en «Restablecer» en los «Ajustes» de la extensión de Zappit de tu ordenador.",
    ),
    "pairTitle": MessageLookupByLibrary.simpleMessage(
      "Conecta con la extensión del navegador",
    ),
    "paste": MessageLookupByLibrary.simpleMessage("Pegar"),
    "pasteALink": MessageLookupByLibrary.simpleMessage("Pegar enlace"),
    "pasteVideoLink": MessageLookupByLibrary.simpleMessage(
      "Pega un enlace de vídeo",
    ),
    "pause": MessageLookupByLibrary.simpleMessage("Pausar"),
    "paymentPending": MessageLookupByLibrary.simpleMessage("Pago pendiente"),
    "paymentPendingMessage": MessageLookupByLibrary.simpleMessage(
      "Pro se activará en cuanto se confirme el pago.",
    ),
    "phoneName": MessageLookupByLibrary.simpleMessage("Nombre del móvil"),
    "phoneNameEmpty": MessageLookupByLibrary.simpleMessage(
      "Escribe un nombre.",
    ),
    "phoneNameMessage": MessageLookupByLibrary.simpleMessage(
      "Se muestra en la extensión de Zappit de tu ordenador.",
    ),
    "pickATab": MessageLookupByLibrary.simpleMessage("Elegir pestaña"),
    "pickBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "Elige el navegador que controlará este mando para ver sus pestañas.",
    ),
    "pickVideosWithPro": MessageLookupByLibrary.simpleMessage(
      "Elige vídeos desde el móvil con Pro",
    ),
    "play": MessageLookupByLibrary.simpleMessage("Reproducir"),
    "playInApp": MessageLookupByLibrary.simpleMessage("Seguir en el móvil"),
    "playNow": MessageLookupByLibrary.simpleMessage("Reproducir ya"),
    "playVideoFirst": MessageLookupByLibrary.simpleMessage(
      "Reproduce primero un vídeo en el navegador",
    ),
    "playing": MessageLookupByLibrary.simpleMessage("Reproduciendo"),
    "playlist": MessageLookupByLibrary.simpleMessage("Lista de reproducción"),
    "playlistCantRepeat": MessageLookupByLibrary.simpleMessage(
      "Esta lista no se puede repetir",
    ),
    "playlistCantShuffle": MessageLookupByLibrary.simpleMessage(
      "Esta lista no se puede poner en aleatorio",
    ),
    "previousChapter": MessageLookupByLibrary.simpleMessage(
      "Capítulo anterior",
    ),
    "previousTab": MessageLookupByLibrary.simpleMessage("Pestaña anterior"),
    "previousVideo": MessageLookupByLibrary.simpleMessage("Vídeo anterior"),
    "pricePerMonth": m22,
    "pricePerYear": m23,
    "privacyPolicy": MessageLookupByLibrary.simpleMessage(
      "Política de privacidad",
    ),
    "proBannerSubtitle": MessageLookupByLibrary.simpleMessage(
      "Saca todo el partido a tu mando",
    ),
    "proFeatureAbLoop": MessageLookupByLibrary.simpleMessage(
      "A-B Loop sin límite",
    ),
    "proFeatureAllSpeeds": MessageLookupByLibrary.simpleMessage(
      "Elige cualquier velocidad de reproducción",
    ),
    "proFeatureDedicatedControllers": MessageLookupByLibrary.simpleMessage(
      "Mandos específicos para los sitios compatibles",
    ),
    "proFeatureFullLoop": MessageLookupByLibrary.simpleMessage(
      "Repetición del vídeo completo sin límite",
    ),
    "proFeatureVoiceBoost": MessageLookupByLibrary.simpleMessage(
      "Voice Boost sin límite",
    ),
    "proPreviewActiveBanner": m24,
    "proPreviewEndedMessage": MessageLookupByLibrary.simpleMessage(
      "¡Gracias por probar Zappit Pro! Suscríbete para seguir disfrutando de todas las funciones Pro sin interrupciones.",
    ),
    "proPreviewEndedSubtitle": m25,
    "proPreviewEndedTitle": MessageLookupByLibrary.simpleMessage(
      "Tu acceso gratis a Pro ha terminado",
    ),
    "proPreviewEndsTomorrow": MessageLookupByLibrary.simpleMessage(
      "Tu acceso gratis a Pro termina mañana",
    ),
    "proPreviewStarted": m26,
    "proPreviewUntil": m27,
    "proRestored": m28,
    "proSubscriptionEnded": MessageLookupByLibrary.simpleMessage(
      "Tu suscripción Pro ha terminado",
    ),
    "proSubtitle": MessageLookupByLibrary.simpleMessage(
      "Saca todo el partido a tu mando.",
    ),
    "purchaseCancelled": MessageLookupByLibrary.simpleMessage(
      "Compra cancelada",
    ),
    "purchaseCancelledMessage": MessageLookupByLibrary.simpleMessage(
      "No se ha cobrado nada. Puedes volver a intentarlo cuando quieras.",
    ),
    "purchaseFailed": MessageLookupByLibrary.simpleMessage(
      "La compra ha fallado",
    ),
    "purchaseNotActivated": MessageLookupByLibrary.simpleMessage(
      "Compra no activada",
    ),
    "purchaseNotActivatedMessage": MessageLookupByLibrary.simpleMessage(
      "El pago se ha realizado, pero Pro aún no está activo. Prueba con Restaurar compras.",
    ),
    "purchasesNotAllowed": MessageLookupByLibrary.simpleMessage(
      "No se permiten compras en este dispositivo o cuenta.",
    ),
    "qualityNotChanged": MessageLookupByLibrary.simpleMessage(
      "La calidad no ha cambiado",
    ),
    "rateZappit": MessageLookupByLibrary.simpleMessage("Valorar Zappit"),
    "reload": MessageLookupByLibrary.simpleMessage("Recargar"),
    "remindMe": MessageLookupByLibrary.simpleMessage("Avísame"),
    "remoteSettings": MessageLookupByLibrary.simpleMessage("Ajustes del mando"),
    "removeFromFavorites": m29,
    "removedFromFavorites": m30,
    "reorderHint": MessageLookupByLibrary.simpleMessage(
      "Mantén pulsado un elemento y arrástralo para reordenarlo",
    ),
    "reorderSite": m31,
    "repeatOff": MessageLookupByLibrary.simpleMessage("Repetir desactivado"),
    "repeatOffNotice": MessageLookupByLibrary.simpleMessage(
      "Repetir desactivado",
    ),
    "repeatOn": MessageLookupByLibrary.simpleMessage("Repetir activado"),
    "repeatingPlaylist": MessageLookupByLibrary.simpleMessage(
      "Repitiendo esta lista",
    ),
    "replay": MessageLookupByLibrary.simpleMessage("Volver a reproducir"),
    "restoreFailed": MessageLookupByLibrary.simpleMessage(
      "No se ha podido restaurar",
    ),
    "restorePurchases": MessageLookupByLibrary.simpleMessage(
      "Restaurar compras",
    ),
    "right": MessageLookupByLibrary.simpleMessage("Derecha"),
    "save": MessageLookupByLibrary.simpleMessage("Guardar"),
    "savePercent": m32,
    "searchCategories": MessageLookupByLibrary.simpleMessage(
      "Buscar categorías",
    ),
    "seasonNumber": m33,
    "secondsShort": m34,
    "seekInterval": MessageLookupByLibrary.simpleMessage("Intervalo de salto"),
    "select": MessageLookupByLibrary.simpleMessage("Seleccionar"),
    "selectVideoInBrowser": MessageLookupByLibrary.simpleMessage(
      "No se reproduce nada",
    ),
    "selectVideoInBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "Haz clic en cualquier vídeo en tu ordenador para empezar a verlo. El mando aparecerá aquí.",
    ),
    "send": MessageLookupByLibrary.simpleMessage("Enviar"),
    "settings": MessageLookupByLibrary.simpleMessage("Ajustes"),
    "showChat": MessageLookupByLibrary.simpleMessage("Mostrar chat"),
    "shuffleOff": MessageLookupByLibrary.simpleMessage("Aleatorio desactivado"),
    "shuffleOffNotice": MessageLookupByLibrary.simpleMessage(
      "Aleatorio desactivado",
    ),
    "shuffleOn": MessageLookupByLibrary.simpleMessage("Aleatorio activado"),
    "shufflingPlaylist": MessageLookupByLibrary.simpleMessage(
      "Reproduciendo esta lista en aleatorio",
    ),
    "siteSettings": m35,
    "siteWeb": MessageLookupByLibrary.simpleMessage("Web"),
    "skipAd": MessageLookupByLibrary.simpleMessage("Saltar anuncio"),
    "skipIntro": MessageLookupByLibrary.simpleMessage("Saltar intro"),
    "sleepTimer": MessageLookupByLibrary.simpleMessage("Temporizador"),
    "sleepTimerLabel": MessageLookupByLibrary.simpleMessage("Temporizador"),
    "smallerCaptions": MessageLookupByLibrary.simpleMessage(
      "Subtítulos más pequeños",
    ),
    "soundBlockedMessage": MessageLookupByLibrary.simpleMessage(
      "Toca para ver cómo activar el sonido.",
    ),
    "soundBlockedTitle": MessageLookupByLibrary.simpleMessage(
      "¿Por qué no se oye nada?",
    ),
    "soundHelpTitle": MessageLookupByLibrary.simpleMessage("Sonido"),
    "speedTrialOver": m36,
    "startFreeTrial": MessageLookupByLibrary.simpleMessage(
      "Empezar prueba gratis",
    ),
    "storeProblem": MessageLookupByLibrary.simpleMessage(
      "Ha habido un problema con la compra. Inténtalo de nuevo en un momento.",
    ),
    "storeUnavailable": MessageLookupByLibrary.simpleMessage(
      "Ahora mismo no se pueden hacer compras. Inténtalo más tarde.",
    ),
    "subscribe": MessageLookupByLibrary.simpleMessage("Suscribirse"),
    "success": MessageLookupByLibrary.simpleMessage("Hecho"),
    "support": MessageLookupByLibrary.simpleMessage("Ayuda"),
    "supportedSites": MessageLookupByLibrary.simpleMessage(
      "Sitios compatibles",
    ),
    "supportedSitesIntro": MessageLookupByLibrary.simpleMessage(
      "Estos sitios tienen un mando hecho a su medida. En cualquier otro sitio, Zappit funciona como un mando estándar.",
    ),
    "tabMore": MessageLookupByLibrary.simpleMessage("Más"),
    "tabRemote": MessageLookupByLibrary.simpleMessage("Mando"),
    "tabTabs": MessageLookupByLibrary.simpleMessage("Pestañas"),
    "tapToKeepPro": MessageLookupByLibrary.simpleMessage(
      "Toca para conservar todas las funciones Pro.",
    ),
    "tellAFriend": MessageLookupByLibrary.simpleMessage(
      "Recomendar a un amigo",
    ),
    "termsOfService": MessageLookupByLibrary.simpleMessage(
      "Condiciones del servicio",
    ),
    "theaterMode": MessageLookupByLibrary.simpleMessage("Modo cine"),
    "trialReminderBody": m37,
    "trialReminderChannel": MessageLookupByLibrary.simpleMessage(
      "Aviso de prueba gratis",
    ),
    "trialReminderChannelDescription": MessageLookupByLibrary.simpleMessage(
      "Un aviso antes de que acabe tu prueba gratis",
    ),
    "trialReminderMessage": MessageLookupByLibrary.simpleMessage(
      "¿Quieres que te avisemos el día antes de que acabe tu prueba gratis, para que no te lleves ningún cobro por sorpresa?",
    ),
    "trialReminderNotificationTitle": MessageLookupByLibrary.simpleMessage(
      "Tu prueba gratis de Zappit Pro acaba pronto",
    ),
    "trialReminderTitle": MessageLookupByLibrary.simpleMessage(
      "Aviso de fin de prueba",
    ),
    "trialTerms": m38,
    "trialTermsDays": m39,
    "trialTermsMonths": m40,
    "trialTermsYears": m41,
    "tryAgain": MessageLookupByLibrary.simpleMessage("Reintentar"),
    "turnOffAbFirst": MessageLookupByLibrary.simpleMessage(
      "Desactiva primero el A-B Loop",
    ),
    "tutorial": MessageLookupByLibrary.simpleMessage("Guía"),
    "unavailable": MessageLookupByLibrary.simpleMessage("No disponible"),
    "undo": MessageLookupByLibrary.simpleMessage("Deshacer"),
    "unmute": MessageLookupByLibrary.simpleMessage("Activar sonido"),
    "untitled": MessageLookupByLibrary.simpleMessage("Sin título"),
    "up": MessageLookupByLibrary.simpleMessage("Arriba"),
    "upNext": MessageLookupByLibrary.simpleMessage("A continuación"),
    "upNextCountdown": m42,
    "upgrade": MessageLookupByLibrary.simpleMessage("Mejorar"),
    "videoLengthUnknown": MessageLookupByLibrary.simpleMessage(
      "No se sabe la duración de este vídeo",
    ),
    "videoQuality": MessageLookupByLibrary.simpleMessage("Calidad del vídeo"),
    "view": MessageLookupByLibrary.simpleMessage("Ver"),
    "voiceBoostDuringAd": MessageLookupByLibrary.simpleMessage(
      "Voice Boost no está disponible durante un anuncio",
    ),
    "voiceBoostOff": MessageLookupByLibrary.simpleMessage(
      "Voice Boost desactivado",
    ),
    "voiceBoostOn": MessageLookupByLibrary.simpleMessage(
      "Voice Boost activado",
    ),
    "voiceBoostTrialLeft": m43,
    "voiceBoostTrialOver": m44,
    "voiceBoostTurnedOn": MessageLookupByLibrary.simpleMessage(
      "Voice Boost activado: las voces se oyen mejor",
    ),
    "voiceBoostUnsupported": MessageLookupByLibrary.simpleMessage(
      "Este vídeo no admite Voice Boost",
    ),
    "volumeDown": MessageLookupByLibrary.simpleMessage("Bajar volumen"),
    "volumeUp": MessageLookupByLibrary.simpleMessage("Subir volumen"),
    "waitingForBrowser": MessageLookupByLibrary.simpleMessage(
      "Esperando a tu navegador…",
    ),
    "watchAgain": MessageLookupByLibrary.simpleMessage("Volver a ver"),
    "watching": MessageLookupByLibrary.simpleMessage("Viendo"),
    "welcomeToPro": m45,
    "windowNumber": m46,
    "yearly": MessageLookupByLibrary.simpleMessage("Anual"),
    "yourBrowser": MessageLookupByLibrary.simpleMessage("tu navegador"),
    "youreConnected": MessageLookupByLibrary.simpleMessage("¡Conectado!"),
    "youreOffline": MessageLookupByLibrary.simpleMessage("No tienes conexión"),
    "youtubeHome": MessageLookupByLibrary.simpleMessage("Inicio de YouTube"),
    "ytCourses": MessageLookupByLibrary.simpleMessage("Cursos"),
    "ytDownloads": MessageLookupByLibrary.simpleMessage("Descargas"),
    "ytExplore": MessageLookupByLibrary.simpleMessage("Explorar"),
    "ytGaming": MessageLookupByLibrary.simpleMessage("Videojuegos"),
    "ytHistory": MessageLookupByLibrary.simpleMessage("Historial"),
    "ytHype": MessageLookupByLibrary.simpleMessage("Hype"),
    "ytLikedVideos": MessageLookupByLibrary.simpleMessage(
      "Vídeos que me gustan",
    ),
    "ytLive": MessageLookupByLibrary.simpleMessage("En directo"),
    "ytMemberships": MessageLookupByLibrary.simpleMessage(
      "Suscripciones de canales",
    ),
    "ytMusic": MessageLookupByLibrary.simpleMessage("Música"),
    "ytPlaylists": MessageLookupByLibrary.simpleMessage(
      "Listas de reproducción",
    ),
    "ytPodcasts": MessageLookupByLibrary.simpleMessage("Pódcasts"),
    "ytShorts": MessageLookupByLibrary.simpleMessage("Shorts"),
    "ytSubscriptions": MessageLookupByLibrary.simpleMessage("Suscripciones"),
    "ytVideos": MessageLookupByLibrary.simpleMessage("Vídeos"),
    "ytWatchLater": MessageLookupByLibrary.simpleMessage("Ver más tarde"),
    "ytYou": MessageLookupByLibrary.simpleMessage("Tú"),
  };
}
