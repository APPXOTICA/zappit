// Web (zappit.tv). Keep the paths (CLAUDE.md URLs). `?embed=1` = the in-app
// web view layout (no site header or footer).
const termsOfServiceUrl = 'https://zappit.tv/terms';
const privacyPolicyUrl = 'https://zappit.tv/privacy';
const getExtensionUrl = 'https://zappit.tv/get';
const tutorialUrl = 'https://zappit.tv/guide?embed=1';
const faqUrl = 'https://zappit.tv/faq?embed=1';
const voiceControlHelpUrl = 'https://zappit.tv/voice-control';

/// FAQ entry opened by an in-app notice: `faqEntryUrl('site-access')`. The
/// page opens that entry and scrolls to it. Anchor ids are fixed on the site.
String faqEntryUrl(String id) => '$faqUrl#$id';

/// FAQ entry: why a site plays without sound (Chrome's autoplay policy).
final soundBlockedHelpUrl = faqEntryUrl('sound-blocked');

// Sharing and store
const appStoreId = '6823437118';

// Analytics
const postHogApiKey = 'phc_usorcyR7jf7RQGrgFmHFKmPbSs65kyBs2aEpsKziXdiQ';
const postHogHost = 'https://us.i.posthog.com';

const webClientId = '343141943174-t3quj2kurd4pckok77h2drsmhdgi04sf.apps.googleusercontent.com';
const iosClientId = '343141943174-6fjounjr1598jjtp1c5dugoki3psjao0.apps.googleusercontent.com';

// Cloud Functions
const region = 'us-central1';


// RevenueCat
// Public SDK keys, one per store app. Sandbox purchases use the same keys (the store decides).
const revenueCatAppleApiKey = 'appl_TRBccoHmayIlvxSVHsfNJkWqKcn';
const revenueCatGoogleApiKey = 'goog_OuZcZfMtcQYQUGZvvgTTHWGFotW';
