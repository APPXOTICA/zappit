// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Success`
  String get success {
    return Intl.message(
      'Success',
      name: 'success',
      desc: 'Means some job has been completed as expected',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: 'Button title',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: 'Alert title. Displayed when an error occurs.',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: 'Settings page title',
      args: [],
    );
  }

  /// `Log out`
  String get logout {
    return Intl.message(
      'Log out',
      name: 'logout',
      desc: 'Button title.',
      args: [],
    );
  }

  /// `Giving up the remote? You'll miss the convenience!`
  String get logoutMessage {
    return Intl.message(
      'Giving up the remote? You\'ll miss the convenience!',
      name: 'logoutMessage',
      desc: 'A lighthearted confirmation message for logging out, reminding the user of the remote control\'s convenience.',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: 'Button title for confirming delete actions',
      args: [],
    );
  }

  /// `Delete Account`
  String get deleteAccount {
    return Intl.message(
      'Delete Account',
      name: 'deleteAccount',
      desc: 'Button title. This button allows users to delete the user\'s account.',
      args: [],
    );
  }

  /// `Are you sure you want to delete your account? This action cannot be undone.`
  String get deleteAccountMessage {
    return Intl.message(
      'Are you sure you want to delete your account? This action cannot be undone.',
      name: 'deleteAccountMessage',
      desc: 'Standard warning message for account deletion, emphasizing that the action is permanent and data cannot be recovered.',
      args: [],
    );
  }

  /// `Deleting your account...`
  String get deletingAccount {
    return Intl.message(
      'Deleting your account...',
      name: 'deletingAccount',
      desc: 'A status or loading message shown to the user while the account deletion process is in progress.',
      args: [],
    );
  }

  /// `Sorry, this account has been banned.`
  String get banned {
    return Intl.message(
      'Sorry, this account has been banned.',
      name: 'banned',
      desc: 'Shown when banned account tries to log in.',
      args: [],
    );
  }

  /// `Sorry, something went wrong.`
  String get somethingWrong {
    return Intl.message(
      'Sorry, something went wrong.',
      name: 'somethingWrong',
      desc: 'Displayed when something goes wrong.',
      args: [],
    );
  }

  /// `Sorry, something went wrong. Please try again.`
  String get somethingWrongTryAgain {
    return Intl.message(
      'Sorry, something went wrong. Please try again.',
      name: 'somethingWrongTryAgain',
      desc: 'Shown when error occurred.',
      args: [],
    );
  }

  /// `Control your computer's video without leaving your bed.`
  String get shareContent {
    return Intl.message(
      'Control your computer\'s video without leaving your bed.',
      name: 'shareContent',
      desc: 'Text shared by Tell a friend, between the app name and the store link.',
      args: [],
    );
  }

  /// `Browser not responding`
  String get browserNotResponding {
    return Intl.message(
      'Browser not responding',
      name: 'browserNotResponding',
      desc: 'Top notice title: a command got no answer from the browser.',
      args: [],
    );
  }

  /// `{browser} didn't answer. Check that it's open.`
  String browserDidNotAnswer(String browser) {
    return Intl.message(
      '$browser didn\'t answer. Check that it\'s open.',
      name: 'browserDidNotAnswer',
      desc: 'Top notice message under "Browser not responding". browser: e.g. "Chrome · Mac".',
      args: [browser],
    );
  }

  /// `Why can't I hear anything?`
  String get soundBlockedTitle {
    return Intl.message(
      'Why can\'t I hear anything?',
      name: 'soundBlockedTitle',
      desc: 'Top notice title: the browser kept the video muted (autoplay policy).',
      args: [],
    );
  }

  /// `Tap to see how to turn the sound on.`
  String get soundBlockedMessage {
    return Intl.message(
      'Tap to see how to turn the sound on.',
      name: 'soundBlockedMessage',
      desc: 'Top notice message: tapping opens the help page.',
      args: [],
    );
  }

  /// `Sound`
  String get soundHelpTitle {
    return Intl.message(
      'Sound',
      name: 'soundHelpTitle',
      desc: 'Title of the help web page about sound.',
      args: [],
    );
  }

  /// `Couldn't find that button on the page`
  String get errorButtonNotFound {
    return Intl.message(
      'Couldn\'t find that button on the page',
      name: 'errorButtonNotFound',
      desc: 'Snackbar: the browser could not find the control on the web page.',
      args: [],
    );
  }

  /// `This site doesn't support that`
  String get errorNotSupported {
    return Intl.message(
      'This site doesn\'t support that',
      name: 'errorNotSupported',
      desc: 'Snackbar: the site has no such control.',
      args: [],
    );
  }

  /// `No video is playing`
  String get errorNoMedia {
    return Intl.message(
      'No video is playing',
      name: 'errorNoMedia',
      desc: 'Snackbar: the command needs a video, and there is none.',
      args: [],
    );
  }

  /// `Can't do that during an ad`
  String get errorDuringAd {
    return Intl.message(
      'Can\'t do that during an ad',
      name: 'errorDuringAd',
      desc: 'Snackbar: the control is blocked while an ad plays.',
      args: [],
    );
  }

  /// `The start point must be before the end point`
  String get errorStartAfterEnd {
    return Intl.message(
      'The start point must be before the end point',
      name: 'errorStartAfterEnd',
      desc: 'Snackbar: A-B loop start set after its end.',
      args: [],
    );
  }

  /// `The end point must be after the start point`
  String get errorEndBeforeStart {
    return Intl.message(
      'The end point must be after the start point',
      name: 'errorEndBeforeStart',
      desc: 'Snackbar: A-B loop end set before its start.',
      args: [],
    );
  }

  /// `The site didn't change it`
  String get errorNotChanged {
    return Intl.message(
      'The site didn\'t change it',
      name: 'errorNotChanged',
      desc: 'Snackbar: the site ignored the change.',
      args: [],
    );
  }

  /// `That tab is already closed`
  String get errorTabClosed {
    return Intl.message(
      'That tab is already closed',
      name: 'errorTabClosed',
      desc: 'Snackbar: the chosen browser tab no longer exists.',
      args: [],
    );
  }

  /// `That link can’t be opened`
  String get errorInvalidUrl {
    return Intl.message(
      'That link can’t be opened',
      name: 'errorInvalidUrl',
      desc: 'Snackbar: the link could not be opened in the browser.',
      args: [],
    );
  }

  /// `No browser is selected`
  String get errorNoBrowser {
    return Intl.message(
      'No browser is selected',
      name: 'errorNoBrowser',
      desc: 'Snackbar: no browser is chosen for the remote.',
      args: [],
    );
  }

  /// `Something went wrong`
  String get errorGeneric {
    return Intl.message(
      'Something went wrong',
      name: 'errorGeneric',
      desc: 'Snackbar: unknown error.',
      args: [],
    );
  }

  /// `Apple sign in failed`
  String get appleSignInFailed {
    return Intl.message(
      'Apple sign in failed',
      name: 'appleSignInFailed',
      desc: 'Error: signing in with Apple failed.',
      args: [],
    );
  }

  /// `Google Sign In is not supported on this platform`
  String get googleSignInUnsupported {
    return Intl.message(
      'Google Sign In is not supported on this platform',
      name: 'googleSignInUnsupported',
      desc: 'Error: Google sign-in is unavailable on this device.',
      args: [],
    );
  }

  /// `Google sign in failed`
  String get googleSignInFailed {
    return Intl.message(
      'Google sign in failed',
      name: 'googleSignInFailed',
      desc: 'Error: signing in with Google failed.',
      args: [],
    );
  }

  /// `Sign out failed`
  String get signOutFailed {
    return Intl.message(
      'Sign out failed',
      name: 'signOutFailed',
      desc: 'Snackbar: logging out failed.',
      args: [],
    );
  }

  /// `Account deletion failed.`
  String get accountDeletionFailed {
    return Intl.message(
      'Account deletion failed.',
      name: 'accountDeletionFailed',
      desc: 'Snackbar: the server could not delete the account.',
      args: [],
    );
  }

  /// `Account deletion failed. Please try again.`
  String get accountDeletionFailedTryAgain {
    return Intl.message(
      'Account deletion failed. Please try again.',
      name: 'accountDeletionFailedTryAgain',
      desc: 'Snackbar: deleting the account failed.',
      args: [],
    );
  }

  /// `Agree to the Terms and Privacy Policy first`
  String get agreeFirst {
    return Intl.message(
      'Agree to the Terms and Privacy Policy first',
      name: 'agreeFirst',
      desc: 'Snackbar on the sign-in screen: the agreement box is not checked.',
      args: [],
    );
  }

  /// `Sit back. Control your browser from anywhere.`
  String get loginTagline {
    return Intl.message(
      'Sit back. Control your browser from anywhere.',
      name: 'loginTagline',
      desc: 'Sign-in screen tagline under the app name.',
      args: [],
    );
  }

  /// `Sign in with Apple`
  String get signInWithApple {
    return Intl.message(
      'Sign in with Apple',
      name: 'signInWithApple',
      desc: 'Sign-in button.',
      args: [],
    );
  }

  /// `Sign in with Google`
  String get signInWithGoogle {
    return Intl.message(
      'Sign in with Google',
      name: 'signInWithGoogle',
      desc: 'Sign-in button.',
      args: [],
    );
  }

  /// `I agree to the {terms} and {privacy}.`
  String agreeToTerms(String terms, String privacy) {
    return Intl.message(
      'I agree to the $terms and $privacy.',
      name: 'agreeToTerms',
      desc: 'Sign-in agreement line. terms and privacy are the tappable links "Terms of Service" and "Privacy Policy".',
      args: [terms, privacy],
    );
  }

  /// `Terms of Service`
  String get termsOfService {
    return Intl.message(
      'Terms of Service',
      name: 'termsOfService',
      desc: 'Link and page title.',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: 'Link and page title.',
      args: [],
    );
  }

  /// `Last used`
  String get lastUsed {
    return Intl.message(
      'Last used',
      name: 'lastUsed',
      desc: 'Small pill on the sign-in button the user used last time.',
      args: [],
    );
  }

  /// `Agree to the terms`
  String get agreeToTheTerms {
    return Intl.message(
      'Agree to the terms',
      name: 'agreeToTheTerms',
      desc: 'Accessibility label of the agreement checkbox.',
      args: [],
    );
  }

  /// `No browser is online.`
  String get noBrowserOnline {
    return Intl.message(
      'No browser is online.',
      name: 'noBrowserOnline',
      desc: 'Browser list when no browser with the extension is online.',
      args: [],
    );
  }

  /// `Browsers`
  String get browsers {
    return Intl.message(
      'Browsers',
      name: 'browsers',
      desc: 'Title of the browser picker sheet.',
      args: [],
    );
  }

  /// `How to connect`
  String get howToConnect {
    return Intl.message(
      'How to connect',
      name: 'howToConnect',
      desc: 'Title of the connection guide page and its button.',
      args: [],
    );
  }

  /// `Install the extension on your computer`
  String get connectStep1Title {
    return Intl.message(
      'Install the extension on your computer',
      name: 'connectStep1Title',
      desc: 'Connection guide, step 1 title.',
      args: [],
    );
  }

  /// `On your computer, open Chrome or Safari and go to {host}.`
  String connectStep1Body(String host) {
    return Intl.message(
      'On your computer, open Chrome or Safari and go to $host.',
      name: 'connectStep1Body',
      desc:
          'Connection guide, step 1. host: a web address like "zappit.tv/get".',
      args: [host],
    );
  }

  /// `Send link`
  String get sendLink {
    return Intl.message(
      'Send link',
      name: 'sendLink',
      desc: 'Button: share the extension install link.',
      args: [],
    );
  }

  /// `Install the Zappit extension: {url}`
  String installExtensionShare(String url) {
    return Intl.message(
      'Install the Zappit extension: $url',
      name: 'installExtensionShare',
      desc: 'Text shared by the "Send link" button.',
      args: [url],
    );
  }

  /// `Copy link`
  String get copyLink {
    return Intl.message(
      'Copy link',
      name: 'copyLink',
      desc: 'Button: copy the extension install link.',
      args: [],
    );
  }

  /// `Link copied`
  String get linkCopied {
    return Intl.message(
      'Link copied',
      name: 'linkCopied',
      desc: 'Snackbar after copying a link.',
      args: [],
    );
  }

  /// `Sign in with the same account`
  String get connectStep2Title {
    return Intl.message(
      'Sign in with the same account',
      name: 'connectStep2Title',
      desc: 'Connection guide, step 2 title.',
      args: [],
    );
  }

  /// `Click the Zappit icon in the browser toolbar and sign in with the account you use here.`
  String get connectStep2Body {
    return Intl.message(
      'Click the Zappit icon in the browser toolbar and sign in with the account you use here.',
      name: 'connectStep2Body',
      desc: 'Connection guide, step 2 (email unknown).',
      args: [],
    );
  }

  /// `Click the Zappit icon in the browser toolbar and sign in as {email}.`
  String connectStep2BodyEmail(String email) {
    return Intl.message(
      'Click the Zappit icon in the browser toolbar and sign in as $email.',
      name: 'connectStep2BodyEmail',
      desc: 'Connection guide, step 2. email: the signed-in account.',
      args: [email],
    );
  }

  /// `Play a video`
  String get connectStep3Title {
    return Intl.message(
      'Play a video',
      name: 'connectStep3Title',
      desc: 'Connection guide, step 3 title.',
      args: [],
    );
  }

  /// `Keep the browser open. The remote connects on its own and turns green.`
  String get connectStep3Body {
    return Intl.message(
      'Keep the browser open. The remote connects on its own and turns green.',
      name: 'connectStep3Body',
      desc: 'Connection guide, step 3.',
      args: [],
    );
  }

  /// `Unlock dedicated controllers`
  String get proFeatureDedicatedControllers {
    return Intl.message(
      'Unlock dedicated controllers',
      name: 'proFeatureDedicatedControllers',
      desc: 'Pro page feature list.',
      args: [],
    );
  }

  /// `All playback speeds`
  String get proFeatureAllSpeeds {
    return Intl.message(
      'All playback speeds',
      name: 'proFeatureAllSpeeds',
      desc: 'Pro page feature list.',
      args: [],
    );
  }

  /// `Unlimited Voice Boost`
  String get proFeatureVoiceBoost {
    return Intl.message(
      'Unlimited Voice Boost',
      name: 'proFeatureVoiceBoost',
      desc: 'Pro page feature list. Voice Boost is a feature name.',
      args: [],
    );
  }

  /// `Unlimited Full Video Loop`
  String get proFeatureFullLoop {
    return Intl.message(
      'Unlimited Full Video Loop',
      name: 'proFeatureFullLoop',
      desc: 'Pro page feature list.',
      args: [],
    );
  }

  /// `Unlimited A-B Loop`
  String get proFeatureAbLoop {
    return Intl.message(
      'Unlimited A-B Loop',
      name: 'proFeatureAbLoop',
      desc: 'Pro page feature list.',
      args: [],
    );
  }

  /// `The store is not available right now. Please try again later.`
  String get storeUnavailable {
    return Intl.message(
      'The store is not available right now. Please try again later.',
      name: 'storeUnavailable',
      desc: 'Snackbar: the app store products could not be loaded.',
      args: [],
    );
  }

  /// `Welcome to {proName}`
  String welcomeToPro(String proName) {
    return Intl.message(
      'Welcome to $proName',
      name: 'welcomeToPro',
      desc: 'Snackbar after buying. proName: "Zappit Pro".',
      args: [proName],
    );
  }

  /// `{proName} restored`
  String proRestored(String proName) {
    return Intl.message(
      '$proName restored',
      name: 'proRestored',
      desc: 'Snackbar after restoring purchases. proName: "Zappit Pro".',
      args: [proName],
    );
  }

  /// `Free trial`
  String get freeTrial {
    return Intl.message(
      'Free trial',
      name: 'freeTrial',
      desc: 'Pill on the yearly plan when the trial length is unknown.',
      args: [],
    );
  }

  /// `{count}-day free trial`
  String freeTrialDays(int count) {
    return Intl.message(
      '$count-day free trial',
      name: 'freeTrialDays',
      desc: 'Pill on the yearly plan.',
      args: [count],
    );
  }

  /// `{count}-week free trial`
  String freeTrialWeeks(int count) {
    return Intl.message(
      '$count-week free trial',
      name: 'freeTrialWeeks',
      desc: 'Pill on the yearly plan.',
      args: [count],
    );
  }

  /// `{count}-month free trial`
  String freeTrialMonths(int count) {
    return Intl.message(
      '$count-month free trial',
      name: 'freeTrialMonths',
      desc: 'Pill on the yearly plan.',
      args: [count],
    );
  }

  /// `{count}-year free trial`
  String freeTrialYears(int count) {
    return Intl.message(
      '$count-year free trial',
      name: 'freeTrialYears',
      desc: 'Pill on the yearly plan.',
      args: [count],
    );
  }

  /// `Back`
  String get back {
    return Intl.message('Back', name: 'back', desc: 'Back button.', args: []);
  }

  /// `Your Pro preview has ended. Keep every Pro feature with {proName}.`
  String proPreviewEndedSubtitle(String proName) {
    return Intl.message(
      'Your Pro preview has ended. Keep every Pro feature with $proName.',
      name: 'proPreviewEndedSubtitle',
      desc: 'Pro page subtitle after the free preview ended. proName: "Zappit Pro".',
      args: [proName],
    );
  }

  /// `Unleash the full power of your remote.`
  String get proSubtitle {
    return Intl.message(
      'Unleash the full power of your remote.',
      name: 'proSubtitle',
      desc: 'Pro page subtitle.',
      args: [],
    );
  }

  /// `Your free Pro preview is active until {date}. Subscribe before it ends to seamlessly keep all Pro features.`
  String proPreviewActiveBanner(String date) {
    return Intl.message(
      'Your free Pro preview is active until $date. Subscribe before it ends to seamlessly keep all Pro features.',
      name: 'proPreviewActiveBanner',
      desc: 'Pro page banner while the free preview runs. date: e.g. "Nov 19".',
      args: [date],
    );
  }

  /// `Unavailable`
  String get unavailable {
    return Intl.message(
      'Unavailable',
      name: 'unavailable',
      desc: 'Pro page when no plan can be loaded.',
      args: [],
    );
  }

  /// `Yearly`
  String get yearly {
    return Intl.message('Yearly', name: 'yearly', desc: 'Plan name.', args: []);
  }

  /// `Monthly`
  String get monthly {
    return Intl.message(
      'Monthly',
      name: 'monthly',
      desc: 'Plan name.',
      args: [],
    );
  }

  /// `Just {price}/mo`
  String justPerMonth(String price) {
    return Intl.message(
      'Just $price/mo',
      name: 'justPerMonth',
      desc: 'Yearly plan: its price per month. price: e.g. "\$2.50".',
      args: [price],
    );
  }

  /// `Starts with a {count}-day free trial, then {price}/year.`
  String trialTermsDays(int count, String price) {
    return Intl.message(
      'Starts with a $count-day free trial, then $price/year.',
      name: 'trialTermsDays',
      desc: 'Small print on the yearly plan.',
      args: [count, price],
    );
  }

  /// `Starts with a {count}-month free trial, then {price}/year.`
  String trialTermsMonths(int count, String price) {
    return Intl.message(
      'Starts with a $count-month free trial, then $price/year.',
      name: 'trialTermsMonths',
      desc: 'Small print on the yearly plan.',
      args: [count, price],
    );
  }

  /// `Starts with a {count}-year free trial, then {price}/year.`
  String trialTermsYears(int count, String price) {
    return Intl.message(
      'Starts with a $count-year free trial, then $price/year.',
      name: 'trialTermsYears',
      desc: 'Small print on the yearly plan.',
      args: [count, price],
    );
  }

  /// `Starts with a free trial, then {price}/year.`
  String trialTerms(String price) {
    return Intl.message(
      'Starts with a free trial, then $price/year.',
      name: 'trialTerms',
      desc: 'Small print on the yearly plan (trial length unknown).',
      args: [price],
    );
  }

  /// `{price} / year`
  String pricePerYear(String price) {
    return Intl.message(
      '$price / year',
      name: 'pricePerYear',
      desc: 'Plan price.',
      args: [price],
    );
  }

  /// `{price} / month`
  String pricePerMonth(String price) {
    return Intl.message(
      '$price / month',
      name: 'pricePerMonth',
      desc: 'Plan price.',
      args: [price],
    );
  }

  /// `Save {percent}%`
  String savePercent(int percent) {
    return Intl.message(
      'Save $percent%',
      name: 'savePercent',
      desc: 'Badge on the yearly plan.',
      args: [percent],
    );
  }

  /// `Cancel anytime in your store account.`
  String get cancelAnytime {
    return Intl.message(
      'Cancel anytime in your store account.',
      name: 'cancelAnytime',
      desc: 'Pro page note under the plans.',
      args: [],
    );
  }

  /// `Manage subscription`
  String get manageSubscription {
    return Intl.message(
      'Manage subscription',
      name: 'manageSubscription',
      desc: 'Pro page button for subscribers.',
      args: [],
    );
  }

  /// `Start free trial`
  String get startFreeTrial {
    return Intl.message(
      'Start free trial',
      name: 'startFreeTrial',
      desc: 'Pro page button.',
      args: [],
    );
  }

  /// `Subscribe`
  String get subscribe {
    return Intl.message(
      'Subscribe',
      name: 'subscribe',
      desc: 'Pro page button.',
      args: [],
    );
  }

  /// `Restore purchases`
  String get restorePurchases {
    return Intl.message(
      'Restore purchases',
      name: 'restorePurchases',
      desc: 'Pro page link.',
      args: [],
    );
  }

  /// `You're connected!`
  String get youreConnected {
    return Intl.message(
      'You\'re connected!',
      name: 'youreConnected',
      desc: 'Dialog title the first time the app connects to the browser.',
      args: [],
    );
  }

  /// `Enjoy all Zappit Pro features free for {days} days. No credit card required, no auto-charge.`
  String proPreviewStarted(int days) {
    return Intl.message(
      'Enjoy all Zappit Pro features free for $days days. No credit card required, no auto-charge.',
      name: 'proPreviewStarted',
      desc: 'Dialog message when the free Pro preview starts.',
      args: [days],
    );
  }

  /// `Got it`
  String get gotIt {
    return Intl.message(
      'Got it',
      name: 'gotIt',
      desc: 'Dialog button.',
      args: [],
    );
  }

  /// `Pro preview ends tomorrow`
  String get proPreviewEndsTomorrow {
    return Intl.message(
      'Pro preview ends tomorrow',
      name: 'proPreviewEndsTomorrow',
      desc: 'Top notice on the last day of the free preview.',
      args: [],
    );
  }

  /// `Tap to keep every Pro feature.`
  String get tapToKeepPro {
    return Intl.message(
      'Tap to keep every Pro feature.',
      name: 'tapToKeepPro',
      desc: 'Top notice message: tapping opens the Pro page.',
      args: [],
    );
  }

  /// `Your Pro preview has ended`
  String get proPreviewEndedTitle {
    return Intl.message(
      'Your Pro preview has ended',
      name: 'proPreviewEndedTitle',
      desc: 'Popup title when the free preview has ended (shown once, with the app open or on the next launch).',
      args: [],
    );
  }

  /// `Thanks for trying Zappit Pro! Subscribe to keep enjoying every Pro feature seamlessly.`
  String get proPreviewEndedMessage {
    return Intl.message(
      'Thanks for trying Zappit Pro! Subscribe to keep enjoying every Pro feature seamlessly.',
      name: 'proPreviewEndedMessage',
      desc: 'Popup message when the free preview has ended.',
      args: [],
    );
  }

  /// `Learn More`
  String get learnMore {
    return Intl.message(
      'Learn More',
      name: 'learnMore',
      desc: 'Popup button: opens the Pro page.',
      args: [],
    );
  }

  /// `Your Pro subscription has ended`
  String get proSubscriptionEnded {
    return Intl.message(
      'Your Pro subscription has ended',
      name: 'proSubscriptionEnded',
      desc: 'Top notice when the subscription ends while a Pro sheet is open.',
      args: [],
    );
  }

  /// `Purchase not activated`
  String get purchaseNotActivated {
    return Intl.message(
      'Purchase not activated',
      name: 'purchaseNotActivated',
      desc: 'Alert title.',
      args: [],
    );
  }

  /// `Your purchase went through but Pro is not active yet. Try Restore purchases.`
  String get purchaseNotActivatedMessage {
    return Intl.message(
      'Your purchase went through but Pro is not active yet. Try Restore purchases.',
      name: 'purchaseNotActivatedMessage',
      desc: 'Alert message.',
      args: [],
    );
  }

  /// `Purchase cancelled`
  String get purchaseCancelled {
    return Intl.message(
      'Purchase cancelled',
      name: 'purchaseCancelled',
      desc: 'Alert title.',
      args: [],
    );
  }

  /// `Nothing was charged. You can try again anytime.`
  String get purchaseCancelledMessage {
    return Intl.message(
      'Nothing was charged. You can try again anytime.',
      name: 'purchaseCancelledMessage',
      desc: 'Alert message.',
      args: [],
    );
  }

  /// `Payment pending`
  String get paymentPending {
    return Intl.message(
      'Payment pending',
      name: 'paymentPending',
      desc: 'Alert title.',
      args: [],
    );
  }

  /// `Pro turns on as soon as the store confirms your payment.`
  String get paymentPendingMessage {
    return Intl.message(
      'Pro turns on as soon as the store confirms your payment.',
      name: 'paymentPendingMessage',
      desc: 'Alert message.',
      args: [],
    );
  }

  /// `Purchase failed`
  String get purchaseFailed {
    return Intl.message(
      'Purchase failed',
      name: 'purchaseFailed',
      desc: 'Alert title.',
      args: [],
    );
  }

  /// `Nothing to restore`
  String get nothingToRestore {
    return Intl.message(
      'Nothing to restore',
      name: 'nothingToRestore',
      desc: 'Alert title.',
      args: [],
    );
  }

  /// `No active Zappit Pro subscription was found for this store account.`
  String get nothingToRestoreMessage {
    return Intl.message(
      'No active Zappit Pro subscription was found for this store account.',
      name: 'nothingToRestoreMessage',
      desc: 'Alert message.',
      args: [],
    );
  }

  /// `Restore failed`
  String get restoreFailed {
    return Intl.message(
      'Restore failed',
      name: 'restoreFailed',
      desc: 'Alert title.',
      args: [],
    );
  }

  /// `Check your internet connection and try again.`
  String get checkConnection {
    return Intl.message(
      'Check your internet connection and try again.',
      name: 'checkConnection',
      desc: 'Error message: no network.',
      args: [],
    );
  }

  /// `Purchases are not allowed on this device or account.`
  String get purchasesNotAllowed {
    return Intl.message(
      'Purchases are not allowed on this device or account.',
      name: 'purchasesNotAllowed',
      desc: 'Error message.',
      args: [],
    );
  }

  /// `You already own this subscription. Try Restore purchases.`
  String get alreadySubscribed {
    return Intl.message(
      'You already own this subscription. Try Restore purchases.',
      name: 'alreadySubscribed',
      desc: 'Error message.',
      args: [],
    );
  }

  /// `The store had a problem. Please try again in a moment.`
  String get storeProblem {
    return Intl.message(
      'The store had a problem. Please try again in a moment.',
      name: 'storeProblem',
      desc: 'Error message.',
      args: [],
    );
  }

  /// `Trial reminder`
  String get trialReminderTitle {
    return Intl.message(
      'Trial reminder',
      name: 'trialReminderTitle',
      desc: 'Dialog title after starting a free trial.',
      args: [],
    );
  }

  /// `Want us to remind you the day before your free trial ends, so you're never charged by surprise?`
  String get trialReminderMessage {
    return Intl.message(
      'Want us to remind you the day before your free trial ends, so you\'re never charged by surprise?',
      name: 'trialReminderMessage',
      desc: 'Dialog message.',
      args: [],
    );
  }

  /// `Remind me`
  String get remindMe {
    return Intl.message(
      'Remind me',
      name: 'remindMe',
      desc: 'Dialog button.',
      args: [],
    );
  }

  /// `No thanks`
  String get noThanks {
    return Intl.message(
      'No thanks',
      name: 'noThanks',
      desc: 'Dialog button.',
      args: [],
    );
  }

  /// `Your free trial ends tomorrow. You'll be charged {price} on {date}. If you don't want to continue, cancel your subscription before then.`
  String trialReminderBody(String price, String date) {
    return Intl.message(
      'Your free trial ends tomorrow. You\'ll be charged $price on $date. If you don\'t want to continue, cancel your subscription before then.',
      name: 'trialReminderBody',
      desc: 'Notification text. price: e.g. "\$29.99". date: e.g. "Nov 19".',
      args: [price, date],
    );
  }

  /// `Zappit Pro free trial ends soon`
  String get trialReminderNotificationTitle {
    return Intl.message(
      'Zappit Pro free trial ends soon',
      name: 'trialReminderNotificationTitle',
      desc: 'Notification title.',
      args: [],
    );
  }

  /// `Free trial reminder`
  String get trialReminderChannel {
    return Intl.message(
      'Free trial reminder',
      name: 'trialReminderChannel',
      desc: 'Android notification channel name.',
      args: [],
    );
  }

  /// `A reminder before your free trial ends`
  String get trialReminderChannelDescription {
    return Intl.message(
      'A reminder before your free trial ends',
      name: 'trialReminderChannelDescription',
      desc: 'Android notification channel description.',
      args: [],
    );
  }

  /// `Enter a link that starts with http or https`
  String get enterValidLink {
    return Intl.message(
      'Enter a link that starts with http or https',
      name: 'enterValidLink',
      desc: 'Error under the link field.',
      args: [],
    );
  }

  /// `Couldn't get the video link`
  String get couldNotGetVideoLink {
    return Intl.message(
      'Couldn\'t get the video link',
      name: 'couldNotGetVideoLink',
      desc: 'Snackbar: opening the video in the phone app failed.',
      args: [],
    );
  }

  /// `Shuffling this playlist`
  String get shufflingPlaylist {
    return Intl.message(
      'Shuffling this playlist',
      name: 'shufflingPlaylist',
      desc: 'Snackbar after turning shuffle on.',
      args: [],
    );
  }

  /// `Shuffle off`
  String get shuffleOffNotice {
    return Intl.message(
      'Shuffle off',
      name: 'shuffleOffNotice',
      desc: 'Snackbar after turning shuffle off.',
      args: [],
    );
  }

  /// `Repeating this playlist`
  String get repeatingPlaylist {
    return Intl.message(
      'Repeating this playlist',
      name: 'repeatingPlaylist',
      desc: 'Snackbar after turning playlist repeat on.',
      args: [],
    );
  }

  /// `Repeat off`
  String get repeatOffNotice {
    return Intl.message(
      'Repeat off',
      name: 'repeatOffNotice',
      desc: 'Snackbar after turning playlist repeat off.',
      args: [],
    );
  }

  /// `Season {number}`
  String seasonNumber(int number) {
    return Intl.message(
      'Season $number',
      name: 'seasonNumber',
      desc: 'Netflix season name when the site gives none.',
      args: [number],
    );
  }

  /// `The Zappit extension was updated. Reload this page to keep using all controls.`
  String get extensionUpdatedReload {
    return Intl.message(
      'The Zappit extension was updated. Reload this page to keep using all controls.',
      name: 'extensionUpdatedReload',
      desc: 'Banner on the remote when the browser tab needs a reload.',
      args: [],
    );
  }

  /// `Reload`
  String get reload {
    return Intl.message(
      'Reload',
      name: 'reload',
      desc: 'Button: reload the browser tab.',
      args: [],
    );
  }

  /// `Categories`
  String get categories {
    return Intl.message(
      'Categories',
      name: 'categories',
      desc: 'Netflix genre list: sheet title and button.',
      args: [],
    );
  }

  /// `Search categories`
  String get searchCategories {
    return Intl.message(
      'Search categories',
      name: 'searchCategories',
      desc: 'Search field hint in the Netflix Categories sheet.',
      args: [],
    );
  }

  /// `Clear`
  String get clear {
    return Intl.message(
      'Clear',
      name: 'clear',
      desc: 'Button: clear the search field.',
      args: [],
    );
  }

  /// `No categories found`
  String get noCategoriesFound {
    return Intl.message(
      'No categories found',
      name: 'noCategoriesFound',
      desc: 'Netflix Categories search found nothing.',
      args: [],
    );
  }

  /// `Chapters`
  String get chapters {
    return Intl.message(
      'Chapters',
      name: 'chapters',
      desc: 'Chapters sheet title and block title.',
      args: [],
    );
  }

  /// `Chapters can't be skipped during an ad`
  String get chaptersDuringAd {
    return Intl.message(
      'Chapters can\'t be skipped during an ad',
      name: 'chaptersDuringAd',
      desc: 'Snackbar.',
      args: [],
    );
  }

  /// `Episodes`
  String get episodes {
    return Intl.message(
      'Episodes',
      name: 'episodes',
      desc: 'Episodes sheet title and button.',
      args: [],
    );
  }

  /// `Couldn't load episodes`
  String get couldNotLoadEpisodes {
    return Intl.message(
      'Couldn\'t load episodes',
      name: 'couldNotLoadEpisodes',
      desc: 'Episodes sheet error.',
      args: [],
    );
  }

  /// `Watching`
  String get watching {
    return Intl.message(
      'Watching',
      name: 'watching',
      desc: 'Marks the episode being watched.',
      args: [],
    );
  }

  /// `{count} min`
  String minutesShort(int count) {
    return Intl.message(
      '$count min',
      name: 'minutesShort',
      desc: 'Short duration in minutes.',
      args: [count],
    );
  }

  /// `Playlist`
  String get playlist {
    return Intl.message(
      'Playlist',
      name: 'playlist',
      desc: 'Playlist sheet title (when the playlist has no name) and block title.',
      args: [],
    );
  }

  /// `Couldn't load the playlist`
  String get couldNotLoadPlaylist {
    return Intl.message(
      'Couldn\'t load the playlist',
      name: 'couldNotLoadPlaylist',
      desc: 'Playlist sheet error.',
      args: [],
    );
  }

  /// `Playing`
  String get playing {
    return Intl.message(
      'Playing',
      name: 'playing',
      desc: 'Marks the playlist video being played.',
      args: [],
    );
  }

  /// `Sleep Timer`
  String get sleepTimer {
    return Intl.message(
      'Sleep Timer',
      name: 'sleepTimer',
      desc: 'Sleep timer sheet title.',
      args: [],
    );
  }

  /// `Off`
  String get off {
    return Intl.message(
      'Off',
      name: 'off',
      desc: 'Sleep timer option: turned off.',
      args: [],
    );
  }

  /// `{count, plural, one{1 minute} other{{count} minutes}}`
  String minutesCount(int count) {
    return Intl.plural(
      count,
      one: '1 minute',
      other: '$count minutes',
      name: 'minutesCount',
      desc: 'Sleep timer option.',
      args: [count],
    );
  }

  /// `End of video`
  String get endOfVideo {
    return Intl.message(
      'End of video',
      name: 'endOfVideo',
      desc: 'Sleep timer option: stop when the video ends.',
      args: [],
    );
  }

  /// `Not available for live`
  String get notAvailableForLive {
    return Intl.message(
      'Not available for live',
      name: 'notAvailableForLive',
      desc: 'Sleep timer: "End of video" is not available for live streams (short).',
      args: [],
    );
  }

  /// `Not available for live streams`
  String get notAvailableForLiveStreams {
    return Intl.message(
      'Not available for live streams',
      name: 'notAvailableForLiveStreams',
      desc: 'Notice: "End of video" is not available for live streams.',
      args: [],
    );
  }

  /// `This video's length is unknown`
  String get videoLengthUnknown {
    return Intl.message(
      'This video\'s length is unknown',
      name: 'videoLengthUnknown',
      desc: 'Notice: "End of video" needs the video length.',
      args: [],
    );
  }

  /// `Captions`
  String get captions {
    return Intl.message(
      'Captions',
      name: 'captions',
      desc: 'Captions sheet title.',
      args: [],
    );
  }

  /// `Chapter {current}/{total}`
  String chapterPosition(int current, int total) {
    return Intl.message(
      'Chapter $current/$total',
      name: 'chapterPosition',
      desc: 'Chapter block: which chapter is playing.',
      args: [current, total],
    );
  }

  /// `Previous chapter`
  String get previousChapter {
    return Intl.message(
      'Previous chapter',
      name: 'previousChapter',
      desc: 'Accessibility label.',
      args: [],
    );
  }

  /// `Next chapter`
  String get nextChapter {
    return Intl.message(
      'Next chapter',
      name: 'nextChapter',
      desc: 'Accessibility label.',
      args: [],
    );
  }

  /// `Replay`
  String get replay {
    return Intl.message(
      'Replay',
      name: 'replay',
      desc: 'Accessibility label: play from the start.',
      args: [],
    );
  }

  /// `Back {count} seconds`
  String backSeconds(int count) {
    return Intl.message(
      'Back $count seconds',
      name: 'backSeconds',
      desc: 'Accessibility label: seek back.',
      args: [count],
    );
  }

  /// `Play`
  String get play {
    return Intl.message(
      'Play',
      name: 'play',
      desc: 'Button / accessibility label.',
      args: [],
    );
  }

  /// `Pause`
  String get pause {
    return Intl.message(
      'Pause',
      name: 'pause',
      desc: 'Accessibility label.',
      args: [],
    );
  }

  /// `Forward {count} seconds`
  String forwardSeconds(int count) {
    return Intl.message(
      'Forward $count seconds',
      name: 'forwardSeconds',
      desc: 'Accessibility label: seek forward.',
      args: [count],
    );
  }

  /// `Turn off the A-B loop first`
  String get turnOffAbFirst {
    return Intl.message(
      'Turn off the A-B loop first',
      name: 'turnOffAbFirst',
      desc: 'Snackbar: the full loop is blocked while an A-B loop runs.',
      args: [],
    );
  }

  /// `Not available during an ad`
  String get notAvailableDuringAd {
    return Intl.message(
      'Not available during an ad',
      name: 'notAvailableDuringAd',
      desc: 'Snackbar.',
      args: [],
    );
  }

  /// `Not available for photo posts`
  String get notAvailableForPhotos {
    return Intl.message(
      'Not available for photo posts',
      name: 'notAvailableForPhotos',
      desc: 'Snackbar: the post is a photo, not a video.',
      args: [],
    );
  }

  /// `This live stream can't be rewound`
  String get liveCantRewind {
    return Intl.message(
      'This live stream can\'t be rewound',
      name: 'liveCantRewind',
      desc: 'Snackbar.',
      args: [],
    );
  }

  /// `A-B loop is off for live streams`
  String get abOffForLive {
    return Intl.message(
      'A-B loop is off for live streams',
      name: 'abOffForLive',
      desc: 'Snackbar.',
      args: [],
    );
  }

  /// `Can't seek in this video`
  String get cantSeekVideo {
    return Intl.message(
      'Can\'t seek in this video',
      name: 'cantSeekVideo',
      desc: 'Snackbar.',
      args: [],
    );
  }

  /// `Loop on`
  String get loopOn {
    return Intl.message(
      'Loop on',
      name: 'loopOn',
      desc: 'Accessibility label.',
      args: [],
    );
  }

  /// `Loop off`
  String get loopOff {
    return Intl.message(
      'Loop off',
      name: 'loopOff',
      desc: 'Accessibility label.',
      args: [],
    );
  }

  /// `Hide chat`
  String get hideChat {
    return Intl.message(
      'Hide chat',
      name: 'hideChat',
      desc: 'Accessibility label: live chat.',
      args: [],
    );
  }

  /// `Show chat`
  String get showChat {
    return Intl.message(
      'Show chat',
      name: 'showChat',
      desc: 'Accessibility label: live chat.',
      args: [],
    );
  }

  /// `Frame by frame`
  String get frameByFrame {
    return Intl.message(
      'Frame by frame',
      name: 'frameByFrame',
      desc: 'Accessibility label of the frame dial above the timeline (drag to step one frame at a time).',
      args: [],
    );
  }

  /// `Theater mode`
  String get theaterMode {
    return Intl.message(
      'Theater mode',
      name: 'theaterMode',
      desc: 'Accessibility label.',
      args: [],
    );
  }

  /// `Exit full screen`
  String get exitFullScreen {
    return Intl.message(
      'Exit full screen',
      name: 'exitFullScreen',
      desc: 'Accessibility label.',
      args: [],
    );
  }

  /// `Full screen`
  String get fullScreen {
    return Intl.message(
      'Full screen',
      name: 'fullScreen',
      desc: 'Accessibility label.',
      args: [],
    );
  }

  /// `Sleep timer`
  String get sleepTimerLabel {
    return Intl.message(
      'Sleep timer',
      name: 'sleepTimerLabel',
      desc: 'Accessibility label of the sleep timer button.',
      args: [],
    );
  }

  /// `Loop start`
  String get loopStart {
    return Intl.message(
      'Loop start',
      name: 'loopStart',
      desc: 'Accessibility label: A-B loop start point.',
      args: [],
    );
  }

  /// `Loop end`
  String get loopEnd {
    return Intl.message(
      'Loop end',
      name: 'loopEnd',
      desc: 'Accessibility label: A-B loop end point.',
      args: [],
    );
  }

  /// `Next video`
  String get nextVideo {
    return Intl.message(
      'Next video',
      name: 'nextVideo',
      desc: 'Accessibility label.',
      args: [],
    );
  }

  /// `Previous video`
  String get previousVideo {
    return Intl.message(
      'Previous video',
      name: 'previousVideo',
      desc: 'Accessibility label.',
      args: [],
    );
  }

  /// `This is the last video in the playlist`
  String get lastVideoInPlaylist {
    return Intl.message(
      'This is the last video in the playlist',
      name: 'lastVideoInPlaylist',
      desc: 'Snackbar.',
      args: [],
    );
  }

  /// `Shuffle on`
  String get shuffleOn {
    return Intl.message(
      'Shuffle on',
      name: 'shuffleOn',
      desc: 'Accessibility label.',
      args: [],
    );
  }

  /// `Shuffle off`
  String get shuffleOff {
    return Intl.message(
      'Shuffle off',
      name: 'shuffleOff',
      desc: 'Accessibility label.',
      args: [],
    );
  }

  /// `This playlist keeps playing new videos endlessly, so it can't be shuffled`
  String get mixCantShuffle {
    return Intl.message(
      'This playlist keeps playing new videos endlessly, so it can\'t be shuffled',
      name: 'mixCantShuffle',
      desc: 'Snackbar: a YouTube mix.',
      args: [],
    );
  }

  /// `This playlist can't be shuffled`
  String get playlistCantShuffle {
    return Intl.message(
      'This playlist can\'t be shuffled',
      name: 'playlistCantShuffle',
      desc: 'Snackbar.',
      args: [],
    );
  }

  /// `Repeat on`
  String get repeatOn {
    return Intl.message(
      'Repeat on',
      name: 'repeatOn',
      desc: 'Accessibility label: playlist repeat.',
      args: [],
    );
  }

  /// `Repeat off`
  String get repeatOff {
    return Intl.message(
      'Repeat off',
      name: 'repeatOff',
      desc: 'Accessibility label: playlist repeat.',
      args: [],
    );
  }

  /// `This playlist keeps playing new videos endlessly, so it can't be repeated`
  String get mixCantRepeat {
    return Intl.message(
      'This playlist keeps playing new videos endlessly, so it can\'t be repeated',
      name: 'mixCantRepeat',
      desc: 'Snackbar: a YouTube mix.',
      args: [],
    );
  }

  /// `This playlist can't be repeated`
  String get playlistCantRepeat {
    return Intl.message(
      'This playlist can\'t be repeated',
      name: 'playlistCantRepeat',
      desc: 'Snackbar.',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: 'Button / accessibility label: the site home page.',
      args: [],
    );
  }

  /// `There is no previous page to go back to`
  String get noPreviousPage {
    return Intl.message(
      'There is no previous page to go back to',
      name: 'noPreviousPage',
      desc: 'Snackbar.',
      args: [],
    );
  }

  /// `Captions on`
  String get captionsOn {
    return Intl.message(
      'Captions on',
      name: 'captionsOn',
      desc: 'Accessibility label.',
      args: [],
    );
  }

  /// `Captions off`
  String get captionsOff {
    return Intl.message(
      'Captions off',
      name: 'captionsOff',
      desc: 'Accessibility label.',
      args: [],
    );
  }

  /// `Caption language`
  String get captionLanguage {
    return Intl.message(
      'Caption language',
      name: 'captionLanguage',
      desc: 'Accessibility label.',
      args: [],
    );
  }

  /// `Smaller captions`
  String get smallerCaptions {
    return Intl.message(
      'Smaller captions',
      name: 'smallerCaptions',
      desc: 'Accessibility label.',
      args: [],
    );
  }

  /// `Larger captions`
  String get largerCaptions {
    return Intl.message(
      'Larger captions',
      name: 'largerCaptions',
      desc: 'Accessibility label.',
      args: [],
    );
  }

  /// `Next episode`
  String get nextEpisode {
    return Intl.message(
      'Next episode',
      name: 'nextEpisode',
      desc: 'Button.',
      args: [],
    );
  }

  /// `No next episode`
  String get noNextEpisode {
    return Intl.message(
      'No next episode',
      name: 'noNextEpisode',
      desc: 'Snackbar.',
      args: [],
    );
  }

  /// `Skip Ad`
  String get skipAd {
    return Intl.message('Skip Ad', name: 'skipAd', desc: 'Button.', args: []);
  }

  /// `Skip Intro`
  String get skipIntro {
    return Intl.message(
      'Skip Intro',
      name: 'skipIntro',
      desc: 'Button.',
      args: [],
    );
  }

  /// `This video has no subtitles`
  String get noSubtitles {
    return Intl.message(
      'This video has no subtitles',
      name: 'noSubtitles',
      desc: 'Snackbar.',
      args: [],
    );
  }

  /// `Back to 1x. Free users can use this speed for {count} seconds.`
  String speedTrialOver(int count) {
    return Intl.message(
      'Back to 1x. Free users can use this speed for $count seconds.',
      name: 'speedTrialOver',
      desc: 'Snackbar when the free speed trial ends.',
      args: [count],
    );
  }

  /// `{count}s`
  String secondsShort(int count) {
    return Intl.message(
      '${count}s',
      name: 'secondsShort',
      desc: 'Seconds left of a free trial, e.g. "7s".',
      args: [count],
    );
  }

  /// `Voice Boost is off. Free users can use Voice Boost for {count} seconds.`
  String voiceBoostTrialOver(int count) {
    return Intl.message(
      'Voice Boost is off. Free users can use Voice Boost for $count seconds.',
      name: 'voiceBoostTrialOver',
      desc: 'Snackbar when the free Voice Boost trial ends. Voice Boost is a feature name.',
      args: [count],
    );
  }

  /// `Voice Boost trial, {count} seconds left`
  String voiceBoostTrialLeft(int count) {
    return Intl.message(
      'Voice Boost trial, $count seconds left',
      name: 'voiceBoostTrialLeft',
      desc: 'Accessibility label.',
      args: [count],
    );
  }

  /// `Voice Boost on`
  String get voiceBoostOn {
    return Intl.message(
      'Voice Boost on',
      name: 'voiceBoostOn',
      desc: 'Accessibility label.',
      args: [],
    );
  }

  /// `Voice Boost off`
  String get voiceBoostOff {
    return Intl.message(
      'Voice Boost off',
      name: 'voiceBoostOff',
      desc: 'Accessibility label.',
      args: [],
    );
  }

  /// `Voice Boost isn't available during an ad`
  String get voiceBoostDuringAd {
    return Intl.message(
      'Voice Boost isn\'t available during an ad',
      name: 'voiceBoostDuringAd',
      desc: 'Snackbar.',
      args: [],
    );
  }

  /// `This video doesn't support Voice Boost`
  String get voiceBoostUnsupported {
    return Intl.message(
      'This video doesn\'t support Voice Boost',
      name: 'voiceBoostUnsupported',
      desc: 'Snackbar.',
      args: [],
    );
  }

  /// `You're offline`
  String get youreOffline {
    return Intl.message(
      'You\'re offline',
      name: 'youreOffline',
      desc: 'Remote overlay title: the phone has no internet.',
      args: [],
    );
  }

  /// `Can't reach a browser`
  String get cantReachBrowser {
    return Intl.message(
      'Can\'t reach a browser',
      name: 'cantReachBrowser',
      desc: 'Remote overlay title: no browser is connected.',
      args: [],
    );
  }

  /// `Check your internet connection. Zappit reconnects on its own.`
  String get offlineMessage {
    return Intl.message(
      'Check your internet connection. Zappit reconnects on its own.',
      name: 'offlineMessage',
      desc: 'Remote overlay message when offline.',
      args: [],
    );
  }

  /// `Open Chrome or Safari on your computer and make sure the Zappit extension is signed in to this account.`
  String get noBrowserMessage {
    return Intl.message(
      'Open Chrome or Safari on your computer and make sure the Zappit extension is signed in to this account.',
      name: 'noBrowserMessage',
      desc: 'Remote overlay message when no browser is connected.',
      args: [],
    );
  }

  /// `Choose a browser`
  String get chooseBrowser {
    return Intl.message(
      'Choose a browser',
      name: 'chooseBrowser',
      desc: 'Title: pick which browser the remote controls.',
      args: [],
    );
  }

  /// `Multiple browsers are online. Pick the one this remote should control.`
  String get multipleBrowsersMessage {
    return Intl.message(
      'Multiple browsers are online. Pick the one this remote should control.',
      name: 'multipleBrowsersMessage',
      desc: 'Message under "Choose a browser".',
      args: [],
    );
  }

  /// `Up next · plays in {count} s`
  String upNextCountdown(int count) {
    return Intl.message(
      'Up next · plays in $count s',
      name: 'upNextCountdown',
      desc: 'YouTube autoplay countdown.',
      args: [count],
    );
  }

  /// `Up next`
  String get upNext {
    return Intl.message(
      'Up next',
      name: 'upNext',
      desc: 'YouTube autoplay: the next video.',
      args: [],
    );
  }

  /// `Play now`
  String get playNow {
    return Intl.message(
      'Play now',
      name: 'playNow',
      desc: 'Button: play the next video now.',
      args: [],
    );
  }

  /// `Choose next video`
  String get chooseNextVideo {
    return Intl.message(
      'Choose next video',
      name: 'chooseNextVideo',
      desc: 'Title over the end-screen video picker.',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: 'Button / accessibility label.',
      args: [],
    );
  }

  /// `YouTube home`
  String get youtubeHome {
    return Intl.message(
      'YouTube home',
      name: 'youtubeHome',
      desc: 'Accessibility label: go to the YouTube home page.',
      args: [],
    );
  }

  /// `Watch again`
  String get watchAgain {
    return Intl.message(
      'Watch again',
      name: 'watchAgain',
      desc: 'Accessibility label: play the ended video again.',
      args: [],
    );
  }

  /// `your browser`
  String get yourBrowser {
    return Intl.message(
      'your browser',
      name: 'yourBrowser',
      desc: 'Used in a sentence when the browser has no name: "It opens in a new tab in your browser."',
      args: [],
    );
  }

  /// `Open a link`
  String get openALink {
    return Intl.message(
      'Open a link',
      name: 'openALink',
      desc: 'Title of the link panel.',
      args: [],
    );
  }

  /// `Paste a video link`
  String get pasteVideoLink {
    return Intl.message(
      'Paste a video link',
      name: 'pasteVideoLink',
      desc: 'Hint in the link field.',
      args: [],
    );
  }

  /// `Paste`
  String get paste {
    return Intl.message(
      'Paste',
      name: 'paste',
      desc: 'Accessibility label: paste from the clipboard.',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: 'Button: send the link to the browser.',
      args: [],
    );
  }

  /// `Paste a video link and tap Send. It opens in a new tab in your browser.`
  String get linkPanelHint {
    return Intl.message(
      'Paste a video link and tap Send. It opens in a new tab in your browser.',
      name: 'linkPanelHint',
      desc: 'Hint under the link field in the link panel.',
      args: [],
    );
  }

  /// `There are no videos on this page.`
  String get noVideosOnPage {
    return Intl.message(
      'There are no videos on this page.',
      name: 'noVideosOnPage',
      desc: 'D-pad screen: the browse page has no videos.',
      args: [],
    );
  }

  /// `Left`
  String get left {
    return Intl.message(
      'Left',
      name: 'left',
      desc: 'Accessibility label: d-pad.',
      args: [],
    );
  }

  /// `Up`
  String get up {
    return Intl.message(
      'Up',
      name: 'up',
      desc: 'Accessibility label: d-pad.',
      args: [],
    );
  }

  /// `Down`
  String get down {
    return Intl.message(
      'Down',
      name: 'down',
      desc: 'Accessibility label: d-pad.',
      args: [],
    );
  }

  /// `Right`
  String get right {
    return Intl.message(
      'Right',
      name: 'right',
      desc: 'Accessibility label: d-pad.',
      args: [],
    );
  }

  /// `Select`
  String get select {
    return Intl.message(
      'Select',
      name: 'select',
      desc: 'D-pad button on the Netflix profile picker.',
      args: [],
    );
  }

  /// `Select a video in your browser`
  String get selectVideoInBrowser {
    return Intl.message(
      'Select a video in your browser',
      name: 'selectVideoInBrowser',
      desc: 'Remote screen on a browse page with nothing playing.',
      args: [],
    );
  }

  /// `Nothing playing`
  String get nothingPlaying {
    return Intl.message(
      'Nothing playing',
      name: 'nothingPlaying',
      desc: 'Remote screen title when no video is playing.',
      args: [],
    );
  }

  /// `No video is playing right now. Pick another tab, or paste a video link.`
  String get nothingPlayingMessage {
    return Intl.message(
      'No video is playing right now. Pick another tab, or paste a video link.',
      name: 'nothingPlayingMessage',
      desc: 'Remote screen message when no video is playing.',
      args: [],
    );
  }

  /// `Pick videos from your phone with Pro`
  String get pickVideosWithPro {
    return Intl.message(
      'Pick videos from your phone with Pro',
      name: 'pickVideosWithPro',
      desc: 'Upsell button for free users on browse pages.',
      args: [],
    );
  }

  /// `Pick a tab`
  String get pickATab {
    return Intl.message(
      'Pick a tab',
      name: 'pickATab',
      desc: 'Button: go to the Tabs screen.',
      args: [],
    );
  }

  /// `Paste a link`
  String get pasteALink {
    return Intl.message(
      'Paste a link',
      name: 'pasteALink',
      desc: 'Button: open the link panel.',
      args: [],
    );
  }

  /// `Open one of these to start`
  String get openOneToStart {
    return Intl.message(
      'Open one of these to start',
      name: 'openOneToStart',
      desc: 'Title over the site shortcuts.',
      args: [],
    );
  }

  /// `Open {site}`
  String openSite(String site) {
    return Intl.message(
      'Open $site',
      name: 'openSite',
      desc: 'Accessibility label of a site shortcut. site: e.g. "YouTube".',
      args: [site],
    );
  }

  /// `Remote settings`
  String get remoteSettings {
    return Intl.message(
      'Remote settings',
      name: 'remoteSettings',
      desc: 'Accessibility label.',
      args: [],
    );
  }

  /// `Play in app`
  String get playInApp {
    return Intl.message(
      'Play in app',
      name: 'playInApp',
      desc: 'Accessibility label: open the video in the phone app.',
      args: [],
    );
  }

  /// `Connect to a browser first`
  String get connectBrowserFirst {
    return Intl.message(
      'Connect to a browser first',
      name: 'connectBrowserFirst',
      desc: 'Snackbar.',
      args: [],
    );
  }

  /// `Play a video in the browser first`
  String get playVideoFirst {
    return Intl.message(
      'Play a video in the browser first',
      name: 'playVideoFirst',
      desc: 'Snackbar.',
      args: [],
    );
  }

  /// `This video can't be opened on the phone`
  String get cantOpenOnPhone {
    return Intl.message(
      'This video can\'t be opened on the phone',
      name: 'cantOpenOnPhone',
      desc: 'Snackbar.',
      args: [],
    );
  }

  /// `Open a link in the browser`
  String get openLinkInBrowser {
    return Intl.message(
      'Open a link in the browser',
      name: 'openLinkInBrowser',
      desc: 'Accessibility label.',
      args: [],
    );
  }

  /// `Connected`
  String get connected {
    return Intl.message(
      'Connected',
      name: 'connected',
      desc: 'Connection status.',
      args: [],
    );
  }

  /// `Not connected`
  String get notConnected {
    return Intl.message(
      'Not connected',
      name: 'notConnected',
      desc: 'Connection status.',
      args: [],
    );
  }

  /// `No browser selected`
  String get noBrowserSelected {
    return Intl.message(
      'No browser selected',
      name: 'noBrowserSelected',
      desc: 'Connection status detail.',
      args: [],
    );
  }

  /// `No browser online`
  String get noBrowserOnlineShort {
    return Intl.message(
      'No browser online',
      name: 'noBrowserOnlineShort',
      desc: 'Connection status detail.',
      args: [],
    );
  }

  /// `Offline`
  String get offline {
    return Intl.message(
      'Offline',
      name: 'offline',
      desc: 'Connection status detail.',
      args: [],
    );
  }

  /// `Next tab`
  String get nextTab {
    return Intl.message(
      'Next tab',
      name: 'nextTab',
      desc: 'Accessibility label.',
      args: [],
    );
  }

  /// `Previous tab`
  String get previousTab {
    return Intl.message(
      'Previous tab',
      name: 'previousTab',
      desc: 'Accessibility label.',
      args: [],
    );
  }

  /// `No more tabs`
  String get noMoreTabs {
    return Intl.message(
      'No more tabs',
      name: 'noMoreTabs',
      desc: 'Snackbar.',
      args: [],
    );
  }

  /// `Shorts`
  String get ytShorts {
    return Intl.message(
      'Shorts',
      name: 'ytShorts',
      desc: 'YouTube menu: Shorts (use YouTube\'s own name in your language).',
      args: [],
    );
  }

  /// `Subscriptions`
  String get ytSubscriptions {
    return Intl.message(
      'Subscriptions',
      name: 'ytSubscriptions',
      desc: 'YouTube menu (use YouTube\'s own name in your language).',
      args: [],
    );
  }

  /// `You`
  String get ytYou {
    return Intl.message(
      'You',
      name: 'ytYou',
      desc: 'YouTube menu: the "You" section (use YouTube\'s own name).',
      args: [],
    );
  }

  /// `Explore`
  String get ytExplore {
    return Intl.message(
      'Explore',
      name: 'ytExplore',
      desc: 'YouTube menu: the "Explore" section (use YouTube\'s own name).',
      args: [],
    );
  }

  /// `History`
  String get ytHistory {
    return Intl.message(
      'History',
      name: 'ytHistory',
      desc: 'YouTube page (use YouTube\'s own name).',
      args: [],
    );
  }

  /// `Playlists`
  String get ytPlaylists {
    return Intl.message(
      'Playlists',
      name: 'ytPlaylists',
      desc: 'YouTube page (use YouTube\'s own name).',
      args: [],
    );
  }

  /// `Watch Later`
  String get ytWatchLater {
    return Intl.message(
      'Watch Later',
      name: 'ytWatchLater',
      desc: 'YouTube page (use YouTube\'s own name).',
      args: [],
    );
  }

  /// `Liked Videos`
  String get ytLikedVideos {
    return Intl.message(
      'Liked Videos',
      name: 'ytLikedVideos',
      desc: 'YouTube page (use YouTube\'s own name).',
      args: [],
    );
  }

  /// `Downloads`
  String get ytDownloads {
    return Intl.message(
      'Downloads',
      name: 'ytDownloads',
      desc: 'YouTube page (use YouTube\'s own name).',
      args: [],
    );
  }

  /// `Music`
  String get ytMusic {
    return Intl.message(
      'Music',
      name: 'ytMusic',
      desc: 'YouTube page (use YouTube\'s own name).',
      args: [],
    );
  }

  /// `Hype`
  String get ytHype {
    return Intl.message(
      'Hype',
      name: 'ytHype',
      desc: 'YouTube page (use YouTube\'s own name).',
      args: [],
    );
  }

  /// `Live`
  String get ytLive {
    return Intl.message(
      'Live',
      name: 'ytLive',
      desc: 'YouTube page (use YouTube\'s own name).',
      args: [],
    );
  }

  /// `Gaming`
  String get ytGaming {
    return Intl.message(
      'Gaming',
      name: 'ytGaming',
      desc: 'YouTube page (use YouTube\'s own name).',
      args: [],
    );
  }

  /// `Courses`
  String get ytCourses {
    return Intl.message(
      'Courses',
      name: 'ytCourses',
      desc: 'YouTube page (use YouTube\'s own name).',
      args: [],
    );
  }

  /// `Podcasts`
  String get ytPodcasts {
    return Intl.message(
      'Podcasts',
      name: 'ytPodcasts',
      desc: 'YouTube page (use YouTube\'s own name).',
      args: [],
    );
  }

  /// `Memberships`
  String get ytMemberships {
    return Intl.message(
      'Memberships',
      name: 'ytMemberships',
      desc: 'YouTube page (use YouTube\'s own name).',
      args: [],
    );
  }

  /// `Videos`
  String get ytVideos {
    return Intl.message(
      'Videos',
      name: 'ytVideos',
      desc: 'YouTube channel tab (use YouTube\'s own name).',
      args: [],
    );
  }

  /// `Channel: {name}`
  String channelLabel(String name) {
    return Intl.message(
      'Channel: $name',
      name: 'channelLabel',
      desc: 'Accessibility label of the YouTube channel button.',
      args: [name],
    );
  }

  /// `Full power unlocked`
  String get fullPowerUnlocked {
    return Intl.message(
      'Full power unlocked',
      name: 'fullPowerUnlocked',
      desc: 'More tab Pro banner for subscribers.',
      args: [],
    );
  }

  /// `Pro preview until {date}`
  String proPreviewUntil(String date) {
    return Intl.message(
      'Pro preview until $date',
      name: 'proPreviewUntil',
      desc: 'More tab Pro banner during the free preview. date: e.g. "Nov 19".',
      args: [date],
    );
  }

  /// `Unleash the full power of your remote`
  String get proBannerSubtitle {
    return Intl.message(
      'Unleash the full power of your remote',
      name: 'proBannerSubtitle',
      desc: 'More tab Pro banner for free users.',
      args: [],
    );
  }

  /// `View`
  String get view {
    return Intl.message(
      'View',
      name: 'view',
      desc: 'Pro banner button for subscribers.',
      args: [],
    );
  }

  /// `Upgrade`
  String get upgrade {
    return Intl.message(
      'Upgrade',
      name: 'upgrade',
      desc: 'Pro banner button for free users.',
      args: [],
    );
  }

  /// `Supported sites`
  String get supportedSites {
    return Intl.message(
      'Supported sites',
      name: 'supportedSites',
      desc: 'More tab row and page title.',
      args: [],
    );
  }

  /// `Support`
  String get support {
    return Intl.message(
      'Support',
      name: 'support',
      desc: 'More tab section title.',
      args: [],
    );
  }

  /// `Tutorial`
  String get tutorial {
    return Intl.message(
      'Tutorial',
      name: 'tutorial',
      desc: 'More tab row and page title.',
      args: [],
    );
  }

  /// `Contact us`
  String get contactUs {
    return Intl.message(
      'Contact us',
      name: 'contactUs',
      desc: 'More tab row.',
      args: [],
    );
  }

  /// `Tell a friend`
  String get tellAFriend {
    return Intl.message(
      'Tell a friend',
      name: 'tellAFriend',
      desc: 'More tab row.',
      args: [],
    );
  }

  /// `Rate Zappit`
  String get rateZappit {
    return Intl.message(
      'Rate Zappit',
      name: 'rateZappit',
      desc: 'More tab row.',
      args: [],
    );
  }

  /// `Account`
  String get account {
    return Intl.message(
      'Account',
      name: 'account',
      desc: 'More tab section title.',
      args: [],
    );
  }

  /// `Delete account`
  String get deleteAccountMenu {
    return Intl.message(
      'Delete account',
      name: 'deleteAccountMenu',
      desc: 'More tab row.',
      args: [],
    );
  }

  /// `Please don't delete the info below.`
  String get contactUsKeepInfo {
    return Intl.message(
      'Please don\'t delete the info below.',
      name: 'contactUsKeepInfo',
      desc: 'Support email body, above the app version and device info.',
      args: [],
    );
  }

  /// `General Settings`
  String get generalSettings {
    return Intl.message(
      'General Settings',
      name: 'generalSettings',
      desc: 'Remote settings section.',
      args: [],
    );
  }

  /// `Long Press Speed`
  String get longPressSpeed {
    return Intl.message(
      'Long Press Speed',
      name: 'longPressSpeed',
      desc: 'Remote settings: speed while holding Play.',
      args: [],
    );
  }

  /// `A-B Loop Count`
  String get abLoopCount {
    return Intl.message(
      'A-B Loop Count',
      name: 'abLoopCount',
      desc: 'Remote settings: how many times the A-B loop repeats.',
      args: [],
    );
  }

  /// `Seek Interval`
  String get seekInterval {
    return Intl.message(
      'Seek Interval',
      name: 'seekInterval',
      desc: 'Remote settings: seconds per skip.',
      args: [],
    );
  }

  /// `{site} Settings`
  String siteSettings(String site) {
    return Intl.message(
      '$site Settings',
      name: 'siteSettings',
      desc:
          'Remote settings section for the current site. site: e.g. "YouTube".',
      args: [site],
    );
  }

  /// `No settings for this site yet.`
  String get noSiteSettings {
    return Intl.message(
      'No settings for this site yet.',
      name: 'noSiteSettings',
      desc: 'Remote settings: the site has no settings.',
      args: [],
    );
  }

  /// `The quality didn't change`
  String get qualityNotChanged {
    return Intl.message(
      'The quality didn\'t change',
      name: 'qualityNotChanged',
      desc: 'Snackbar.',
      args: [],
    );
  }

  /// `Video Quality`
  String get videoQuality {
    return Intl.message(
      'Video Quality',
      name: 'videoQuality',
      desc: 'Remote settings: YouTube video quality.',
      args: [],
    );
  }

  /// `Couldn't read the quality options from the page.`
  String get couldNotReadQuality {
    return Intl.message(
      'Couldn\'t read the quality options from the page.',
      name: 'couldNotReadQuality',
      desc: 'Remote settings error.',
      args: [],
    );
  }

  /// `No link found in what you shared`
  String get noLinkInShare {
    return Intl.message(
      'No link found in what you shared',
      name: 'noLinkInShare',
      desc: 'Snackbar after sharing text without a link to the app.',
      args: [],
    );
  }

  /// `Waiting for your browser…`
  String get waitingForBrowser {
    return Intl.message(
      'Waiting for your browser…',
      name: 'waitingForBrowser',
      desc: 'Snackbar: a shared link waits for the browser to connect.',
      args: [],
    );
  }

  /// `Couldn't open the link`
  String get couldNotOpenLink {
    return Intl.message(
      'Couldn\'t open the link',
      name: 'couldNotOpenLink',
      desc: 'Top notice title.',
      args: [],
    );
  }

  /// `No browser is connected. Open your browser with Zappit signed in and try again.`
  String get noBrowserConnectedShare {
    return Intl.message(
      'No browser is connected. Open your browser with Zappit signed in and try again.',
      name: 'noBrowserConnectedShare',
      desc: 'Top notice message: a shared link could not be sent.',
      args: [],
    );
  }

  /// `Opening in {browser}…`
  String openingIn(String browser) {
    return Intl.message(
      'Opening in $browser…',
      name: 'openingIn',
      desc: 'Snackbar while sending a shared link. browser: e.g. "Chrome · Mac" or "your browser".',
      args: [browser],
    );
  }

  /// `Opened in {browser}`
  String openedIn(String browser) {
    return Intl.message(
      'Opened in $browser',
      name: 'openedIn',
      desc: 'Snackbar after sending a shared link. browser: e.g. "Chrome · Mac" or "your browser".',
      args: [browser],
    );
  }

  /// `Remote`
  String get tabRemote {
    return Intl.message(
      'Remote',
      name: 'tabRemote',
      desc: 'Bottom tab.',
      args: [],
    );
  }

  /// `Tabs`
  String get tabTabs {
    return Intl.message(
      'Tabs',
      name: 'tabTabs',
      desc: 'Bottom tab: the browser tabs list.',
      args: [],
    );
  }

  /// `More`
  String get tabMore {
    return Intl.message('More', name: 'tabMore', desc: 'Bottom tab.', args: []);
  }

  /// `These sites get a dedicated remote built for them. On any other site, Zappit works as a standard remote.`
  String get supportedSitesIntro {
    return Intl.message(
      'These sites get a dedicated remote built for them. On any other site, Zappit works as a standard remote.',
      name: 'supportedSitesIntro',
      desc: 'Supported sites page intro.',
      args: [],
    );
  }

  /// `Reorder {site}`
  String reorderSite(String site) {
    return Intl.message(
      'Reorder $site',
      name: 'reorderSite',
      desc:
          'Accessibility label of a site\'s drag handle. site: e.g. "YouTube".',
      args: [site],
    );
  }

  /// `No open tabs`
  String get noOpenTabs {
    return Intl.message(
      'No open tabs',
      name: 'noOpenTabs',
      desc: 'Tabs screen: the browser has no tabs.',
      args: [],
    );
  }

  /// `Window {number}`
  String windowNumber(int number) {
    return Intl.message(
      'Window $number',
      name: 'windowNumber',
      desc: 'Tabs screen section: a browser window.',
      args: [number],
    );
  }

  /// `Untitled`
  String get untitled {
    return Intl.message(
      'Untitled',
      name: 'untitled',
      desc: 'A browser tab with no title.',
      args: [],
    );
  }

  /// `No browser`
  String get noBrowser {
    return Intl.message(
      'No browser',
      name: 'noBrowser',
      desc: 'Tabs screen title when no browser is online.',
      args: [],
    );
  }

  /// `Pick the browser this remote should control to see its tabs.`
  String get pickBrowserForTabs {
    return Intl.message(
      'Pick the browser this remote should control to see its tabs.',
      name: 'pickBrowserForTabs',
      desc: 'Tabs screen message.',
      args: [],
    );
  }

  /// `Open your browser with the Zappit extension signed in to see its tabs.`
  String get openBrowserForTabs {
    return Intl.message(
      'Open your browser with the Zappit extension signed in to see its tabs.',
      name: 'openBrowserForTabs',
      desc: 'Tabs screen message.',
      args: [],
    );
  }

  /// `Can't load this page`
  String get cantLoadPage {
    return Intl.message(
      'Can\'t load this page',
      name: 'cantLoadPage',
      desc: 'Web page error title.',
      args: [],
    );
  }

  /// `Check your connection and try again.`
  String get checkConnectionShort {
    return Intl.message(
      'Check your connection and try again.',
      name: 'checkConnectionShort',
      desc: 'Web page error message.',
      args: [],
    );
  }

  /// `Try again`
  String get tryAgain {
    return Intl.message(
      'Try again',
      name: 'tryAgain',
      desc: 'Button.',
      args: [],
    );
  }

  /// `AD`
  String get adBadge {
    return Intl.message(
      'AD',
      name: 'adBadge',
      desc: 'Badge on the timeline while an ad plays. Keep it very short.',
      args: [],
    );
  }

  /// `LIVE`
  String get liveBadge {
    return Intl.message(
      'LIVE',
      name: 'liveBadge',
      desc: 'Badge on the timeline for a live stream. Keep it very short.',
      args: [],
    );
  }

  /// `Unmute`
  String get unmute {
    return Intl.message(
      'Unmute',
      name: 'unmute',
      desc: 'Accessibility label.',
      args: [],
    );
  }

  /// `Mute`
  String get mute {
    return Intl.message(
      'Mute',
      name: 'mute',
      desc: 'Accessibility label.',
      args: [],
    );
  }

  /// `Volume down`
  String get volumeDown {
    return Intl.message(
      'Volume down',
      name: 'volumeDown',
      desc: 'Accessibility label.',
      args: [],
    );
  }

  /// `Volume up`
  String get volumeUp {
    return Intl.message(
      'Volume up',
      name: 'volumeUp',
      desc: 'Accessibility label.',
      args: [],
    );
  }

  /// `Web`
  String get siteWeb {
    return Intl.message(
      'Web',
      name: 'siteWeb',
      desc: 'Name for any website other than the supported ones (YouTube, Netflix, …).',
      args: [],
    );
  }

  /// `Favorites`
  String get favorites {
    return Intl.message(
      'Favorites',
      name: 'favorites',
      desc: 'Supported sites: section of the user\'s favorite sites (shown in "Open one of these to start").',
      args: [],
    );
  }

  /// `All sites`
  String get allSites {
    return Intl.message(
      'All sites',
      name: 'allSites',
      desc: 'Supported sites: section listing every supported site, A to Z.',
      args: [],
    );
  }

  /// `Tap the star on a site to add it here.`
  String get favoritesEmptyHint {
    return Intl.message(
      'Tap the star on a site to add it here.',
      name: 'favoritesEmptyHint',
      desc: 'Supported sites: Favorites is empty.',
      args: [],
    );
  }

  /// `Touch and hold an item, then drag to reorder`
  String get reorderHint {
    return Intl.message(
      'Touch and hold an item, then drag to reorder',
      name: 'reorderHint',
      desc: 'Supported sites: hint under Favorites.',
      args: [],
    );
  }

  /// `{site} removed from Favorites`
  String removedFromFavorites(String site) {
    return Intl.message(
      '$site removed from Favorites',
      name: 'removedFromFavorites',
      desc: 'Snackbar after taking a site out of Favorites (with Undo). site: e.g. "YouTube".',
      args: [site],
    );
  }

  /// `Undo`
  String get undo {
    return Intl.message(
      'Undo',
      name: 'undo',
      desc: 'Snackbar button.',
      args: [],
    );
  }

  /// `Add {site} to Favorites`
  String addToFavorites(String site) {
    return Intl.message(
      'Add $site to Favorites',
      name: 'addToFavorites',
      desc: 'Accessibility label of the star. site: e.g. "YouTube".',
      args: [site],
    );
  }

  /// `Remove {site} from Favorites`
  String removeFromFavorites(String site) {
    return Intl.message(
      'Remove $site from Favorites',
      name: 'removeFromFavorites',
      desc: 'Accessibility label of the filled star. site: e.g. "YouTube".',
      args: [site],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[Locale.fromSubtags(languageCode: 'en')];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
