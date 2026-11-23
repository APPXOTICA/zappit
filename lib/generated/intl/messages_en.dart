// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(site) => "Add ${site} to Favorites";

  static String m1(count) => "Back ${count} seconds";

  static String m2(browser) =>
      "${browser} didn\'t answer. Check that it\'s open.";

  static String m3(browsers) => "Disconnected from ${browsers}";

  static String m4(name) => "Channel: ${name}";

  static String m5(current, total) => "Chapter ${current}/${total}";

  static String m6(browser) => "Connected to ${browser}";

  static String m7(count) => "Forward ${count} seconds";

  static String m8(count) => "${count}-day free trial";

  static String m9(count) => "${count}-month free trial";

  static String m10(count) => "${count}-week free trial";

  static String m11(count) => "${count}-year free trial";

  static String m12(price) => "Just ${price}/mo";

  static String m13(count) =>
      "${Intl.plural(count, one: '1 minute', other: '${count} minutes')}";

  static String m14(count) => "${count} min";

  static String m15(time) => "New code in ${time}";

  static String m16(url) =>
      "Open ${url} in your computer\'s browser to install the Zappit extension.";

  static String m17(current, total) => "${current} / ${total}";

  static String m18(current, total) => "Step ${current} of ${total}";

  static String m19(site) => "Open ${site}";

  static String m20(browser) => "Opened in ${browser}";

  static String m21(browser) => "Opening in ${browser}…";

  static String m22(price) => "${price} / month";

  static String m23(price) => "${price} / year";

  static String m24(date) =>
      "Your free Pro preview is active until ${date}. Subscribe before it ends to seamlessly keep all Pro features.";

  static String m25(proName) =>
      "Your Pro preview has ended. Keep every Pro feature with ${proName}.";

  static String m26(days) =>
      "Enjoy all Zappit Pro features free for ${days} days. No credit card required, no auto-charge.";

  static String m27(date) => "Pro preview until ${date}";

  static String m28(proName) => "${proName} restored";

  static String m29(site) => "Remove ${site} from Favorites";

  static String m30(site) => "${site} removed from Favorites";

  static String m31(site) => "Reorder ${site}";

  static String m32(percent) => "Save ${percent}%";

  static String m33(number) => "Season ${number}";

  static String m34(count) => "${count}s";

  static String m35(site) => "${site} Settings";

  static String m36(count) =>
      "Back to 1x. Free users can use this speed for ${count} seconds.";

  static String m37(price, date) =>
      "Your free trial ends tomorrow. You\'ll be charged ${price} on ${date}. If you don\'t want to continue, cancel your subscription before then.";

  static String m38(price) => "Starts with a free trial, then ${price}/year.";

  static String m39(count, price) =>
      "Starts with a ${count}-day free trial, then ${price}/year.";

  static String m40(count, price) =>
      "Starts with a ${count}-month free trial, then ${price}/year.";

  static String m41(count, price) =>
      "Starts with a ${count}-year free trial, then ${price}/year.";

  static String m42(count) => "Up next · plays in ${count} s";

  static String m43(count) => "Voice Boost trial, ${count} seconds left";

  static String m44(count) =>
      "Voice Boost is off. Free users can use Voice Boost for ${count} seconds.";

  static String m45(proName) => "Welcome to ${proName}";

  static String m46(number) => "Window ${number}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "abLoopCount": MessageLookupByLibrary.simpleMessage("A-B Loop Count"),
    "abOffForLive": MessageLookupByLibrary.simpleMessage(
      "A-B loop is off for live streams",
    ),
    "account": MessageLookupByLibrary.simpleMessage("Connection"),
    "adBadge": MessageLookupByLibrary.simpleMessage("AD"),
    "addToFavorites": m0,
    "allCategories": MessageLookupByLibrary.simpleMessage("All categories"),
    "allSites": MessageLookupByLibrary.simpleMessage("All sites"),
    "alreadySubscribed": MessageLookupByLibrary.simpleMessage(
      "You already own this subscription. Try Restore purchases.",
    ),
    "back": MessageLookupByLibrary.simpleMessage("Back"),
    "backSeconds": m1,
    "banned": MessageLookupByLibrary.simpleMessage(
      "Sorry, this account has been banned.",
    ),
    "browserDidNotAnswer": m2,
    "browserNotResponding": MessageLookupByLibrary.simpleMessage(
      "Browser not responding",
    ),
    "browsers": MessageLookupByLibrary.simpleMessage("Browsers"),
    "browsersDisconnected": m3,
    "browsersDisconnectedBody": MessageLookupByLibrary.simpleMessage(
      "Another phone connected to it. To use it again, scan the QR code on that computer.",
    ),
    "cameraDenied": MessageLookupByLibrary.simpleMessage(
      "Allow camera access in Settings to scan the code.",
    ),
    "cameraUnavailable": MessageLookupByLibrary.simpleMessage(
      "The camera isn\'t available right now.",
    ),
    "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "cancelAnytime": MessageLookupByLibrary.simpleMessage(
      "Cancel anytime in your store account.",
    ),
    "cantLoadPage": MessageLookupByLibrary.simpleMessage(
      "Can\'t load this page",
    ),
    "cantOpenOnPhone": MessageLookupByLibrary.simpleMessage(
      "This video can\'t be opened on the phone",
    ),
    "cantReachBrowser": MessageLookupByLibrary.simpleMessage(
      "Can\'t reach a browser",
    ),
    "cantSeekVideo": MessageLookupByLibrary.simpleMessage(
      "Can\'t seek in this video",
    ),
    "captionLanguage": MessageLookupByLibrary.simpleMessage("Caption language"),
    "captions": MessageLookupByLibrary.simpleMessage("Captions"),
    "captionsOff": MessageLookupByLibrary.simpleMessage("Captions off"),
    "captionsOn": MessageLookupByLibrary.simpleMessage("Captions on"),
    "categories": MessageLookupByLibrary.simpleMessage("Categories"),
    "categoryFavoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "Tap the star on a category to add it here.",
    ),
    "channelLabel": m4,
    "chapterPosition": m5,
    "chapters": MessageLookupByLibrary.simpleMessage("Chapters"),
    "chaptersDuringAd": MessageLookupByLibrary.simpleMessage(
      "Chapters can\'t be skipped during an ad",
    ),
    "checkConnection": MessageLookupByLibrary.simpleMessage(
      "Check your internet connection and try again.",
    ),
    "checkConnectionShort": MessageLookupByLibrary.simpleMessage(
      "Check your connection and try again.",
    ),
    "chooseBrowser": MessageLookupByLibrary.simpleMessage("Choose a browser"),
    "chooseNextVideo": MessageLookupByLibrary.simpleMessage(
      "Choose next video",
    ),
    "clear": MessageLookupByLibrary.simpleMessage("Clear"),
    "close": MessageLookupByLibrary.simpleMessage("Close"),
    "connectBrowser": MessageLookupByLibrary.simpleMessage("Connect a browser"),
    "connectBrowserFirst": MessageLookupByLibrary.simpleMessage(
      "Connect to a browser first",
    ),
    "connected": MessageLookupByLibrary.simpleMessage("Connected"),
    "connectedTo": m6,
    "contactUs": MessageLookupByLibrary.simpleMessage("Contact us"),
    "contactUsKeepInfo": MessageLookupByLibrary.simpleMessage(
      "Please don\'t delete the info below.",
    ),
    "couldNotGetVideoLink": MessageLookupByLibrary.simpleMessage(
      "Couldn\'t get the video link",
    ),
    "couldNotLoadEpisodes": MessageLookupByLibrary.simpleMessage(
      "Couldn\'t load episodes",
    ),
    "couldNotLoadPlaylist": MessageLookupByLibrary.simpleMessage(
      "Couldn\'t load the playlist",
    ),
    "couldNotOpenLink": MessageLookupByLibrary.simpleMessage(
      "Couldn\'t open the link",
    ),
    "couldNotReadQuality": MessageLookupByLibrary.simpleMessage(
      "Couldn\'t read the quality options from the page.",
    ),
    "delete": MessageLookupByLibrary.simpleMessage("Delete"),
    "disconnect": MessageLookupByLibrary.simpleMessage("Disconnect"),
    "disconnectPhone": MessageLookupByLibrary.simpleMessage(
      "Disconnect this phone",
    ),
    "disconnectPhoneMessage": MessageLookupByLibrary.simpleMessage(
      "This phone will stop controlling your computer. To use it again, scan the QR code on your computer.",
    ),
    "down": MessageLookupByLibrary.simpleMessage("Down"),
    "endOfVideo": MessageLookupByLibrary.simpleMessage("End of video"),
    "enterValidLink": MessageLookupByLibrary.simpleMessage(
      "Enter a link that starts with http or https",
    ),
    "episodes": MessageLookupByLibrary.simpleMessage("Episodes"),
    "error": MessageLookupByLibrary.simpleMessage("Error"),
    "errorButtonNotFound": MessageLookupByLibrary.simpleMessage(
      "Couldn\'t find that button on the page",
    ),
    "errorDuringAd": MessageLookupByLibrary.simpleMessage(
      "Can\'t do that during an ad",
    ),
    "errorEndBeforeStart": MessageLookupByLibrary.simpleMessage(
      "The end point must be after the start point",
    ),
    "errorGeneric": MessageLookupByLibrary.simpleMessage(
      "Something went wrong",
    ),
    "errorInvalidUrl": MessageLookupByLibrary.simpleMessage(
      "That link can’t be opened",
    ),
    "errorNoBrowser": MessageLookupByLibrary.simpleMessage(
      "No browser is selected",
    ),
    "errorNoMedia": MessageLookupByLibrary.simpleMessage("No video is playing"),
    "errorNotChanged": MessageLookupByLibrary.simpleMessage(
      "The site didn\'t change it",
    ),
    "errorNotSupported": MessageLookupByLibrary.simpleMessage(
      "This site doesn\'t support that",
    ),
    "errorStartAfterEnd": MessageLookupByLibrary.simpleMessage(
      "The start point must be before the end point",
    ),
    "errorTabClosed": MessageLookupByLibrary.simpleMessage(
      "That tab is already closed",
    ),
    "exitFullScreen": MessageLookupByLibrary.simpleMessage("Exit full screen"),
    "extensionUpdatedReload": MessageLookupByLibrary.simpleMessage(
      "The Zappit extension was updated. Reload this page to keep using all controls.",
    ),
    "faq": MessageLookupByLibrary.simpleMessage("FAQ"),
    "favorites": MessageLookupByLibrary.simpleMessage("Favorites"),
    "favoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "Tap the star on a site to add it here.",
    ),
    "forwardSeconds": m7,
    "frameByFrame": MessageLookupByLibrary.simpleMessage("Frame by frame"),
    "freeTrial": MessageLookupByLibrary.simpleMessage("Free trial"),
    "freeTrialDays": m8,
    "freeTrialMonths": m9,
    "freeTrialWeeks": m10,
    "freeTrialYears": m11,
    "fullPowerUnlocked": MessageLookupByLibrary.simpleMessage(
      "Full power unlocked",
    ),
    "fullScreen": MessageLookupByLibrary.simpleMessage("Full screen"),
    "generalSettings": MessageLookupByLibrary.simpleMessage("General Settings"),
    "gotIt": MessageLookupByLibrary.simpleMessage("Got it"),
    "hideChat": MessageLookupByLibrary.simpleMessage("Hide chat"),
    "home": MessageLookupByLibrary.simpleMessage("Home"),
    "justPerMonth": m12,
    "largerCaptions": MessageLookupByLibrary.simpleMessage("Larger captions"),
    "lastVideoInPlaylist": MessageLookupByLibrary.simpleMessage(
      "This is the last video in the playlist",
    ),
    "learnMore": MessageLookupByLibrary.simpleMessage("Learn More"),
    "left": MessageLookupByLibrary.simpleMessage("Left"),
    "linkPanelHint": MessageLookupByLibrary.simpleMessage(
      "Paste a video link and tap Send. It opens in a new tab in your browser.",
    ),
    "liveBadge": MessageLookupByLibrary.simpleMessage("LIVE"),
    "liveCantRewind": MessageLookupByLibrary.simpleMessage(
      "This live stream can\'t be rewound",
    ),
    "longPressSpeed": MessageLookupByLibrary.simpleMessage("Long Press Speed"),
    "loopEnd": MessageLookupByLibrary.simpleMessage("Loop end"),
    "loopOff": MessageLookupByLibrary.simpleMessage("Loop off"),
    "loopOn": MessageLookupByLibrary.simpleMessage("Loop on"),
    "loopStart": MessageLookupByLibrary.simpleMessage("Loop start"),
    "manageSubscription": MessageLookupByLibrary.simpleMessage(
      "Manage subscription",
    ),
    "minutesCount": m13,
    "minutesShort": m14,
    "mixCantRepeat": MessageLookupByLibrary.simpleMessage(
      "This playlist keeps playing new videos endlessly, so it can\'t be repeated",
    ),
    "mixCantShuffle": MessageLookupByLibrary.simpleMessage(
      "This playlist keeps playing new videos endlessly, so it can\'t be shuffled",
    ),
    "monthly": MessageLookupByLibrary.simpleMessage("Monthly"),
    "multipleBrowsersMessage": MessageLookupByLibrary.simpleMessage(
      "Multiple browsers are online. Pick the one this remote should control.",
    ),
    "mute": MessageLookupByLibrary.simpleMessage("Mute"),
    "nextChapter": MessageLookupByLibrary.simpleMessage("Next chapter"),
    "nextEpisode": MessageLookupByLibrary.simpleMessage("Next episode"),
    "nextTab": MessageLookupByLibrary.simpleMessage("Next tab"),
    "nextVideo": MessageLookupByLibrary.simpleMessage("Next video"),
    "noBrowser": MessageLookupByLibrary.simpleMessage("No browser"),
    "noBrowserConnectedShare": MessageLookupByLibrary.simpleMessage(
      "No browser is connected. Open your browser with the Zappit extension and try again.",
    ),
    "noBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "1. Open your connected browser on your computer.\n2. If it doesn\'t connect, click the Zappit icon in the top toolbar of your browser.",
    ),
    "noBrowserOnline": MessageLookupByLibrary.simpleMessage(
      "No browser is online.",
    ),
    "noBrowserOnlineShort": MessageLookupByLibrary.simpleMessage(
      "No browser online",
    ),
    "noBrowserSelected": MessageLookupByLibrary.simpleMessage(
      "No browser selected",
    ),
    "noCategoriesFound": MessageLookupByLibrary.simpleMessage(
      "No categories found",
    ),
    "noLinkInShare": MessageLookupByLibrary.simpleMessage(
      "No link found in what you shared",
    ),
    "noMoreTabs": MessageLookupByLibrary.simpleMessage("No more tabs"),
    "noNextEpisode": MessageLookupByLibrary.simpleMessage("No next episode"),
    "noOpenTabs": MessageLookupByLibrary.simpleMessage("No open tabs"),
    "noPreviousPage": MessageLookupByLibrary.simpleMessage(
      "There is no previous page to go back to",
    ),
    "noSiteSettings": MessageLookupByLibrary.simpleMessage(
      "No settings for this site yet.",
    ),
    "noSubtitles": MessageLookupByLibrary.simpleMessage(
      "This video has no subtitles",
    ),
    "noThanks": MessageLookupByLibrary.simpleMessage("No thanks"),
    "noVideosOnPage": MessageLookupByLibrary.simpleMessage(
      "There are no videos on this page.",
    ),
    "notAvailableDuringAd": MessageLookupByLibrary.simpleMessage(
      "Not available during an ad",
    ),
    "notAvailableForLive": MessageLookupByLibrary.simpleMessage(
      "Not available for live",
    ),
    "notAvailableForLiveStreams": MessageLookupByLibrary.simpleMessage(
      "Not available for live streams",
    ),
    "notAvailableForPhotos": MessageLookupByLibrary.simpleMessage(
      "Not available for photo posts",
    ),
    "notConnected": MessageLookupByLibrary.simpleMessage("Not connected"),
    "nothingPlaying": MessageLookupByLibrary.simpleMessage("No video found"),
    "nothingPlayingMessage": MessageLookupByLibrary.simpleMessage(
      "There\'s no video on this screen. Pick another tab, or paste a video link.",
    ),
    "nothingToRestore": MessageLookupByLibrary.simpleMessage(
      "Nothing to restore",
    ),
    "nothingToRestoreMessage": MessageLookupByLibrary.simpleMessage(
      "No active Zappit Pro subscription was found for this store account.",
    ),
    "obAnimAddExtension": MessageLookupByLibrary.simpleMessage("Add extension"),
    "obAnimAdded": MessageLookupByLibrary.simpleMessage("Added"),
    "obAnimConnectComputer": MessageLookupByLibrary.simpleMessage(
      "Connect to your computer",
    ),
    "obAnimConnectPhone": MessageLookupByLibrary.simpleMessage(
      "Connect your phone",
    ),
    "obAnimNewCode": m15,
    "obAnimRemoteConnected": MessageLookupByLibrary.simpleMessage(
      "Remote connected",
    ),
    "obAnimScanCode": MessageLookupByLibrary.simpleMessage(
      "Scan this code with the Zappit app on your phone.",
    ),
    "obAnimTagline": MessageLookupByLibrary.simpleMessage("Kill the mouse."),
    "obAnimYourPhones": MessageLookupByLibrary.simpleMessage("Your phones"),
    "off": MessageLookupByLibrary.simpleMessage("Off"),
    "offline": MessageLookupByLibrary.simpleMessage("Offline"),
    "offlineMessage": MessageLookupByLibrary.simpleMessage(
      "Check your internet connection. Zappit reconnects on its own.",
    ),
    "onboarding0AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Tapping the play/pause button in the Zappit app pauses and resumes the video on the laptop",
    ),
    "onboarding1AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Typing zappit.tv/get in the browser and adding the Zappit extension",
    ),
    "onboarding1Body": m16,
    "onboarding1Title": MessageLookupByLibrary.simpleMessage(
      "First, add the Zappit extension to your browser",
    ),
    "onboarding2AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Click the Zappit icon in the browser, then scan the QR code with the phone",
    ),
    "onboarding2Body": MessageLookupByLibrary.simpleMessage(
      "Click the Zappit icon in your browser toolbar, then point your camera at the QR code.",
    ),
    "onboarding2Title": MessageLookupByLibrary.simpleMessage(
      "Scan the QR code",
    ),
    "onboardingGetStarted": MessageLookupByLibrary.simpleMessage("Get started"),
    "onboardingIconHelp": MessageLookupByLibrary.simpleMessage(
      "Don\'t see the Zappit icon?",
    ),
    "onboardingIconHelpLabel": MessageLookupByLibrary.simpleMessage(
      "Don\'t see the Zappit icon? Opens the answer in the FAQ",
    ),
    "onboardingNext": MessageLookupByLibrary.simpleMessage("Next"),
    "onboardingOpenQrScanner": MessageLookupByLibrary.simpleMessage(
      "Open QR scanner",
    ),
    "onboardingShareLink": MessageLookupByLibrary.simpleMessage(
      "Send install link",
    ),
    "onboardingStepCount": m17,
    "onboardingStepLabel": m18,
    "onboardingWelcomeBody": MessageLookupByLibrary.simpleMessage(
      "Control any video on your computer. Setup takes just two quick steps.",
    ),
    "onboardingWelcomeTitle": MessageLookupByLibrary.simpleMessage(
      "Your phone is now your remote",
    ),
    "openALink": MessageLookupByLibrary.simpleMessage("Open a link"),
    "openBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "Open your browser with the Zappit extension to see its tabs.",
    ),
    "openLinkInBrowser": MessageLookupByLibrary.simpleMessage(
      "Open a link in the browser",
    ),
    "openSite": m19,
    "openedIn": m20,
    "openingIn": m21,
    "pairCodeExpired": MessageLookupByLibrary.simpleMessage(
      "This code has expired. Scan the new code on your computer.",
    ),
    "pairCodeInvalid": MessageLookupByLibrary.simpleMessage(
      "This code is no longer valid. Scan the new code on your computer.",
    ),
    "pairCodeUsed": MessageLookupByLibrary.simpleMessage(
      "This code was already used. Scan the new code on your computer.",
    ),
    "pairFailed": MessageLookupByLibrary.simpleMessage(
      "Couldn\'t connect. Check your internet connection and try again.",
    ),
    "pairHowToInstall": MessageLookupByLibrary.simpleMessage(
      "How to install the extension",
    ),
    "pairPhoneLimit": MessageLookupByLibrary.simpleMessage(
      "This computer already has 3 phones connected. Open Zappit on one of your other connected phones and tap \'Disconnect this phone\' in \'More\'. If you no longer have that phone, use \'Reset\' in the Zappit extension on your computer.",
    ),
    "pairTitle": MessageLookupByLibrary.simpleMessage(
      "Connect to the browser extension",
    ),
    "paste": MessageLookupByLibrary.simpleMessage("Paste"),
    "pasteALink": MessageLookupByLibrary.simpleMessage("Paste a link"),
    "pasteVideoLink": MessageLookupByLibrary.simpleMessage(
      "Paste a video link",
    ),
    "pause": MessageLookupByLibrary.simpleMessage("Pause"),
    "paymentPending": MessageLookupByLibrary.simpleMessage("Payment pending"),
    "paymentPendingMessage": MessageLookupByLibrary.simpleMessage(
      "Pro turns on as soon as the store confirms your payment.",
    ),
    "phoneName": MessageLookupByLibrary.simpleMessage("Phone name"),
    "phoneNameEmpty": MessageLookupByLibrary.simpleMessage("Enter a name."),
    "phoneNameMessage": MessageLookupByLibrary.simpleMessage(
      "Shown in the Zappit extension on your computer.",
    ),
    "pickATab": MessageLookupByLibrary.simpleMessage("Pick a tab"),
    "pickBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "Pick the browser this remote should control to see its tabs.",
    ),
    "pickVideosWithPro": MessageLookupByLibrary.simpleMessage(
      "Pick videos from your phone with Pro",
    ),
    "play": MessageLookupByLibrary.simpleMessage("Play"),
    "playInApp": MessageLookupByLibrary.simpleMessage("Continue on phone"),
    "playNow": MessageLookupByLibrary.simpleMessage("Play now"),
    "playVideoFirst": MessageLookupByLibrary.simpleMessage(
      "Play a video in the browser first",
    ),
    "playing": MessageLookupByLibrary.simpleMessage("Playing"),
    "playlist": MessageLookupByLibrary.simpleMessage("Playlist"),
    "playlistCantRepeat": MessageLookupByLibrary.simpleMessage(
      "This playlist can\'t be repeated",
    ),
    "playlistCantShuffle": MessageLookupByLibrary.simpleMessage(
      "This playlist can\'t be shuffled",
    ),
    "previousChapter": MessageLookupByLibrary.simpleMessage("Previous chapter"),
    "previousTab": MessageLookupByLibrary.simpleMessage("Previous tab"),
    "previousVideo": MessageLookupByLibrary.simpleMessage("Previous video"),
    "pricePerMonth": m22,
    "pricePerYear": m23,
    "privacyPolicy": MessageLookupByLibrary.simpleMessage("Privacy Policy"),
    "proBannerSubtitle": MessageLookupByLibrary.simpleMessage(
      "Unleash the full power of your remote",
    ),
    "proFeatureAbLoop": MessageLookupByLibrary.simpleMessage(
      "Unlimited A-B Loop",
    ),
    "proFeatureAllSpeeds": MessageLookupByLibrary.simpleMessage(
      "All playback speeds",
    ),
    "proFeatureDedicatedControllers": MessageLookupByLibrary.simpleMessage(
      "Unlock dedicated controllers",
    ),
    "proFeatureFullLoop": MessageLookupByLibrary.simpleMessage(
      "Unlimited Full Video Loop",
    ),
    "proFeatureVoiceBoost": MessageLookupByLibrary.simpleMessage(
      "Unlimited Voice Boost",
    ),
    "proPreviewActiveBanner": m24,
    "proPreviewEndedMessage": MessageLookupByLibrary.simpleMessage(
      "Thanks for trying Zappit Pro! Subscribe to keep enjoying every Pro feature seamlessly.",
    ),
    "proPreviewEndedSubtitle": m25,
    "proPreviewEndedTitle": MessageLookupByLibrary.simpleMessage(
      "Your Pro preview has ended",
    ),
    "proPreviewEndsTomorrow": MessageLookupByLibrary.simpleMessage(
      "Pro preview ends tomorrow",
    ),
    "proPreviewStarted": m26,
    "proPreviewUntil": m27,
    "proRestored": m28,
    "proSubscriptionEnded": MessageLookupByLibrary.simpleMessage(
      "Your Pro subscription has ended",
    ),
    "proSubtitle": MessageLookupByLibrary.simpleMessage(
      "Unleash the full power of your remote.",
    ),
    "purchaseCancelled": MessageLookupByLibrary.simpleMessage(
      "Purchase cancelled",
    ),
    "purchaseCancelledMessage": MessageLookupByLibrary.simpleMessage(
      "Nothing was charged. You can try again anytime.",
    ),
    "purchaseFailed": MessageLookupByLibrary.simpleMessage("Purchase failed"),
    "purchaseNotActivated": MessageLookupByLibrary.simpleMessage(
      "Purchase not activated",
    ),
    "purchaseNotActivatedMessage": MessageLookupByLibrary.simpleMessage(
      "Your purchase went through but Pro is not active yet. Try Restore purchases.",
    ),
    "purchasesNotAllowed": MessageLookupByLibrary.simpleMessage(
      "Purchases are not allowed on this device or account.",
    ),
    "qualityNotChanged": MessageLookupByLibrary.simpleMessage(
      "The quality didn\'t change",
    ),
    "rateZappit": MessageLookupByLibrary.simpleMessage("Rate Zappit"),
    "reload": MessageLookupByLibrary.simpleMessage("Reload"),
    "remindMe": MessageLookupByLibrary.simpleMessage("Remind me"),
    "remoteSettings": MessageLookupByLibrary.simpleMessage("Remote settings"),
    "removeFromFavorites": m29,
    "removedFromFavorites": m30,
    "reorderHint": MessageLookupByLibrary.simpleMessage(
      "Touch and hold an item, then drag to reorder",
    ),
    "reorderSite": m31,
    "repeatOff": MessageLookupByLibrary.simpleMessage("Repeat off"),
    "repeatOffNotice": MessageLookupByLibrary.simpleMessage("Repeat off"),
    "repeatOn": MessageLookupByLibrary.simpleMessage("Repeat on"),
    "repeatingPlaylist": MessageLookupByLibrary.simpleMessage(
      "Repeating this playlist",
    ),
    "replay": MessageLookupByLibrary.simpleMessage("Replay"),
    "restoreFailed": MessageLookupByLibrary.simpleMessage("Restore failed"),
    "restorePurchases": MessageLookupByLibrary.simpleMessage(
      "Restore purchases",
    ),
    "right": MessageLookupByLibrary.simpleMessage("Right"),
    "save": MessageLookupByLibrary.simpleMessage("Save"),
    "savePercent": m32,
    "searchCategories": MessageLookupByLibrary.simpleMessage(
      "Search categories",
    ),
    "seasonNumber": m33,
    "secondsShort": m34,
    "seekInterval": MessageLookupByLibrary.simpleMessage("Seek Interval"),
    "select": MessageLookupByLibrary.simpleMessage("Select"),
    "selectVideoInBrowser": MessageLookupByLibrary.simpleMessage(
      "Nothing playing",
    ),
    "selectVideoInBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "Click any video on your computer to start watching. The remote will appear here.",
    ),
    "send": MessageLookupByLibrary.simpleMessage("Send"),
    "settings": MessageLookupByLibrary.simpleMessage("Settings"),
    "showChat": MessageLookupByLibrary.simpleMessage("Show chat"),
    "shuffleOff": MessageLookupByLibrary.simpleMessage("Shuffle off"),
    "shuffleOffNotice": MessageLookupByLibrary.simpleMessage("Shuffle off"),
    "shuffleOn": MessageLookupByLibrary.simpleMessage("Shuffle on"),
    "shufflingPlaylist": MessageLookupByLibrary.simpleMessage(
      "Shuffling this playlist",
    ),
    "siteSettings": m35,
    "siteWeb": MessageLookupByLibrary.simpleMessage("Web"),
    "skipAd": MessageLookupByLibrary.simpleMessage("Skip Ad"),
    "skipIntro": MessageLookupByLibrary.simpleMessage("Skip Intro"),
    "sleepTimer": MessageLookupByLibrary.simpleMessage("Sleep Timer"),
    "sleepTimerLabel": MessageLookupByLibrary.simpleMessage("Sleep timer"),
    "smallerCaptions": MessageLookupByLibrary.simpleMessage("Smaller captions"),
    "somethingWrong": MessageLookupByLibrary.simpleMessage(
      "Sorry, something went wrong.",
    ),
    "somethingWrongTryAgain": MessageLookupByLibrary.simpleMessage(
      "Sorry, something went wrong. Please try again.",
    ),
    "soundBlockedMessage": MessageLookupByLibrary.simpleMessage(
      "Tap to see how to turn the sound on.",
    ),
    "soundBlockedTitle": MessageLookupByLibrary.simpleMessage(
      "Why can\'t I hear anything?",
    ),
    "soundHelpTitle": MessageLookupByLibrary.simpleMessage("Sound"),
    "speedTrialOver": m36,
    "startFreeTrial": MessageLookupByLibrary.simpleMessage("Start free trial"),
    "storeProblem": MessageLookupByLibrary.simpleMessage(
      "The store had a problem. Please try again in a moment.",
    ),
    "storeUnavailable": MessageLookupByLibrary.simpleMessage(
      "The store is not available right now. Please try again later.",
    ),
    "subscribe": MessageLookupByLibrary.simpleMessage("Subscribe"),
    "success": MessageLookupByLibrary.simpleMessage("Success"),
    "support": MessageLookupByLibrary.simpleMessage("Support"),
    "supportedSites": MessageLookupByLibrary.simpleMessage("Supported sites"),
    "supportedSitesIntro": MessageLookupByLibrary.simpleMessage(
      "These sites get a dedicated remote built for them. On any other site, Zappit works as a standard remote.",
    ),
    "tabMore": MessageLookupByLibrary.simpleMessage("More"),
    "tabRemote": MessageLookupByLibrary.simpleMessage("Remote"),
    "tabTabs": MessageLookupByLibrary.simpleMessage("Tabs"),
    "tapToKeepPro": MessageLookupByLibrary.simpleMessage(
      "Tap to keep every Pro feature.",
    ),
    "tellAFriend": MessageLookupByLibrary.simpleMessage("Tell a friend"),
    "termsOfService": MessageLookupByLibrary.simpleMessage("Terms of Service"),
    "theaterMode": MessageLookupByLibrary.simpleMessage("Theater mode"),
    "trialReminderBody": m37,
    "trialReminderChannel": MessageLookupByLibrary.simpleMessage(
      "Free trial reminder",
    ),
    "trialReminderChannelDescription": MessageLookupByLibrary.simpleMessage(
      "A reminder before your free trial ends",
    ),
    "trialReminderMessage": MessageLookupByLibrary.simpleMessage(
      "Want us to remind you the day before your free trial ends, so you\'re never charged by surprise?",
    ),
    "trialReminderNotificationTitle": MessageLookupByLibrary.simpleMessage(
      "Zappit Pro free trial ends soon",
    ),
    "trialReminderTitle": MessageLookupByLibrary.simpleMessage(
      "Trial reminder",
    ),
    "trialTerms": m38,
    "trialTermsDays": m39,
    "trialTermsMonths": m40,
    "trialTermsYears": m41,
    "tryAgain": MessageLookupByLibrary.simpleMessage("Try again"),
    "turnOffAbFirst": MessageLookupByLibrary.simpleMessage(
      "Turn off the A-B loop first",
    ),
    "tutorial": MessageLookupByLibrary.simpleMessage("Tutorial"),
    "unavailable": MessageLookupByLibrary.simpleMessage("Unavailable"),
    "undo": MessageLookupByLibrary.simpleMessage("Undo"),
    "unmute": MessageLookupByLibrary.simpleMessage("Unmute"),
    "untitled": MessageLookupByLibrary.simpleMessage("Untitled"),
    "up": MessageLookupByLibrary.simpleMessage("Up"),
    "upNext": MessageLookupByLibrary.simpleMessage("Up next"),
    "upNextCountdown": m42,
    "upgrade": MessageLookupByLibrary.simpleMessage("Upgrade"),
    "videoLengthUnknown": MessageLookupByLibrary.simpleMessage(
      "This video\'s length is unknown",
    ),
    "videoQuality": MessageLookupByLibrary.simpleMessage("Video Quality"),
    "view": MessageLookupByLibrary.simpleMessage("View"),
    "voiceBoostDuringAd": MessageLookupByLibrary.simpleMessage(
      "Voice Boost isn\'t available during an ad",
    ),
    "voiceBoostOff": MessageLookupByLibrary.simpleMessage("Voice Boost off"),
    "voiceBoostOn": MessageLookupByLibrary.simpleMessage("Voice Boost on"),
    "voiceBoostTrialLeft": m43,
    "voiceBoostTrialOver": m44,
    "voiceBoostTurnedOn": MessageLookupByLibrary.simpleMessage(
      "Voice Boost on: voices are easier to hear",
    ),
    "voiceBoostUnsupported": MessageLookupByLibrary.simpleMessage(
      "This video doesn\'t support Voice Boost",
    ),
    "volumeDown": MessageLookupByLibrary.simpleMessage("Volume down"),
    "volumeUp": MessageLookupByLibrary.simpleMessage("Volume up"),
    "waitingForBrowser": MessageLookupByLibrary.simpleMessage(
      "Waiting for your browser…",
    ),
    "watchAgain": MessageLookupByLibrary.simpleMessage("Watch again"),
    "watching": MessageLookupByLibrary.simpleMessage("Watching"),
    "welcomeToPro": m45,
    "windowNumber": m46,
    "yearly": MessageLookupByLibrary.simpleMessage("Yearly"),
    "yourBrowser": MessageLookupByLibrary.simpleMessage("your browser"),
    "youreConnected": MessageLookupByLibrary.simpleMessage(
      "You\'re connected!",
    ),
    "youreOffline": MessageLookupByLibrary.simpleMessage("You\'re offline"),
    "youtubeHome": MessageLookupByLibrary.simpleMessage("YouTube home"),
    "ytCourses": MessageLookupByLibrary.simpleMessage("Courses"),
    "ytDownloads": MessageLookupByLibrary.simpleMessage("Downloads"),
    "ytExplore": MessageLookupByLibrary.simpleMessage("Explore"),
    "ytGaming": MessageLookupByLibrary.simpleMessage("Gaming"),
    "ytHistory": MessageLookupByLibrary.simpleMessage("History"),
    "ytHype": MessageLookupByLibrary.simpleMessage("Hype"),
    "ytLikedVideos": MessageLookupByLibrary.simpleMessage("Liked Videos"),
    "ytLive": MessageLookupByLibrary.simpleMessage("Live"),
    "ytMemberships": MessageLookupByLibrary.simpleMessage("Memberships"),
    "ytMusic": MessageLookupByLibrary.simpleMessage("Music"),
    "ytPlaylists": MessageLookupByLibrary.simpleMessage("Playlists"),
    "ytPodcasts": MessageLookupByLibrary.simpleMessage("Podcasts"),
    "ytShorts": MessageLookupByLibrary.simpleMessage("Shorts"),
    "ytSubscriptions": MessageLookupByLibrary.simpleMessage("Subscriptions"),
    "ytVideos": MessageLookupByLibrary.simpleMessage("Videos"),
    "ytWatchLater": MessageLookupByLibrary.simpleMessage("Watch Later"),
    "ytYou": MessageLookupByLibrary.simpleMessage("You"),
  };
}
