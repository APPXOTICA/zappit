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

  static String m1(terms, privacy) => "I agree to the ${terms} and ${privacy}.";

  static String m2(count) => "Back ${count} seconds";

  static String m3(browser) =>
      "${browser} didn\'t answer. Check that it\'s open.";

  static String m4(name) => "Channel: ${name}";

  static String m5(current, total) => "Chapter ${current}/${total}";

  static String m6(host) =>
      "On your computer, open Chrome or Safari and go to ${host}.";

  static String m7(email) =>
      "Click the Zappit icon in the browser toolbar and sign in as ${email}.";

  static String m8(count) => "Forward ${count} seconds";

  static String m9(count) => "${count}-day free trial";

  static String m10(count) => "${count}-month free trial";

  static String m11(count) => "${count}-week free trial";

  static String m12(count) => "${count}-year free trial";

  static String m13(url) => "Install the Zappit extension: ${url}";

  static String m14(price) => "Just ${price}/mo";

  static String m15(count) =>
      "${Intl.plural(count, one: '1 minute', other: '${count} minutes')}";

  static String m16(count) => "${count} min";

  static String m17(site) => "Open ${site}";

  static String m18(browser) => "Opened in ${browser}";

  static String m19(browser) => "Opening in ${browser}…";

  static String m20(price) => "${price} / month";

  static String m21(price) => "${price} / year";

  static String m22(date) =>
      "Your free Pro preview is active until ${date}. Subscribe before it ends to seamlessly keep all Pro features.";

  static String m23(proName) =>
      "Your Pro preview has ended. Keep every Pro feature with ${proName}.";

  static String m24(days) =>
      "Enjoy all Zappit Pro features free for ${days} days. No credit card required, no auto-charge.";

  static String m25(date) => "Pro preview until ${date}";

  static String m26(proName) => "${proName} restored";

  static String m27(site) => "Remove ${site} from Favorites";

  static String m28(site) => "${site} removed from Favorites";

  static String m29(site) => "Reorder ${site}";

  static String m30(percent) => "Save ${percent}%";

  static String m31(number) => "Season ${number}";

  static String m32(count) => "${count}s";

  static String m33(site) => "${site} Settings";

  static String m34(count) =>
      "Back to 1x. Free users can use this speed for ${count} seconds.";

  static String m35(price, date) =>
      "Your free trial ends tomorrow. You\'ll be charged ${price} on ${date}. If you don\'t want to continue, cancel your subscription before then.";

  static String m36(price) => "Starts with a free trial, then ${price}/year.";

  static String m37(count, price) =>
      "Starts with a ${count}-day free trial, then ${price}/year.";

  static String m38(count, price) =>
      "Starts with a ${count}-month free trial, then ${price}/year.";

  static String m39(count, price) =>
      "Starts with a ${count}-year free trial, then ${price}/year.";

  static String m40(count) => "Up next · plays in ${count} s";

  static String m41(count) => "Voice Boost trial, ${count} seconds left";

  static String m42(count) =>
      "Voice Boost is off. Free users can use Voice Boost for ${count} seconds.";

  static String m43(proName) => "Welcome to ${proName}";

  static String m44(number) => "Window ${number}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "abLoopCount": MessageLookupByLibrary.simpleMessage("A-B Loop Count"),
    "abOffForLive": MessageLookupByLibrary.simpleMessage(
      "A-B loop is off for live streams",
    ),
    "account": MessageLookupByLibrary.simpleMessage("Account"),
    "accountDeletionFailed": MessageLookupByLibrary.simpleMessage(
      "Account deletion failed.",
    ),
    "accountDeletionFailedTryAgain": MessageLookupByLibrary.simpleMessage(
      "Account deletion failed. Please try again.",
    ),
    "adBadge": MessageLookupByLibrary.simpleMessage("AD"),
    "addToFavorites": m0,
    "agreeFirst": MessageLookupByLibrary.simpleMessage(
      "Agree to the Terms and Privacy Policy first",
    ),
    "agreeToTerms": m1,
    "agreeToTheTerms": MessageLookupByLibrary.simpleMessage(
      "Agree to the terms",
    ),
    "allSites": MessageLookupByLibrary.simpleMessage("All sites"),
    "alreadySubscribed": MessageLookupByLibrary.simpleMessage(
      "You already own this subscription. Try Restore purchases.",
    ),
    "appleSignInFailed": MessageLookupByLibrary.simpleMessage(
      "Apple sign in failed",
    ),
    "back": MessageLookupByLibrary.simpleMessage("Back"),
    "backSeconds": m2,
    "banned": MessageLookupByLibrary.simpleMessage(
      "Sorry, this account has been banned.",
    ),
    "browserDidNotAnswer": m3,
    "browserNotResponding": MessageLookupByLibrary.simpleMessage(
      "Browser not responding",
    ),
    "browsers": MessageLookupByLibrary.simpleMessage("Browsers"),
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
    "connectBrowserFirst": MessageLookupByLibrary.simpleMessage(
      "Connect to a browser first",
    ),
    "connectStep1Body": m6,
    "connectStep1Title": MessageLookupByLibrary.simpleMessage(
      "Install the extension on your computer",
    ),
    "connectStep2Body": MessageLookupByLibrary.simpleMessage(
      "Click the Zappit icon in the browser toolbar and sign in with the account you use here.",
    ),
    "connectStep2BodyEmail": m7,
    "connectStep2Title": MessageLookupByLibrary.simpleMessage(
      "Sign in with the same account",
    ),
    "connectStep3Body": MessageLookupByLibrary.simpleMessage(
      "Keep the browser open. The remote connects on its own and turns green.",
    ),
    "connectStep3Title": MessageLookupByLibrary.simpleMessage("Play a video"),
    "connected": MessageLookupByLibrary.simpleMessage("Connected"),
    "contactUs": MessageLookupByLibrary.simpleMessage("Contact us"),
    "contactUsKeepInfo": MessageLookupByLibrary.simpleMessage(
      "Please don\'t delete the info below.",
    ),
    "copyLink": MessageLookupByLibrary.simpleMessage("Copy link"),
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
    "deleteAccount": MessageLookupByLibrary.simpleMessage("Delete Account"),
    "deleteAccountMenu": MessageLookupByLibrary.simpleMessage("Delete account"),
    "deleteAccountMessage": MessageLookupByLibrary.simpleMessage(
      "Are you sure you want to delete your account? This action cannot be undone.",
    ),
    "deletingAccount": MessageLookupByLibrary.simpleMessage(
      "Deleting your account...",
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
    "favorites": MessageLookupByLibrary.simpleMessage("Favorites"),
    "favoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "Tap the star on a site to add it here.",
    ),
    "forwardSeconds": m8,
    "frameByFrame": MessageLookupByLibrary.simpleMessage("Frame by frame"),
    "freeTrial": MessageLookupByLibrary.simpleMessage("Free trial"),
    "freeTrialDays": m9,
    "freeTrialMonths": m10,
    "freeTrialWeeks": m11,
    "freeTrialYears": m12,
    "fullPowerUnlocked": MessageLookupByLibrary.simpleMessage(
      "Full power unlocked",
    ),
    "fullScreen": MessageLookupByLibrary.simpleMessage("Full screen"),
    "generalSettings": MessageLookupByLibrary.simpleMessage("General Settings"),
    "googleSignInFailed": MessageLookupByLibrary.simpleMessage(
      "Google sign in failed",
    ),
    "googleSignInUnsupported": MessageLookupByLibrary.simpleMessage(
      "Google Sign In is not supported on this platform",
    ),
    "gotIt": MessageLookupByLibrary.simpleMessage("Got it"),
    "hideChat": MessageLookupByLibrary.simpleMessage("Hide chat"),
    "home": MessageLookupByLibrary.simpleMessage("Home"),
    "howToConnect": MessageLookupByLibrary.simpleMessage("How to connect"),
    "installExtensionShare": m13,
    "justPerMonth": m14,
    "largerCaptions": MessageLookupByLibrary.simpleMessage("Larger captions"),
    "lastUsed": MessageLookupByLibrary.simpleMessage("Last used"),
    "lastVideoInPlaylist": MessageLookupByLibrary.simpleMessage(
      "This is the last video in the playlist",
    ),
    "learnMore": MessageLookupByLibrary.simpleMessage("Learn More"),
    "left": MessageLookupByLibrary.simpleMessage("Left"),
    "linkCopied": MessageLookupByLibrary.simpleMessage("Link copied"),
    "linkPanelHint": MessageLookupByLibrary.simpleMessage(
      "Paste a video link and tap Send. It opens in a new tab in your browser.",
    ),
    "liveBadge": MessageLookupByLibrary.simpleMessage("LIVE"),
    "liveCantRewind": MessageLookupByLibrary.simpleMessage(
      "This live stream can\'t be rewound",
    ),
    "loginTagline": MessageLookupByLibrary.simpleMessage(
      "Sit back. Control your browser from anywhere.",
    ),
    "logout": MessageLookupByLibrary.simpleMessage("Log out"),
    "logoutMessage": MessageLookupByLibrary.simpleMessage(
      "Giving up the remote? You\'ll miss the convenience!",
    ),
    "longPressSpeed": MessageLookupByLibrary.simpleMessage("Long Press Speed"),
    "loopEnd": MessageLookupByLibrary.simpleMessage("Loop end"),
    "loopOff": MessageLookupByLibrary.simpleMessage("Loop off"),
    "loopOn": MessageLookupByLibrary.simpleMessage("Loop on"),
    "loopStart": MessageLookupByLibrary.simpleMessage("Loop start"),
    "manageSubscription": MessageLookupByLibrary.simpleMessage(
      "Manage subscription",
    ),
    "minutesCount": m15,
    "minutesShort": m16,
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
      "No browser is connected. Open your browser with Zappit signed in and try again.",
    ),
    "noBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "Open Chrome or Safari on your computer and make sure the Zappit extension is signed in to this account.",
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
    "nothingPlaying": MessageLookupByLibrary.simpleMessage("Nothing playing"),
    "nothingPlayingMessage": MessageLookupByLibrary.simpleMessage(
      "No video is playing right now. Pick another tab, or paste a video link.",
    ),
    "nothingToRestore": MessageLookupByLibrary.simpleMessage(
      "Nothing to restore",
    ),
    "nothingToRestoreMessage": MessageLookupByLibrary.simpleMessage(
      "No active Zappit Pro subscription was found for this store account.",
    ),
    "off": MessageLookupByLibrary.simpleMessage("Off"),
    "offline": MessageLookupByLibrary.simpleMessage("Offline"),
    "offlineMessage": MessageLookupByLibrary.simpleMessage(
      "Check your internet connection. Zappit reconnects on its own.",
    ),
    "openALink": MessageLookupByLibrary.simpleMessage("Open a link"),
    "openBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "Open your browser with the Zappit extension signed in to see its tabs.",
    ),
    "openLinkInBrowser": MessageLookupByLibrary.simpleMessage(
      "Open a link in the browser",
    ),
    "openOneToStart": MessageLookupByLibrary.simpleMessage(
      "Open one of these to start",
    ),
    "openSite": m17,
    "openedIn": m18,
    "openingIn": m19,
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
    "pickATab": MessageLookupByLibrary.simpleMessage("Pick a tab"),
    "pickBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "Pick the browser this remote should control to see its tabs.",
    ),
    "pickVideosWithPro": MessageLookupByLibrary.simpleMessage(
      "Pick videos from your phone with Pro",
    ),
    "play": MessageLookupByLibrary.simpleMessage("Play"),
    "playInApp": MessageLookupByLibrary.simpleMessage("Play in app"),
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
    "pricePerMonth": m20,
    "pricePerYear": m21,
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
    "proPreviewActiveBanner": m22,
    "proPreviewEndedMessage": MessageLookupByLibrary.simpleMessage(
      "Thanks for trying Zappit Pro! Subscribe to keep enjoying every Pro feature seamlessly.",
    ),
    "proPreviewEndedSubtitle": m23,
    "proPreviewEndedTitle": MessageLookupByLibrary.simpleMessage(
      "Your Pro preview has ended",
    ),
    "proPreviewEndsTomorrow": MessageLookupByLibrary.simpleMessage(
      "Pro preview ends tomorrow",
    ),
    "proPreviewStarted": m24,
    "proPreviewUntil": m25,
    "proRestored": m26,
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
    "removeFromFavorites": m27,
    "removedFromFavorites": m28,
    "reorderHint": MessageLookupByLibrary.simpleMessage(
      "Touch and hold an item, then drag to reorder",
    ),
    "reorderSite": m29,
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
    "savePercent": m30,
    "searchCategories": MessageLookupByLibrary.simpleMessage(
      "Search categories",
    ),
    "seasonNumber": m31,
    "secondsShort": m32,
    "seekInterval": MessageLookupByLibrary.simpleMessage("Seek Interval"),
    "select": MessageLookupByLibrary.simpleMessage("Select"),
    "selectVideoInBrowser": MessageLookupByLibrary.simpleMessage(
      "Select a video in your browser",
    ),
    "send": MessageLookupByLibrary.simpleMessage("Send"),
    "sendLink": MessageLookupByLibrary.simpleMessage("Send link"),
    "settings": MessageLookupByLibrary.simpleMessage("Settings"),
    "shareContent": MessageLookupByLibrary.simpleMessage(
      "Control your computer\'s video without leaving your bed.",
    ),
    "showChat": MessageLookupByLibrary.simpleMessage("Show chat"),
    "shuffleOff": MessageLookupByLibrary.simpleMessage("Shuffle off"),
    "shuffleOffNotice": MessageLookupByLibrary.simpleMessage("Shuffle off"),
    "shuffleOn": MessageLookupByLibrary.simpleMessage("Shuffle on"),
    "shufflingPlaylist": MessageLookupByLibrary.simpleMessage(
      "Shuffling this playlist",
    ),
    "signInWithApple": MessageLookupByLibrary.simpleMessage(
      "Sign in with Apple",
    ),
    "signInWithGoogle": MessageLookupByLibrary.simpleMessage(
      "Sign in with Google",
    ),
    "signOutFailed": MessageLookupByLibrary.simpleMessage("Sign out failed"),
    "siteSettings": m33,
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
    "speedTrialOver": m34,
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
    "trialReminderBody": m35,
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
    "trialTerms": m36,
    "trialTermsDays": m37,
    "trialTermsMonths": m38,
    "trialTermsYears": m39,
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
    "upNextCountdown": m40,
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
    "voiceBoostTrialLeft": m41,
    "voiceBoostTrialOver": m42,
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
    "welcomeToPro": m43,
    "windowNumber": m44,
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
