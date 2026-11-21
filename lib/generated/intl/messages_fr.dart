// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr locale. All the
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
  String get localeName => 'fr';

  static String m0(site) => "Ajouter ${site} aux favoris";

  static String m1(count) => "Reculer de ${count} secondes";

  static String m2(browser) =>
      "${browser} n’a pas répondu. Vérifiez qu’il est ouvert.";

  static String m3(browsers) => "Déconnecté de ${browsers}";

  static String m4(name) => "Chaîne : ${name}";

  static String m5(current, total) => "Chapitre ${current}/${total}";

  static String m6(browser) => "Connecté à ${browser}";

  static String m7(count) => "Avancer de ${count} secondes";

  static String m8(count) => "Essai gratuit : ${count} j";

  static String m9(count) => "Essai gratuit : ${count} mois";

  static String m10(count) => "Essai gratuit : ${count} sem.";

  static String m11(count) => "Essai gratuit : ${count} an(s)";

  static String m12(price) => "Seulement ${price}/mois";

  static String m13(count) =>
      "${Intl.plural(count, one: '${count} minute', other: '${count} minutes')}";

  static String m14(count) => "${count} min";

  static String m15(time) => "Nouveau code dans ${time}";

  static String m16(url) =>
      "Ouvrez ${url} dans le navigateur de votre ordinateur pour installer l’extension Zappit.";

  static String m17(current, total) => "${current} / ${total}";

  static String m18(current, total) => "Étape ${current} sur ${total}";

  static String m19(site) => "Ouvrir ${site}";

  static String m20(browser) => "Ouvert dans ${browser}";

  static String m21(browser) => "Ouverture dans ${browser}…";

  static String m22(price) => "${price} / mois";

  static String m23(price) => "${price} / an";

  static String m24(date) =>
      "Votre aperçu Pro gratuit est actif jusqu’au ${date}. Abonnez-vous avant la fin pour garder toutes les fonctions Pro sans interruption.";

  static String m25(proName) =>
      "Votre aperçu Pro est terminé. Gardez toutes les fonctions Pro avec ${proName}.";

  static String m26(days) =>
      "Profitez gratuitement de toutes les fonctions de Zappit Pro pendant ${days} jours. Sans carte bancaire, sans prélèvement automatique.";

  static String m27(date) => "Aperçu Pro jusqu’au ${date}";

  static String m28(proName) => "${proName} restauré";

  static String m29(site) => "Retirer ${site} des favoris";

  static String m30(site) => "${site} retiré des favoris";

  static String m31(site) => "Déplacer ${site}";

  static String m32(percent) => "−${percent} %";

  static String m33(number) => "Saison ${number}";

  static String m34(count) => "${count} s";

  static String m35(site) => "Réglages ${site}";

  static String m36(count) =>
      "Retour à 1x. Sans Pro, cette vitesse est disponible pendant ${count} secondes.";

  static String m37(price, date) =>
      "Votre essai gratuit se termine demain. ${price} sera débité le ${date}. Si vous ne souhaitez pas continuer, résiliez votre abonnement avant.";

  static String m38(price) =>
      "Commence par un essai gratuit, puis ${price}/an.";

  static String m39(count, price) =>
      "Commence par un essai gratuit de ${count} jours, puis ${price}/an.";

  static String m40(count, price) =>
      "Commence par un essai gratuit de ${count} mois, puis ${price}/an.";

  static String m41(count, price) =>
      "Commence par un essai gratuit de ${count} an(s), puis ${price}/an.";

  static String m42(count) => "À suivre · lecture dans ${count} s";

  static String m43(count) => "Essai de Voice Boost, encore ${count} secondes";

  static String m44(count) =>
      "Voice Boost est désactivé. Sans Pro, Voice Boost est disponible pendant ${count} secondes.";

  static String m45(proName) => "Bienvenue dans ${proName}";

  static String m46(number) => "Fenêtre ${number}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "abLoopCount": MessageLookupByLibrary.simpleMessage("Répétitions A-B Loop"),
    "abOffForLive": MessageLookupByLibrary.simpleMessage(
      "L’A-B Loop est désactivé pour les directs",
    ),
    "account": MessageLookupByLibrary.simpleMessage("Connexion"),
    "adBadge": MessageLookupByLibrary.simpleMessage("PUB"),
    "addToFavorites": m0,
    "allCategories": MessageLookupByLibrary.simpleMessage(
      "Toutes les catégories",
    ),
    "allSites": MessageLookupByLibrary.simpleMessage("Tous les sites"),
    "alreadySubscribed": MessageLookupByLibrary.simpleMessage(
      "Vous avez déjà cet abonnement. Essayez Restaurer les achats.",
    ),
    "back": MessageLookupByLibrary.simpleMessage("Retour"),
    "backSeconds": m1,
    "banned": MessageLookupByLibrary.simpleMessage(
      "Désolé, l’accès a été bloqué.",
    ),
    "browserDidNotAnswer": m2,
    "browserNotResponding": MessageLookupByLibrary.simpleMessage(
      "Le navigateur ne répond pas",
    ),
    "browsers": MessageLookupByLibrary.simpleMessage("Navigateurs"),
    "browsersDisconnected": m3,
    "browsersDisconnectedBody": MessageLookupByLibrary.simpleMessage(
      "Un autre téléphone s’y est connecté. Pour l’utiliser à nouveau, scannez le code QR sur cet ordinateur.",
    ),
    "cameraDenied": MessageLookupByLibrary.simpleMessage(
      "Autorisez l’accès à l’appareil photo dans Réglages pour scanner le code.",
    ),
    "cameraUnavailable": MessageLookupByLibrary.simpleMessage(
      "L’appareil photo n’est pas disponible pour le moment.",
    ),
    "cancel": MessageLookupByLibrary.simpleMessage("Annuler"),
    "cancelAnytime": MessageLookupByLibrary.simpleMessage(
      "Résiliez à tout moment depuis votre compte de la boutique.",
    ),
    "cantLoadPage": MessageLookupByLibrary.simpleMessage(
      "Impossible de charger cette page",
    ),
    "cantOpenOnPhone": MessageLookupByLibrary.simpleMessage(
      "Cette vidéo ne peut pas être ouverte sur le téléphone",
    ),
    "cantReachBrowser": MessageLookupByLibrary.simpleMessage(
      "Aucun navigateur joignable",
    ),
    "cantSeekVideo": MessageLookupByLibrary.simpleMessage(
      "Impossible de se déplacer dans cette vidéo",
    ),
    "captionLanguage": MessageLookupByLibrary.simpleMessage(
      "Langue des sous-titres",
    ),
    "captions": MessageLookupByLibrary.simpleMessage("Sous-titres"),
    "captionsOff": MessageLookupByLibrary.simpleMessage(
      "Sous-titres désactivés",
    ),
    "captionsOn": MessageLookupByLibrary.simpleMessage("Sous-titres activés"),
    "categories": MessageLookupByLibrary.simpleMessage("Catégories"),
    "categoryFavoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "Touchez l’étoile d’une catégorie pour l’ajouter ici.",
    ),
    "channelLabel": m4,
    "chapterPosition": m5,
    "chapters": MessageLookupByLibrary.simpleMessage("Chapitres"),
    "chaptersDuringAd": MessageLookupByLibrary.simpleMessage(
      "Impossible de changer de chapitre pendant une publicité",
    ),
    "checkConnection": MessageLookupByLibrary.simpleMessage(
      "Vérifiez votre connexion internet et réessayez.",
    ),
    "checkConnectionShort": MessageLookupByLibrary.simpleMessage(
      "Vérifiez votre connexion et réessayez.",
    ),
    "chooseBrowser": MessageLookupByLibrary.simpleMessage(
      "Choisissez un navigateur",
    ),
    "chooseNextVideo": MessageLookupByLibrary.simpleMessage(
      "Choisissez la vidéo suivante",
    ),
    "clear": MessageLookupByLibrary.simpleMessage("Effacer"),
    "close": MessageLookupByLibrary.simpleMessage("Fermer"),
    "connectBrowser": MessageLookupByLibrary.simpleMessage(
      "Connecter un navigateur",
    ),
    "connectBrowserFirst": MessageLookupByLibrary.simpleMessage(
      "Connectez-vous d’abord à un navigateur",
    ),
    "connected": MessageLookupByLibrary.simpleMessage("Connecté"),
    "connectedTo": m6,
    "contactUs": MessageLookupByLibrary.simpleMessage("Nous contacter"),
    "contactUsKeepInfo": MessageLookupByLibrary.simpleMessage(
      "Merci de ne pas effacer les informations ci-dessous.",
    ),
    "couldNotGetVideoLink": MessageLookupByLibrary.simpleMessage(
      "Impossible de récupérer le lien de la vidéo",
    ),
    "couldNotLoadEpisodes": MessageLookupByLibrary.simpleMessage(
      "Impossible de charger les épisodes",
    ),
    "couldNotLoadPlaylist": MessageLookupByLibrary.simpleMessage(
      "Impossible de charger la playlist",
    ),
    "couldNotOpenLink": MessageLookupByLibrary.simpleMessage(
      "Impossible d’ouvrir le lien",
    ),
    "couldNotReadQuality": MessageLookupByLibrary.simpleMessage(
      "Impossible de lire les options de qualité sur la page.",
    ),
    "delete": MessageLookupByLibrary.simpleMessage("Supprimer"),
    "disconnect": MessageLookupByLibrary.simpleMessage("Déconnecter"),
    "disconnectPhone": MessageLookupByLibrary.simpleMessage(
      "Déconnecter ce téléphone",
    ),
    "disconnectPhoneMessage": MessageLookupByLibrary.simpleMessage(
      "Ce téléphone ne contrôlera plus votre ordinateur. Pour l’utiliser à nouveau, scannez le code QR sur votre ordinateur.",
    ),
    "down": MessageLookupByLibrary.simpleMessage("Bas"),
    "endOfVideo": MessageLookupByLibrary.simpleMessage("Fin de la vidéo"),
    "enterValidLink": MessageLookupByLibrary.simpleMessage(
      "Saisissez un lien commençant par http ou https",
    ),
    "episodes": MessageLookupByLibrary.simpleMessage("Épisodes"),
    "error": MessageLookupByLibrary.simpleMessage("Erreur"),
    "errorButtonNotFound": MessageLookupByLibrary.simpleMessage(
      "Ce bouton est introuvable sur la page",
    ),
    "errorDuringAd": MessageLookupByLibrary.simpleMessage(
      "Impossible pendant une publicité",
    ),
    "errorEndBeforeStart": MessageLookupByLibrary.simpleMessage(
      "Le point de fin doit être après le point de départ",
    ),
    "errorGeneric": MessageLookupByLibrary.simpleMessage(
      "Un problème est survenu",
    ),
    "errorInvalidUrl": MessageLookupByLibrary.simpleMessage(
      "Impossible d’ouvrir ce lien",
    ),
    "errorNoBrowser": MessageLookupByLibrary.simpleMessage(
      "Aucun navigateur sélectionné",
    ),
    "errorNoMedia": MessageLookupByLibrary.simpleMessage(
      "Aucune vidéo n’est en cours de lecture",
    ),
    "errorNotChanged": MessageLookupByLibrary.simpleMessage(
      "Le site ne l’a pas modifié",
    ),
    "errorNotSupported": MessageLookupByLibrary.simpleMessage(
      "Ce site ne le permet pas",
    ),
    "errorStartAfterEnd": MessageLookupByLibrary.simpleMessage(
      "Le point de départ doit être avant le point de fin",
    ),
    "errorTabClosed": MessageLookupByLibrary.simpleMessage(
      "Cet onglet est déjà fermé",
    ),
    "exitFullScreen": MessageLookupByLibrary.simpleMessage(
      "Quitter le plein écran",
    ),
    "extensionUpdatedReload": MessageLookupByLibrary.simpleMessage(
      "L’extension Zappit a été mise à jour. Rechargez cette page pour continuer à utiliser toutes les commandes.",
    ),
    "faq": MessageLookupByLibrary.simpleMessage("FAQ"),
    "favorites": MessageLookupByLibrary.simpleMessage("Favoris"),
    "favoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "Touchez l’étoile d’un site pour l’ajouter ici.",
    ),
    "forwardSeconds": m7,
    "frameByFrame": MessageLookupByLibrary.simpleMessage("Image par image"),
    "freeTrial": MessageLookupByLibrary.simpleMessage("Essai gratuit"),
    "freeTrialDays": m8,
    "freeTrialMonths": m9,
    "freeTrialWeeks": m10,
    "freeTrialYears": m11,
    "fullPowerUnlocked": MessageLookupByLibrary.simpleMessage(
      "Toutes les fonctions débloquées",
    ),
    "fullScreen": MessageLookupByLibrary.simpleMessage("Plein écran"),
    "generalSettings": MessageLookupByLibrary.simpleMessage(
      "Réglages généraux",
    ),
    "gotIt": MessageLookupByLibrary.simpleMessage("OK"),
    "hideChat": MessageLookupByLibrary.simpleMessage("Masquer le chat"),
    "home": MessageLookupByLibrary.simpleMessage("Accueil"),
    "justPerMonth": m12,
    "largerCaptions": MessageLookupByLibrary.simpleMessage(
      "Sous-titres plus grands",
    ),
    "lastVideoInPlaylist": MessageLookupByLibrary.simpleMessage(
      "C’est la dernière vidéo de la playlist",
    ),
    "learnMore": MessageLookupByLibrary.simpleMessage("En savoir plus"),
    "left": MessageLookupByLibrary.simpleMessage("Gauche"),
    "linkPanelHint": MessageLookupByLibrary.simpleMessage(
      "Collez un lien vidéo et touchez Envoyer. Il s’ouvre dans un nouvel onglet de votre navigateur.",
    ),
    "liveBadge": MessageLookupByLibrary.simpleMessage("DIRECT"),
    "liveCantRewind": MessageLookupByLibrary.simpleMessage(
      "Impossible de revenir en arrière dans ce direct",
    ),
    "longPressSpeed": MessageLookupByLibrary.simpleMessage(
      "Vitesse en appui long",
    ),
    "loopEnd": MessageLookupByLibrary.simpleMessage("Fin de la boucle"),
    "loopOff": MessageLookupByLibrary.simpleMessage("Boucle désactivée"),
    "loopOn": MessageLookupByLibrary.simpleMessage("Boucle activée"),
    "loopStart": MessageLookupByLibrary.simpleMessage("Début de la boucle"),
    "manageSubscription": MessageLookupByLibrary.simpleMessage(
      "Gérer l’abonnement",
    ),
    "minutesCount": m13,
    "minutesShort": m14,
    "mixCantRepeat": MessageLookupByLibrary.simpleMessage(
      "Cette playlist enchaîne sans fin de nouvelles vidéos, elle ne peut donc pas être répétée",
    ),
    "mixCantShuffle": MessageLookupByLibrary.simpleMessage(
      "Cette playlist enchaîne sans fin de nouvelles vidéos, elle ne peut donc pas être lue en aléatoire",
    ),
    "monthly": MessageLookupByLibrary.simpleMessage("Mensuel"),
    "multipleBrowsersMessage": MessageLookupByLibrary.simpleMessage(
      "Plusieurs navigateurs sont en ligne. Choisissez celui que cette télécommande doit contrôler.",
    ),
    "mute": MessageLookupByLibrary.simpleMessage("Couper le son"),
    "nextChapter": MessageLookupByLibrary.simpleMessage("Chapitre suivant"),
    "nextEpisode": MessageLookupByLibrary.simpleMessage("Épisode suivant"),
    "nextTab": MessageLookupByLibrary.simpleMessage("Onglet suivant"),
    "nextVideo": MessageLookupByLibrary.simpleMessage("Vidéo suivante"),
    "noBrowser": MessageLookupByLibrary.simpleMessage("Aucun navigateur"),
    "noBrowserConnectedShare": MessageLookupByLibrary.simpleMessage(
      "Aucun navigateur n’est connecté. Ouvrez votre navigateur avec l’extension Zappit et réessayez.",
    ),
    "noBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "1. Ouvrez sur votre ordinateur le navigateur connecté.\n2. S’il ne se connecte pas, cliquez sur l’icône Zappit dans la barre d’outils de votre navigateur.",
    ),
    "noBrowserOnline": MessageLookupByLibrary.simpleMessage(
      "Aucun navigateur n’est en ligne.",
    ),
    "noBrowserOnlineShort": MessageLookupByLibrary.simpleMessage(
      "Aucun navigateur en ligne",
    ),
    "noBrowserSelected": MessageLookupByLibrary.simpleMessage(
      "Aucun navigateur sélectionné",
    ),
    "noCategoriesFound": MessageLookupByLibrary.simpleMessage(
      "Aucune catégorie trouvée",
    ),
    "noLinkInShare": MessageLookupByLibrary.simpleMessage(
      "Aucun lien trouvé dans ce que vous avez partagé",
    ),
    "noMoreTabs": MessageLookupByLibrary.simpleMessage("Plus d’autres onglets"),
    "noNextEpisode": MessageLookupByLibrary.simpleMessage(
      "Pas d’épisode suivant",
    ),
    "noOpenTabs": MessageLookupByLibrary.simpleMessage("Aucun onglet ouvert"),
    "noPreviousPage": MessageLookupByLibrary.simpleMessage(
      "Il n’y a pas de page précédente",
    ),
    "noSiteSettings": MessageLookupByLibrary.simpleMessage(
      "Aucun réglage pour ce site pour l’instant.",
    ),
    "noSubtitles": MessageLookupByLibrary.simpleMessage(
      "Cette vidéo n’a pas de sous-titres",
    ),
    "noThanks": MessageLookupByLibrary.simpleMessage("Non merci"),
    "noVideosOnPage": MessageLookupByLibrary.simpleMessage(
      "Cette page ne contient aucune vidéo.",
    ),
    "notAvailableDuringAd": MessageLookupByLibrary.simpleMessage(
      "Indisponible pendant une publicité",
    ),
    "notAvailableForLive": MessageLookupByLibrary.simpleMessage(
      "Indisponible en direct",
    ),
    "notAvailableForLiveStreams": MessageLookupByLibrary.simpleMessage(
      "Indisponible pour les diffusions en direct",
    ),
    "notAvailableForPhotos": MessageLookupByLibrary.simpleMessage(
      "Indisponible pour les publications photo",
    ),
    "notConnected": MessageLookupByLibrary.simpleMessage("Non connecté"),
    "nothingPlaying": MessageLookupByLibrary.simpleMessage(
      "Aucune vidéo trouvée",
    ),
    "nothingPlayingMessage": MessageLookupByLibrary.simpleMessage(
      "Cet onglet ne contient pas de vidéo. Choisissez un autre onglet ou collez un lien vidéo.",
    ),
    "nothingToRestore": MessageLookupByLibrary.simpleMessage(
      "Rien à restaurer",
    ),
    "nothingToRestoreMessage": MessageLookupByLibrary.simpleMessage(
      "Aucun abonnement Zappit Pro actif n’a été trouvé pour ce compte de la boutique.",
    ),
    "obAnimAddExtension": MessageLookupByLibrary.simpleMessage(
      "Ajouter l’extension",
    ),
    "obAnimAdded": MessageLookupByLibrary.simpleMessage("Ajoutée"),
    "obAnimConnectComputer": MessageLookupByLibrary.simpleMessage(
      "Connectez-vous à votre ordinateur",
    ),
    "obAnimConnectPhone": MessageLookupByLibrary.simpleMessage(
      "Connectez votre téléphone",
    ),
    "obAnimNewCode": m15,
    "obAnimRemoteConnected": MessageLookupByLibrary.simpleMessage(
      "Télécommande connectée",
    ),
    "obAnimScanCode": MessageLookupByLibrary.simpleMessage(
      "Scannez ce code avec l’app Zappit sur votre téléphone.",
    ),
    "obAnimTagline": MessageLookupByLibrary.simpleMessage("Adieu la souris."),
    "obAnimYourPhones": MessageLookupByLibrary.simpleMessage("Vos téléphones"),
    "off": MessageLookupByLibrary.simpleMessage("Désactivée"),
    "offline": MessageLookupByLibrary.simpleMessage("Hors ligne"),
    "offlineMessage": MessageLookupByLibrary.simpleMessage(
      "Vérifiez votre connexion internet. Zappit se reconnecte tout seul.",
    ),
    "onboarding0AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Toucher lecture/pause dans l’app Zappit met en pause puis relance la vidéo sur l’ordinateur portable",
    ),
    "onboarding1AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Saisie de zappit.tv/get dans le navigateur et ajout de l’extension Zappit",
    ),
    "onboarding1Body": m16,
    "onboarding1Title": MessageLookupByLibrary.simpleMessage(
      "D’abord, ajoutez l’extension Zappit à votre navigateur",
    ),
    "onboarding2AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Clic sur l’icône Zappit dans le navigateur, puis scan du code QR avec le téléphone",
    ),
    "onboarding2Body": MessageLookupByLibrary.simpleMessage(
      "Cliquez sur l’icône Zappit dans la barre d’outils du navigateur, puis pointez l’appareil photo vers le code QR.",
    ),
    "onboarding2Title": MessageLookupByLibrary.simpleMessage(
      "Scannez le code QR",
    ),
    "onboardingGetStarted": MessageLookupByLibrary.simpleMessage("Commencer"),
    "onboardingIconHelp": MessageLookupByLibrary.simpleMessage(
      "Vous ne voyez pas l’icône Zappit ?",
    ),
    "onboardingIconHelpLabel": MessageLookupByLibrary.simpleMessage(
      "Vous ne voyez pas l’icône Zappit ? Ouvre la réponse dans la FAQ",
    ),
    "onboardingNext": MessageLookupByLibrary.simpleMessage("Suivant"),
    "onboardingOpenQrScanner": MessageLookupByLibrary.simpleMessage(
      "Ouvrir le scanner QR",
    ),
    "onboardingShareLink": MessageLookupByLibrary.simpleMessage(
      "Envoyer le lien d’installation",
    ),
    "onboardingStepCount": m17,
    "onboardingStepLabel": m18,
    "onboardingWelcomeBody": MessageLookupByLibrary.simpleMessage(
      "Contrôlez n’importe quelle vidéo sur votre ordinateur. La configuration prend deux étapes rapides.",
    ),
    "onboardingWelcomeTitle": MessageLookupByLibrary.simpleMessage(
      "Votre téléphone devient votre télécommande",
    ),
    "openALink": MessageLookupByLibrary.simpleMessage("Ouvrir un lien"),
    "openBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "Ouvrez votre navigateur avec l’extension Zappit pour voir ses onglets.",
    ),
    "openLinkInBrowser": MessageLookupByLibrary.simpleMessage(
      "Ouvrir un lien dans le navigateur",
    ),
    "openSite": m19,
    "openedIn": m20,
    "openingIn": m21,
    "pairCodeExpired": MessageLookupByLibrary.simpleMessage(
      "Ce code a expiré. Scannez le nouveau code sur votre ordinateur.",
    ),
    "pairCodeInvalid": MessageLookupByLibrary.simpleMessage(
      "Ce code n’est plus valide. Scannez le nouveau code sur votre ordinateur.",
    ),
    "pairCodeUsed": MessageLookupByLibrary.simpleMessage(
      "Ce code a déjà été utilisé. Scannez le nouveau code sur votre ordinateur.",
    ),
    "pairFailed": MessageLookupByLibrary.simpleMessage(
      "Connexion impossible. Vérifiez votre connexion internet et réessayez.",
    ),
    "pairHowToInstall": MessageLookupByLibrary.simpleMessage(
      "Comment installer l’extension",
    ),
    "pairPhoneLimit": MessageLookupByLibrary.simpleMessage(
      "Cet ordinateur a déjà 3 téléphones connectés. Ouvrez Zappit sur l’un de vos autres téléphones connectés et touchez « Déconnecter ce téléphone » dans « Plus ». Si vous n’avez plus ce téléphone, utilisez « Reset » dans l’extension Zappit sur votre ordinateur.",
    ),
    "pairTitle": MessageLookupByLibrary.simpleMessage(
      "Connectez-vous à l’extension du navigateur",
    ),
    "paste": MessageLookupByLibrary.simpleMessage("Coller"),
    "pasteALink": MessageLookupByLibrary.simpleMessage("Coller un lien"),
    "pasteVideoLink": MessageLookupByLibrary.simpleMessage(
      "Collez un lien vidéo",
    ),
    "pause": MessageLookupByLibrary.simpleMessage("Pause"),
    "paymentPending": MessageLookupByLibrary.simpleMessage(
      "Paiement en attente",
    ),
    "paymentPendingMessage": MessageLookupByLibrary.simpleMessage(
      "Pro s’activera dès que la boutique aura confirmé votre paiement.",
    ),
    "phoneName": MessageLookupByLibrary.simpleMessage("Nom du téléphone"),
    "phoneNameEmpty": MessageLookupByLibrary.simpleMessage("Saisissez un nom."),
    "phoneNameMessage": MessageLookupByLibrary.simpleMessage(
      "Affiché dans l’extension Zappit sur votre ordinateur.",
    ),
    "pickATab": MessageLookupByLibrary.simpleMessage("Choisir un onglet"),
    "pickBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "Choisissez le navigateur que cette télécommande doit contrôler pour voir ses onglets.",
    ),
    "pickVideosWithPro": MessageLookupByLibrary.simpleMessage(
      "Choisissez vos vidéos depuis le téléphone avec Pro",
    ),
    "play": MessageLookupByLibrary.simpleMessage("Lecture"),
    "playInApp": MessageLookupByLibrary.simpleMessage(
      "Continuer sur le téléphone",
    ),
    "playNow": MessageLookupByLibrary.simpleMessage("Lire maintenant"),
    "playVideoFirst": MessageLookupByLibrary.simpleMessage(
      "Lancez d’abord une vidéo dans le navigateur",
    ),
    "playing": MessageLookupByLibrary.simpleMessage("En lecture"),
    "playlist": MessageLookupByLibrary.simpleMessage("Playlist"),
    "playlistCantRepeat": MessageLookupByLibrary.simpleMessage(
      "Cette playlist ne peut pas être répétée",
    ),
    "playlistCantShuffle": MessageLookupByLibrary.simpleMessage(
      "Cette playlist ne peut pas être lue en aléatoire",
    ),
    "previousChapter": MessageLookupByLibrary.simpleMessage(
      "Chapitre précédent",
    ),
    "previousTab": MessageLookupByLibrary.simpleMessage("Onglet précédent"),
    "previousVideo": MessageLookupByLibrary.simpleMessage("Vidéo précédente"),
    "pricePerMonth": m22,
    "pricePerYear": m23,
    "privacyPolicy": MessageLookupByLibrary.simpleMessage(
      "Politique de confidentialité",
    ),
    "proBannerSubtitle": MessageLookupByLibrary.simpleMessage(
      "Exploitez toute la puissance de votre télécommande",
    ),
    "proFeatureAbLoop": MessageLookupByLibrary.simpleMessage(
      "A-B Loop illimité",
    ),
    "proFeatureAllSpeeds": MessageLookupByLibrary.simpleMessage(
      "Toutes les vitesses de lecture",
    ),
    "proFeatureDedicatedControllers": MessageLookupByLibrary.simpleMessage(
      "Débloquez des télécommandes dédiées",
    ),
    "proFeatureFullLoop": MessageLookupByLibrary.simpleMessage(
      "Lecture en boucle illimitée",
    ),
    "proFeatureVoiceBoost": MessageLookupByLibrary.simpleMessage(
      "Voice Boost illimité",
    ),
    "proPreviewActiveBanner": m24,
    "proPreviewEndedMessage": MessageLookupByLibrary.simpleMessage(
      "Merci d’avoir essayé Zappit Pro ! Abonnez-vous pour continuer à profiter de toutes les fonctions Pro sans interruption.",
    ),
    "proPreviewEndedSubtitle": m25,
    "proPreviewEndedTitle": MessageLookupByLibrary.simpleMessage(
      "Votre aperçu Pro est terminé",
    ),
    "proPreviewEndsTomorrow": MessageLookupByLibrary.simpleMessage(
      "L’aperçu Pro se termine demain",
    ),
    "proPreviewStarted": m26,
    "proPreviewUntil": m27,
    "proRestored": m28,
    "proSubscriptionEnded": MessageLookupByLibrary.simpleMessage(
      "Votre abonnement Pro est terminé",
    ),
    "proSubtitle": MessageLookupByLibrary.simpleMessage(
      "Exploitez toute la puissance de votre télécommande.",
    ),
    "purchaseCancelled": MessageLookupByLibrary.simpleMessage("Achat annulé"),
    "purchaseCancelledMessage": MessageLookupByLibrary.simpleMessage(
      "Rien n’a été débité. Vous pouvez réessayer à tout moment.",
    ),
    "purchaseFailed": MessageLookupByLibrary.simpleMessage("Échec de l’achat"),
    "purchaseNotActivated": MessageLookupByLibrary.simpleMessage(
      "Achat non activé",
    ),
    "purchaseNotActivatedMessage": MessageLookupByLibrary.simpleMessage(
      "Votre paiement a abouti, mais Pro n’est pas encore actif. Essayez Restaurer les achats.",
    ),
    "purchasesNotAllowed": MessageLookupByLibrary.simpleMessage(
      "Les achats ne sont pas autorisés sur cet appareil ou ce compte.",
    ),
    "qualityNotChanged": MessageLookupByLibrary.simpleMessage(
      "La qualité n’a pas changé",
    ),
    "rateZappit": MessageLookupByLibrary.simpleMessage("Noter Zappit"),
    "reload": MessageLookupByLibrary.simpleMessage("Recharger"),
    "remindMe": MessageLookupByLibrary.simpleMessage("Me le rappeler"),
    "remoteSettings": MessageLookupByLibrary.simpleMessage(
      "Réglages de la télécommande",
    ),
    "removeFromFavorites": m29,
    "removedFromFavorites": m30,
    "reorderHint": MessageLookupByLibrary.simpleMessage(
      "Maintenez un élément, puis faites-le glisser pour le déplacer",
    ),
    "reorderSite": m31,
    "repeatOff": MessageLookupByLibrary.simpleMessage("Répétition désactivée"),
    "repeatOffNotice": MessageLookupByLibrary.simpleMessage(
      "Répétition désactivée",
    ),
    "repeatOn": MessageLookupByLibrary.simpleMessage("Répétition activée"),
    "repeatingPlaylist": MessageLookupByLibrary.simpleMessage(
      "Répétition de cette playlist",
    ),
    "replay": MessageLookupByLibrary.simpleMessage("Revoir depuis le début"),
    "restoreFailed": MessageLookupByLibrary.simpleMessage(
      "Échec de la restauration",
    ),
    "restorePurchases": MessageLookupByLibrary.simpleMessage(
      "Restaurer les achats",
    ),
    "right": MessageLookupByLibrary.simpleMessage("Droite"),
    "save": MessageLookupByLibrary.simpleMessage("Enregistrer"),
    "savePercent": m32,
    "searchCategories": MessageLookupByLibrary.simpleMessage(
      "Rechercher une catégorie",
    ),
    "seasonNumber": m33,
    "secondsShort": m34,
    "seekInterval": MessageLookupByLibrary.simpleMessage("Intervalle de saut"),
    "select": MessageLookupByLibrary.simpleMessage("Sélectionner"),
    "selectVideoInBrowser": MessageLookupByLibrary.simpleMessage(
      "Aucune lecture en cours",
    ),
    "selectVideoInBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "Cliquez sur une vidéo sur votre ordinateur pour commencer. La télécommande apparaîtra ici.",
    ),
    "send": MessageLookupByLibrary.simpleMessage("Envoyer"),
    "settings": MessageLookupByLibrary.simpleMessage("Réglages"),
    "showChat": MessageLookupByLibrary.simpleMessage("Afficher le chat"),
    "shuffleOff": MessageLookupByLibrary.simpleMessage(
      "Lecture aléatoire désactivée",
    ),
    "shuffleOffNotice": MessageLookupByLibrary.simpleMessage(
      "Lecture aléatoire désactivée",
    ),
    "shuffleOn": MessageLookupByLibrary.simpleMessage(
      "Lecture aléatoire activée",
    ),
    "shufflingPlaylist": MessageLookupByLibrary.simpleMessage(
      "Lecture aléatoire de cette playlist",
    ),
    "siteSettings": m35,
    "siteWeb": MessageLookupByLibrary.simpleMessage("Web"),
    "skipAd": MessageLookupByLibrary.simpleMessage("Passer la pub"),
    "skipIntro": MessageLookupByLibrary.simpleMessage("Passer l’intro"),
    "sleepTimer": MessageLookupByLibrary.simpleMessage("Minuterie"),
    "sleepTimerLabel": MessageLookupByLibrary.simpleMessage("Minuterie"),
    "smallerCaptions": MessageLookupByLibrary.simpleMessage(
      "Sous-titres plus petits",
    ),
    "somethingWrong": MessageLookupByLibrary.simpleMessage(
      "Désolé, un problème est survenu.",
    ),
    "somethingWrongTryAgain": MessageLookupByLibrary.simpleMessage(
      "Désolé, un problème est survenu. Veuillez réessayer.",
    ),
    "soundBlockedMessage": MessageLookupByLibrary.simpleMessage(
      "Touchez pour savoir comment activer le son.",
    ),
    "soundBlockedTitle": MessageLookupByLibrary.simpleMessage(
      "Pourquoi je n’entends rien ?",
    ),
    "soundHelpTitle": MessageLookupByLibrary.simpleMessage("Son"),
    "speedTrialOver": m36,
    "startFreeTrial": MessageLookupByLibrary.simpleMessage(
      "Commencer l’essai gratuit",
    ),
    "storeProblem": MessageLookupByLibrary.simpleMessage(
      "La boutique a rencontré un problème. Réessayez dans un instant.",
    ),
    "storeUnavailable": MessageLookupByLibrary.simpleMessage(
      "La boutique n’est pas disponible pour le moment. Veuillez réessayer plus tard.",
    ),
    "subscribe": MessageLookupByLibrary.simpleMessage("S’abonner"),
    "success": MessageLookupByLibrary.simpleMessage("Terminé"),
    "support": MessageLookupByLibrary.simpleMessage("Aide"),
    "supportedSites": MessageLookupByLibrary.simpleMessage("Sites compatibles"),
    "supportedSitesIntro": MessageLookupByLibrary.simpleMessage(
      "Ces sites ont une télécommande conçue spécialement pour eux. Sur tous les autres sites, Zappit fonctionne comme une télécommande standard.",
    ),
    "tabMore": MessageLookupByLibrary.simpleMessage("Plus"),
    "tabRemote": MessageLookupByLibrary.simpleMessage("Télécommande"),
    "tabTabs": MessageLookupByLibrary.simpleMessage("Onglets"),
    "tapToKeepPro": MessageLookupByLibrary.simpleMessage(
      "Touchez pour garder toutes les fonctions Pro.",
    ),
    "tellAFriend": MessageLookupByLibrary.simpleMessage("En parler à un ami"),
    "termsOfService": MessageLookupByLibrary.simpleMessage(
      "Conditions d’utilisation",
    ),
    "theaterMode": MessageLookupByLibrary.simpleMessage("Mode cinéma"),
    "trialReminderBody": m37,
    "trialReminderChannel": MessageLookupByLibrary.simpleMessage(
      "Rappel d’essai gratuit",
    ),
    "trialReminderChannelDescription": MessageLookupByLibrary.simpleMessage(
      "Un rappel avant la fin de votre essai gratuit",
    ),
    "trialReminderMessage": MessageLookupByLibrary.simpleMessage(
      "Voulez-vous un rappel la veille de la fin de votre essai gratuit, pour ne jamais être débité par surprise ?",
    ),
    "trialReminderNotificationTitle": MessageLookupByLibrary.simpleMessage(
      "L’essai gratuit de Zappit Pro se termine bientôt",
    ),
    "trialReminderTitle": MessageLookupByLibrary.simpleMessage(
      "Rappel de fin d’essai",
    ),
    "trialTerms": m38,
    "trialTermsDays": m39,
    "trialTermsMonths": m40,
    "trialTermsYears": m41,
    "tryAgain": MessageLookupByLibrary.simpleMessage("Réessayer"),
    "turnOffAbFirst": MessageLookupByLibrary.simpleMessage(
      "Désactivez d’abord l’A-B Loop",
    ),
    "tutorial": MessageLookupByLibrary.simpleMessage("Tutoriel"),
    "unavailable": MessageLookupByLibrary.simpleMessage("Indisponible"),
    "undo": MessageLookupByLibrary.simpleMessage("Annuler"),
    "unmute": MessageLookupByLibrary.simpleMessage("Réactiver le son"),
    "untitled": MessageLookupByLibrary.simpleMessage("Sans titre"),
    "up": MessageLookupByLibrary.simpleMessage("Haut"),
    "upNext": MessageLookupByLibrary.simpleMessage("À suivre"),
    "upNextCountdown": m42,
    "upgrade": MessageLookupByLibrary.simpleMessage("Passer à Pro"),
    "videoLengthUnknown": MessageLookupByLibrary.simpleMessage(
      "La durée de cette vidéo est inconnue",
    ),
    "videoQuality": MessageLookupByLibrary.simpleMessage("Qualité vidéo"),
    "view": MessageLookupByLibrary.simpleMessage("Voir"),
    "voiceBoostDuringAd": MessageLookupByLibrary.simpleMessage(
      "Voice Boost est indisponible pendant une publicité",
    ),
    "voiceBoostOff": MessageLookupByLibrary.simpleMessage(
      "Voice Boost désactivé",
    ),
    "voiceBoostOn": MessageLookupByLibrary.simpleMessage("Voice Boost activé"),
    "voiceBoostTrialLeft": m43,
    "voiceBoostTrialOver": m44,
    "voiceBoostTurnedOn": MessageLookupByLibrary.simpleMessage(
      "Voice Boost activé : les voix sont plus nettes",
    ),
    "voiceBoostUnsupported": MessageLookupByLibrary.simpleMessage(
      "Cette vidéo n’est pas compatible avec Voice Boost",
    ),
    "volumeDown": MessageLookupByLibrary.simpleMessage("Baisser le volume"),
    "volumeUp": MessageLookupByLibrary.simpleMessage("Monter le volume"),
    "waitingForBrowser": MessageLookupByLibrary.simpleMessage(
      "En attente de votre navigateur…",
    ),
    "watchAgain": MessageLookupByLibrary.simpleMessage("Revoir"),
    "watching": MessageLookupByLibrary.simpleMessage("En cours"),
    "welcomeToPro": m45,
    "windowNumber": m46,
    "yearly": MessageLookupByLibrary.simpleMessage("Annuel"),
    "yourBrowser": MessageLookupByLibrary.simpleMessage("votre navigateur"),
    "youreConnected": MessageLookupByLibrary.simpleMessage(
      "Vous êtes connecté !",
    ),
    "youreOffline": MessageLookupByLibrary.simpleMessage(
      "Vous êtes hors ligne",
    ),
    "youtubeHome": MessageLookupByLibrary.simpleMessage("Accueil YouTube"),
    "ytCourses": MessageLookupByLibrary.simpleMessage("Cours"),
    "ytDownloads": MessageLookupByLibrary.simpleMessage("Téléchargements"),
    "ytExplore": MessageLookupByLibrary.simpleMessage("Explorer"),
    "ytGaming": MessageLookupByLibrary.simpleMessage("Jeux vidéo"),
    "ytHistory": MessageLookupByLibrary.simpleMessage("Historique"),
    "ytHype": MessageLookupByLibrary.simpleMessage("Hype"),
    "ytLikedVideos": MessageLookupByLibrary.simpleMessage("Vidéos “J’aime”"),
    "ytLive": MessageLookupByLibrary.simpleMessage("En direct"),
    "ytMemberships": MessageLookupByLibrary.simpleMessage(
      "Abonnements payants",
    ),
    "ytMusic": MessageLookupByLibrary.simpleMessage("Musique"),
    "ytPlaylists": MessageLookupByLibrary.simpleMessage("Playlists"),
    "ytPodcasts": MessageLookupByLibrary.simpleMessage("Podcasts"),
    "ytShorts": MessageLookupByLibrary.simpleMessage("Shorts"),
    "ytSubscriptions": MessageLookupByLibrary.simpleMessage("Abonnements"),
    "ytVideos": MessageLookupByLibrary.simpleMessage("Vidéos"),
    "ytWatchLater": MessageLookupByLibrary.simpleMessage(
      "À regarder plus tard",
    ),
    "ytYou": MessageLookupByLibrary.simpleMessage("Vous"),
  };
}
