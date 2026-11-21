// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a tr locale. All the
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
  String get localeName => 'tr';

  static String m0(site) => "${site} Favorilere ekle";

  static String m1(count) => "${count} saniye geri";

  static String m2(browser) =>
      "${browser} yanıt vermedi. Tarayıcının açık olduğundan emin olun.";

  static String m3(browsers) => "${browsers} ile bağlantı kesildi";

  static String m4(name) => "Kanal: ${name}";

  static String m5(current, total) => "Bölüm ${current}/${total}";

  static String m6(browser) => "${browser} ile bağlandı";

  static String m7(count) => "${count} saniye ileri";

  static String m8(count) => "${count} gün ücretsiz deneme";

  static String m9(count) => "${count} ay ücretsiz deneme";

  static String m10(count) => "${count} hafta ücretsiz deneme";

  static String m11(count) => "${count} yıl ücretsiz deneme";

  static String m12(price) => "Ayda yalnızca ${price}";

  static String m13(count) =>
      "${Intl.plural(count, one: '${count} dakika', other: '${count} dakika')}";

  static String m14(count) => "${count} dk";

  static String m15(time) => "${time} sonra yeni kod";

  static String m16(url) =>
      "Zappit uzantısını yüklemek için bilgisayarınızın tarayıcısında ${url} adresini açın.";

  static String m17(current, total) => "${current} / ${total}";

  static String m18(current, total) => "Adım ${current}/${total}";

  static String m19(site) => "${site} aç";

  static String m20(browser) => "Açıldı: ${browser}";

  static String m21(browser) => "Açılıyor: ${browser}…";

  static String m22(price) => "${price} / ay";

  static String m23(price) => "${price} / yıl";

  static String m24(date) =>
      "Ücretsiz Pro önizlemeniz ${date} tarihine kadar geçerli. Bitmeden abone olursanız tüm Pro özelliklerini kesintisiz kullanmaya devam edersiniz.";

  static String m25(proName) =>
      "Pro önizlemeniz sona erdi. ${proName} ile tüm Pro özelliklerini kullanmaya devam edin.";

  static String m26(days) =>
      "Zappit Pro’nun tüm özelliklerini ${days} gün boyunca ücretsiz kullanın. Kredi kartı gerekmez, otomatik ücret alınmaz.";

  static String m27(date) => "${date} tarihine kadar Pro önizleme";

  static String m28(proName) => "${proName} geri yüklendi";

  static String m29(site) => "${site} Favorilerden kaldır";

  static String m30(site) => "${site} Favorilerden kaldırıldı";

  static String m31(site) => "${site} sırasını değiştir";

  static String m32(percent) => "%${percent} tasarruf";

  static String m33(number) => "${number}. Sezon";

  static String m34(count) => "${count} sn";

  static String m35(site) => "${site} ayarları";

  static String m36(count) =>
      "1x’e dönüldü. Pro olmadan bu hızı ${count} saniye kullanabilirsiniz.";

  static String m37(price, date) =>
      "Ücretsiz denemeniz yarın bitiyor. ${date} tarihinde ${price} ücret alınacak. Devam etmek istemiyorsanız aboneliğinizi o tarihten önce iptal edin.";

  static String m38(price) =>
      "Ücretsiz denemeyle başlar, ardından yıllık ${price}.";

  static String m39(count, price) =>
      "${count} gün ücretsiz denemeyle başlar, ardından yıllık ${price}.";

  static String m40(count, price) =>
      "${count} ay ücretsiz denemeyle başlar, ardından yıllık ${price}.";

  static String m41(count, price) =>
      "${count} yıl ücretsiz denemeyle başlar, ardından yıllık ${price}.";

  static String m42(count) => "Sıradaki · ${count} sn sonra başlıyor";

  static String m43(count) => "Voice Boost denemesi, ${count} saniye kaldı";

  static String m44(count) =>
      "Voice Boost kapandı. Pro olmadan Voice Boost’u ${count} saniye kullanabilirsiniz.";

  static String m45(proName) => "${proName}’ya hoş geldiniz";

  static String m46(number) => "Pencere ${number}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "abLoopCount": MessageLookupByLibrary.simpleMessage(
      "A-B Loop tekrar sayısı",
    ),
    "abOffForLive": MessageLookupByLibrary.simpleMessage(
      "A-B Loop canlı yayınlarda kapalıdır",
    ),
    "account": MessageLookupByLibrary.simpleMessage("Bağlantı"),
    "adBadge": MessageLookupByLibrary.simpleMessage("REKLAM"),
    "addToFavorites": m0,
    "allCategories": MessageLookupByLibrary.simpleMessage("Tüm kategoriler"),
    "allSites": MessageLookupByLibrary.simpleMessage("Tüm siteler"),
    "alreadySubscribed": MessageLookupByLibrary.simpleMessage(
      "Bu aboneliğe zaten sahipsiniz. Satın alımları geri yükle’yi deneyin.",
    ),
    "back": MessageLookupByLibrary.simpleMessage("Geri"),
    "backSeconds": m1,
    "banned": MessageLookupByLibrary.simpleMessage(
      "Üzgünüz, erişim engellendi.",
    ),
    "browserDidNotAnswer": m2,
    "browserNotResponding": MessageLookupByLibrary.simpleMessage(
      "Tarayıcı yanıt vermiyor",
    ),
    "browsers": MessageLookupByLibrary.simpleMessage("Tarayıcılar"),
    "browsersDisconnected": m3,
    "browsersDisconnectedBody": MessageLookupByLibrary.simpleMessage(
      "Başka bir telefon ona bağlandı. Tekrar kullanmak için o bilgisayardaki QR kodunu tarayın.",
    ),
    "cameraDenied": MessageLookupByLibrary.simpleMessage(
      "Kodu taramak için Ayarlar’dan kamera erişimine izin verin.",
    ),
    "cameraUnavailable": MessageLookupByLibrary.simpleMessage(
      "Kamera şu anda kullanılamıyor.",
    ),
    "cancel": MessageLookupByLibrary.simpleMessage("İptal"),
    "cancelAnytime": MessageLookupByLibrary.simpleMessage(
      "Mağaza hesabınızdan istediğiniz zaman iptal edebilirsiniz.",
    ),
    "cantLoadPage": MessageLookupByLibrary.simpleMessage(
      "Bu sayfa yüklenemiyor",
    ),
    "cantOpenOnPhone": MessageLookupByLibrary.simpleMessage(
      "Bu video telefonda açılamıyor",
    ),
    "cantReachBrowser": MessageLookupByLibrary.simpleMessage(
      "Tarayıcıya ulaşılamıyor",
    ),
    "cantSeekVideo": MessageLookupByLibrary.simpleMessage(
      "Bu videoda ileri veya geri gidilemez",
    ),
    "captionLanguage": MessageLookupByLibrary.simpleMessage("Altyazı dili"),
    "captions": MessageLookupByLibrary.simpleMessage("Altyazılar"),
    "captionsOff": MessageLookupByLibrary.simpleMessage("Altyazılar kapalı"),
    "captionsOn": MessageLookupByLibrary.simpleMessage("Altyazılar açık"),
    "categories": MessageLookupByLibrary.simpleMessage("Kategoriler"),
    "categoryFavoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "Buraya eklemek için bir kategorideki yıldıza dokunun.",
    ),
    "channelLabel": m4,
    "chapterPosition": m5,
    "chapters": MessageLookupByLibrary.simpleMessage("Bölümler"),
    "chaptersDuringAd": MessageLookupByLibrary.simpleMessage(
      "Reklam sırasında bölüm atlanamaz",
    ),
    "checkConnection": MessageLookupByLibrary.simpleMessage(
      "İnternet bağlantınızı kontrol edip tekrar deneyin.",
    ),
    "checkConnectionShort": MessageLookupByLibrary.simpleMessage(
      "Bağlantınızı kontrol edip tekrar deneyin.",
    ),
    "chooseBrowser": MessageLookupByLibrary.simpleMessage("Tarayıcı seçin"),
    "chooseNextVideo": MessageLookupByLibrary.simpleMessage(
      "Sonraki videoyu seçin",
    ),
    "clear": MessageLookupByLibrary.simpleMessage("Temizle"),
    "close": MessageLookupByLibrary.simpleMessage("Kapat"),
    "connectBrowser": MessageLookupByLibrary.simpleMessage("Tarayıcı bağla"),
    "connectBrowserFirst": MessageLookupByLibrary.simpleMessage(
      "Önce bir tarayıcıya bağlanın",
    ),
    "connected": MessageLookupByLibrary.simpleMessage("Bağlı"),
    "connectedTo": m6,
    "contactUs": MessageLookupByLibrary.simpleMessage("Bize ulaşın"),
    "contactUsKeepInfo": MessageLookupByLibrary.simpleMessage(
      "Lütfen aşağıdaki bilgileri silmeyin.",
    ),
    "couldNotGetVideoLink": MessageLookupByLibrary.simpleMessage(
      "Video bağlantısı alınamadı",
    ),
    "couldNotLoadEpisodes": MessageLookupByLibrary.simpleMessage(
      "Bölümler yüklenemedi",
    ),
    "couldNotLoadPlaylist": MessageLookupByLibrary.simpleMessage(
      "Oynatma listesi yüklenemedi",
    ),
    "couldNotOpenLink": MessageLookupByLibrary.simpleMessage(
      "Bağlantı açılamadı",
    ),
    "couldNotReadQuality": MessageLookupByLibrary.simpleMessage(
      "Kalite seçenekleri sayfadan okunamadı.",
    ),
    "delete": MessageLookupByLibrary.simpleMessage("Sil"),
    "disconnect": MessageLookupByLibrary.simpleMessage("Bağlantıyı kes"),
    "disconnectPhone": MessageLookupByLibrary.simpleMessage(
      "Bu telefonun bağlantısını kes",
    ),
    "disconnectPhoneMessage": MessageLookupByLibrary.simpleMessage(
      "Bu telefon artık bilgisayarınızı kontrol etmeyecek. Tekrar kullanmak için bilgisayarınızdaki QR kodunu tarayın.",
    ),
    "down": MessageLookupByLibrary.simpleMessage("Aşağı"),
    "endOfVideo": MessageLookupByLibrary.simpleMessage("Video bitince"),
    "enterValidLink": MessageLookupByLibrary.simpleMessage(
      "http veya https ile başlayan bir bağlantı girin",
    ),
    "episodes": MessageLookupByLibrary.simpleMessage("Bölümler"),
    "error": MessageLookupByLibrary.simpleMessage("Hata"),
    "errorButtonNotFound": MessageLookupByLibrary.simpleMessage(
      "Bu düğme sayfada bulunamadı",
    ),
    "errorDuringAd": MessageLookupByLibrary.simpleMessage(
      "Reklam sırasında yapılamaz",
    ),
    "errorEndBeforeStart": MessageLookupByLibrary.simpleMessage(
      "Bitiş noktası başlangıç noktasından sonra olmalı",
    ),
    "errorGeneric": MessageLookupByLibrary.simpleMessage("Bir sorun oluştu"),
    "errorInvalidUrl": MessageLookupByLibrary.simpleMessage(
      "Bu bağlantı açılamıyor",
    ),
    "errorNoBrowser": MessageLookupByLibrary.simpleMessage(
      "Tarayıcı seçilmedi",
    ),
    "errorNoMedia": MessageLookupByLibrary.simpleMessage(
      "Oynatılan bir video yok",
    ),
    "errorNotChanged": MessageLookupByLibrary.simpleMessage(
      "Site bunu değiştirmedi",
    ),
    "errorNotSupported": MessageLookupByLibrary.simpleMessage(
      "Bu site bunu desteklemiyor",
    ),
    "errorStartAfterEnd": MessageLookupByLibrary.simpleMessage(
      "Başlangıç noktası bitiş noktasından önce olmalı",
    ),
    "errorTabClosed": MessageLookupByLibrary.simpleMessage(
      "Bu sekme zaten kapalı",
    ),
    "exitFullScreen": MessageLookupByLibrary.simpleMessage("Tam ekrandan çık"),
    "extensionUpdatedReload": MessageLookupByLibrary.simpleMessage(
      "Zappit uzantısı güncellendi. Tüm kontrolleri kullanmaya devam etmek için bu sayfayı yenileyin.",
    ),
    "faq": MessageLookupByLibrary.simpleMessage("SSS"),
    "favorites": MessageLookupByLibrary.simpleMessage("Favoriler"),
    "favoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "Buraya eklemek için bir sitedeki yıldıza dokunun.",
    ),
    "forwardSeconds": m7,
    "frameByFrame": MessageLookupByLibrary.simpleMessage("Kare kare"),
    "freeTrial": MessageLookupByLibrary.simpleMessage("Ücretsiz deneme"),
    "freeTrialDays": m8,
    "freeTrialMonths": m9,
    "freeTrialWeeks": m10,
    "freeTrialYears": m11,
    "fullPowerUnlocked": MessageLookupByLibrary.simpleMessage(
      "Tüm özelliklerin kilidi açıldı",
    ),
    "fullScreen": MessageLookupByLibrary.simpleMessage("Tam ekran"),
    "generalSettings": MessageLookupByLibrary.simpleMessage("Genel ayarlar"),
    "gotIt": MessageLookupByLibrary.simpleMessage("Anladım"),
    "hideChat": MessageLookupByLibrary.simpleMessage("Sohbeti gizle"),
    "home": MessageLookupByLibrary.simpleMessage("Ana sayfa"),
    "justPerMonth": m12,
    "largerCaptions": MessageLookupByLibrary.simpleMessage(
      "Daha büyük altyazı",
    ),
    "lastVideoInPlaylist": MessageLookupByLibrary.simpleMessage(
      "Bu, oynatma listesindeki son video",
    ),
    "learnMore": MessageLookupByLibrary.simpleMessage("Daha fazla bilgi"),
    "left": MessageLookupByLibrary.simpleMessage("Sol"),
    "linkPanelHint": MessageLookupByLibrary.simpleMessage(
      "Bir video bağlantısı yapıştırıp Gönder’e dokunun. Tarayıcınızda yeni bir sekmede açılır.",
    ),
    "liveBadge": MessageLookupByLibrary.simpleMessage("CANLI"),
    "liveCantRewind": MessageLookupByLibrary.simpleMessage(
      "Bu canlı yayın geri sarılamaz",
    ),
    "longPressSpeed": MessageLookupByLibrary.simpleMessage("Basılı tutma hızı"),
    "loopEnd": MessageLookupByLibrary.simpleMessage("Döngü sonu"),
    "loopOff": MessageLookupByLibrary.simpleMessage("Döngü kapalı"),
    "loopOn": MessageLookupByLibrary.simpleMessage("Döngü açık"),
    "loopStart": MessageLookupByLibrary.simpleMessage("Döngü başlangıcı"),
    "manageSubscription": MessageLookupByLibrary.simpleMessage(
      "Aboneliği yönet",
    ),
    "minutesCount": m13,
    "minutesShort": m14,
    "mixCantRepeat": MessageLookupByLibrary.simpleMessage(
      "Bu oynatma listesi sürekli yeni videolar çalar, bu yüzden tekrarlanamaz",
    ),
    "mixCantShuffle": MessageLookupByLibrary.simpleMessage(
      "Bu oynatma listesi sürekli yeni videolar çalar, bu yüzden karıştırılamaz",
    ),
    "monthly": MessageLookupByLibrary.simpleMessage("Aylık"),
    "multipleBrowsersMessage": MessageLookupByLibrary.simpleMessage(
      "Birden fazla tarayıcı çevrimiçi. Bu kumandanın kontrol edeceğini seçin.",
    ),
    "mute": MessageLookupByLibrary.simpleMessage("Sessize al"),
    "nextChapter": MessageLookupByLibrary.simpleMessage("Sonraki bölüm"),
    "nextEpisode": MessageLookupByLibrary.simpleMessage("Sonraki bölüm"),
    "nextTab": MessageLookupByLibrary.simpleMessage("Sonraki sekme"),
    "nextVideo": MessageLookupByLibrary.simpleMessage("Sonraki video"),
    "noBrowser": MessageLookupByLibrary.simpleMessage("Tarayıcı yok"),
    "noBrowserConnectedShare": MessageLookupByLibrary.simpleMessage(
      "Bağlı tarayıcı yok. Zappit uzantısının olduğu tarayıcıyı açıp tekrar deneyin.",
    ),
    "noBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "1. Bilgisayarınızda bağlı tarayıcıyı açın.\n2. Bağlanmazsa tarayıcınızın üst araç çubuğundaki Zappit simgesine tıklayın.",
    ),
    "noBrowserOnline": MessageLookupByLibrary.simpleMessage(
      "Çevrimiçi tarayıcı yok.",
    ),
    "noBrowserOnlineShort": MessageLookupByLibrary.simpleMessage(
      "Çevrimiçi tarayıcı yok",
    ),
    "noBrowserSelected": MessageLookupByLibrary.simpleMessage(
      "Tarayıcı seçilmedi",
    ),
    "noCategoriesFound": MessageLookupByLibrary.simpleMessage(
      "Kategori bulunamadı",
    ),
    "noLinkInShare": MessageLookupByLibrary.simpleMessage(
      "Paylaştığınız içerikte bağlantı bulunamadı",
    ),
    "noMoreTabs": MessageLookupByLibrary.simpleMessage("Başka sekme yok"),
    "noNextEpisode": MessageLookupByLibrary.simpleMessage("Sonraki bölüm yok"),
    "noOpenTabs": MessageLookupByLibrary.simpleMessage("Açık sekme yok"),
    "noPreviousPage": MessageLookupByLibrary.simpleMessage(
      "Geri dönülecek önceki sayfa yok",
    ),
    "noSiteSettings": MessageLookupByLibrary.simpleMessage(
      "Bu site için henüz ayar yok.",
    ),
    "noSubtitles": MessageLookupByLibrary.simpleMessage(
      "Bu videonun altyazısı yok",
    ),
    "noThanks": MessageLookupByLibrary.simpleMessage("Hayır, teşekkürler"),
    "noVideosOnPage": MessageLookupByLibrary.simpleMessage(
      "Bu sayfada video yok.",
    ),
    "notAvailableDuringAd": MessageLookupByLibrary.simpleMessage(
      "Reklam sırasında kullanılamaz",
    ),
    "notAvailableForLive": MessageLookupByLibrary.simpleMessage(
      "Canlıda kullanılamaz",
    ),
    "notAvailableForLiveStreams": MessageLookupByLibrary.simpleMessage(
      "Canlı yayınlarda kullanılamaz",
    ),
    "notAvailableForPhotos": MessageLookupByLibrary.simpleMessage(
      "Fotoğraf gönderilerinde kullanılamaz",
    ),
    "notConnected": MessageLookupByLibrary.simpleMessage("Bağlı değil"),
    "nothingPlaying": MessageLookupByLibrary.simpleMessage("Video bulunamadı"),
    "nothingPlayingMessage": MessageLookupByLibrary.simpleMessage(
      "Bu sekmede video yok. Başka bir sekme seçin veya bir video bağlantısı yapıştırın.",
    ),
    "nothingToRestore": MessageLookupByLibrary.simpleMessage(
      "Geri yüklenecek bir şey yok",
    ),
    "nothingToRestoreMessage": MessageLookupByLibrary.simpleMessage(
      "Bu mağaza hesabında etkin bir Zappit Pro aboneliği bulunamadı.",
    ),
    "obAnimAddExtension": MessageLookupByLibrary.simpleMessage("Uzantıyı ekle"),
    "obAnimAdded": MessageLookupByLibrary.simpleMessage("Eklendi"),
    "obAnimConnectComputer": MessageLookupByLibrary.simpleMessage(
      "Bilgisayarınıza bağlanın",
    ),
    "obAnimConnectPhone": MessageLookupByLibrary.simpleMessage(
      "Telefonunuzu bağlayın",
    ),
    "obAnimNewCode": m15,
    "obAnimRemoteConnected": MessageLookupByLibrary.simpleMessage(
      "Kumanda bağlandı",
    ),
    "obAnimScanCode": MessageLookupByLibrary.simpleMessage(
      "Bu kodu telefonunuzdaki Zappit uygulamasıyla tarayın.",
    ),
    "obAnimTagline": MessageLookupByLibrary.simpleMessage("Fareye elveda."),
    "obAnimYourPhones": MessageLookupByLibrary.simpleMessage("Telefonlarınız"),
    "off": MessageLookupByLibrary.simpleMessage("Kapalı"),
    "offline": MessageLookupByLibrary.simpleMessage("Çevrimdışı"),
    "offlineMessage": MessageLookupByLibrary.simpleMessage(
      "İnternet bağlantınızı kontrol edin. Zappit kendiliğinden yeniden bağlanır.",
    ),
    "onboarding0AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Zappit uygulamasında oynat/duraklat düğmesine dokunmak, dizüstü bilgisayardaki videoyu duraklatıp yeniden başlatır",
    ),
    "onboarding1AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Tarayıcıya zappit.tv/get yazılıyor ve Zappit uzantısı ekleniyor",
    ),
    "onboarding1Body": m16,
    "onboarding1Title": MessageLookupByLibrary.simpleMessage(
      "Önce Zappit uzantısını tarayıcınıza ekleyin",
    ),
    "onboarding2AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Tarayıcıda Zappit simgesine tıklanıyor, ardından QR kodu telefonla taranıyor",
    ),
    "onboarding2Body": MessageLookupByLibrary.simpleMessage(
      "Tarayıcınızın araç çubuğundaki Zappit simgesine tıklayın, ardından kamerayı QR koduna doğrultun.",
    ),
    "onboarding2Title": MessageLookupByLibrary.simpleMessage(
      "QR kodunu tarayın",
    ),
    "onboardingGetStarted": MessageLookupByLibrary.simpleMessage("Başlayalım"),
    "onboardingIconHelp": MessageLookupByLibrary.simpleMessage(
      "Zappit simgesini göremiyor musunuz?",
    ),
    "onboardingIconHelpLabel": MessageLookupByLibrary.simpleMessage(
      "Zappit simgesini göremiyor musunuz? Yanıtı SSS’de açar",
    ),
    "onboardingNext": MessageLookupByLibrary.simpleMessage("İleri"),
    "onboardingOpenQrScanner": MessageLookupByLibrary.simpleMessage(
      "QR tarayıcıyı aç",
    ),
    "onboardingShareLink": MessageLookupByLibrary.simpleMessage(
      "Yükleme bağlantısını gönder",
    ),
    "onboardingStepCount": m17,
    "onboardingStepLabel": m18,
    "onboardingWelcomeBody": MessageLookupByLibrary.simpleMessage(
      "Bilgisayarınızdaki her videoyu kontrol edin. Kurulum yalnızca iki kısa adım.",
    ),
    "onboardingWelcomeTitle": MessageLookupByLibrary.simpleMessage(
      "Telefonunuz artık bir kumanda",
    ),
    "openALink": MessageLookupByLibrary.simpleMessage("Bağlantı aç"),
    "openBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "Sekmelerini görmek için Zappit uzantısının olduğu tarayıcıyı açın.",
    ),
    "openLinkInBrowser": MessageLookupByLibrary.simpleMessage(
      "Tarayıcıda bağlantı aç",
    ),
    "openSite": m19,
    "openedIn": m20,
    "openingIn": m21,
    "pairCodeExpired": MessageLookupByLibrary.simpleMessage(
      "Bu kodun süresi doldu. Bilgisayarınızdaki yeni kodu tarayın.",
    ),
    "pairCodeInvalid": MessageLookupByLibrary.simpleMessage(
      "Bu kod artık geçerli değil. Bilgisayarınızdaki yeni kodu tarayın.",
    ),
    "pairCodeUsed": MessageLookupByLibrary.simpleMessage(
      "Bu kod zaten kullanıldı. Bilgisayarınızdaki yeni kodu tarayın.",
    ),
    "pairFailed": MessageLookupByLibrary.simpleMessage(
      "Bağlanılamadı. İnternet bağlantınızı kontrol edip tekrar deneyin.",
    ),
    "pairHowToInstall": MessageLookupByLibrary.simpleMessage(
      "Uzantı nasıl yüklenir",
    ),
    "pairPhoneLimit": MessageLookupByLibrary.simpleMessage(
      "Bu bilgisayara zaten 3 telefon bağlı. Bağlı diğer telefonlarınızdan birinde Zappit’i açın ve ‘Diğer’ bölümünde ‘Bu telefonun bağlantısını kes’e dokunun. O telefon artık sizde değilse bilgisayardaki Zappit uzantısında ‘Reset’i kullanın.",
    ),
    "pairTitle": MessageLookupByLibrary.simpleMessage(
      "Tarayıcı uzantısına bağlanın",
    ),
    "paste": MessageLookupByLibrary.simpleMessage("Yapıştır"),
    "pasteALink": MessageLookupByLibrary.simpleMessage("Bağlantı yapıştır"),
    "pasteVideoLink": MessageLookupByLibrary.simpleMessage(
      "Video bağlantısı yapıştırın",
    ),
    "pause": MessageLookupByLibrary.simpleMessage("Duraklat"),
    "paymentPending": MessageLookupByLibrary.simpleMessage("Ödeme bekleniyor"),
    "paymentPendingMessage": MessageLookupByLibrary.simpleMessage(
      "Mağaza ödemenizi onaylar onaylamaz Pro açılır.",
    ),
    "phoneName": MessageLookupByLibrary.simpleMessage("Telefon adı"),
    "phoneNameEmpty": MessageLookupByLibrary.simpleMessage("Bir ad girin."),
    "phoneNameMessage": MessageLookupByLibrary.simpleMessage(
      "Bilgisayarınızdaki Zappit uzantısında görünür.",
    ),
    "pickATab": MessageLookupByLibrary.simpleMessage("Sekme seç"),
    "pickBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "Sekmelerini görmek için bu kumandanın kontrol edeceği tarayıcıyı seçin.",
    ),
    "pickVideosWithPro": MessageLookupByLibrary.simpleMessage(
      "Pro ile videoları telefonunuzdan seçin",
    ),
    "play": MessageLookupByLibrary.simpleMessage("Oynat"),
    "playInApp": MessageLookupByLibrary.simpleMessage("Telefonda devam et"),
    "playNow": MessageLookupByLibrary.simpleMessage("Şimdi oynat"),
    "playVideoFirst": MessageLookupByLibrary.simpleMessage(
      "Önce tarayıcıda bir video oynatın",
    ),
    "playing": MessageLookupByLibrary.simpleMessage("Oynatılıyor"),
    "playlist": MessageLookupByLibrary.simpleMessage("Oynatma listesi"),
    "playlistCantRepeat": MessageLookupByLibrary.simpleMessage(
      "Bu oynatma listesi tekrarlanamaz",
    ),
    "playlistCantShuffle": MessageLookupByLibrary.simpleMessage(
      "Bu oynatma listesi karıştırılamaz",
    ),
    "previousChapter": MessageLookupByLibrary.simpleMessage("Önceki bölüm"),
    "previousTab": MessageLookupByLibrary.simpleMessage("Önceki sekme"),
    "previousVideo": MessageLookupByLibrary.simpleMessage("Önceki video"),
    "pricePerMonth": m22,
    "pricePerYear": m23,
    "privacyPolicy": MessageLookupByLibrary.simpleMessage(
      "Gizlilik Politikası",
    ),
    "proBannerSubtitle": MessageLookupByLibrary.simpleMessage(
      "Kumandanızın tüm gücünü açığa çıkarın",
    ),
    "proFeatureAbLoop": MessageLookupByLibrary.simpleMessage(
      "Sınırsız A-B Loop",
    ),
    "proFeatureAllSpeeds": MessageLookupByLibrary.simpleMessage(
      "Tüm oynatma hızları",
    ),
    "proFeatureDedicatedControllers": MessageLookupByLibrary.simpleMessage(
      "Siteye özel kumandaların kilidini açın",
    ),
    "proFeatureFullLoop": MessageLookupByLibrary.simpleMessage(
      "Sınırsız tam video tekrarı",
    ),
    "proFeatureVoiceBoost": MessageLookupByLibrary.simpleMessage(
      "Sınırsız Voice Boost",
    ),
    "proPreviewActiveBanner": m24,
    "proPreviewEndedMessage": MessageLookupByLibrary.simpleMessage(
      "Zappit Pro’yu denediğiniz için teşekkürler! Tüm Pro özelliklerini kesintisiz kullanmaya devam etmek için abone olun.",
    ),
    "proPreviewEndedSubtitle": m25,
    "proPreviewEndedTitle": MessageLookupByLibrary.simpleMessage(
      "Pro önizlemeniz sona erdi",
    ),
    "proPreviewEndsTomorrow": MessageLookupByLibrary.simpleMessage(
      "Pro önizleme yarın sona eriyor",
    ),
    "proPreviewStarted": m26,
    "proPreviewUntil": m27,
    "proRestored": m28,
    "proSubscriptionEnded": MessageLookupByLibrary.simpleMessage(
      "Pro aboneliğiniz sona erdi",
    ),
    "proSubtitle": MessageLookupByLibrary.simpleMessage(
      "Kumandanızın tüm gücünü açığa çıkarın.",
    ),
    "purchaseCancelled": MessageLookupByLibrary.simpleMessage(
      "Satın alma iptal edildi",
    ),
    "purchaseCancelledMessage": MessageLookupByLibrary.simpleMessage(
      "Hiçbir ücret alınmadı. İstediğiniz zaman tekrar deneyebilirsiniz.",
    ),
    "purchaseFailed": MessageLookupByLibrary.simpleMessage(
      "Satın alma başarısız oldu",
    ),
    "purchaseNotActivated": MessageLookupByLibrary.simpleMessage(
      "Satın alma etkinleşmedi",
    ),
    "purchaseNotActivatedMessage": MessageLookupByLibrary.simpleMessage(
      "Ödemeniz alındı ama Pro henüz etkin değil. Satın alımları geri yükle’yi deneyin.",
    ),
    "purchasesNotAllowed": MessageLookupByLibrary.simpleMessage(
      "Bu cihazda veya hesapta satın almaya izin verilmiyor.",
    ),
    "qualityNotChanged": MessageLookupByLibrary.simpleMessage(
      "Kalite değişmedi",
    ),
    "rateZappit": MessageLookupByLibrary.simpleMessage("Zappit’i değerlendir"),
    "reload": MessageLookupByLibrary.simpleMessage("Yenile"),
    "remindMe": MessageLookupByLibrary.simpleMessage("Hatırlat"),
    "remoteSettings": MessageLookupByLibrary.simpleMessage("Kumanda ayarları"),
    "removeFromFavorites": m29,
    "removedFromFavorites": m30,
    "reorderHint": MessageLookupByLibrary.simpleMessage(
      "Sırasını değiştirmek için bir öğeye basılı tutup sürükleyin",
    ),
    "reorderSite": m31,
    "repeatOff": MessageLookupByLibrary.simpleMessage("Tekrar kapalı"),
    "repeatOffNotice": MessageLookupByLibrary.simpleMessage("Tekrar kapalı"),
    "repeatOn": MessageLookupByLibrary.simpleMessage("Tekrar açık"),
    "repeatingPlaylist": MessageLookupByLibrary.simpleMessage(
      "Bu oynatma listesi tekrarlanıyor",
    ),
    "replay": MessageLookupByLibrary.simpleMessage("Baştan oynat"),
    "restoreFailed": MessageLookupByLibrary.simpleMessage(
      "Geri yükleme başarısız oldu",
    ),
    "restorePurchases": MessageLookupByLibrary.simpleMessage(
      "Satın alımları geri yükle",
    ),
    "right": MessageLookupByLibrary.simpleMessage("Sağ"),
    "save": MessageLookupByLibrary.simpleMessage("Kaydet"),
    "savePercent": m32,
    "searchCategories": MessageLookupByLibrary.simpleMessage("Kategori ara"),
    "seasonNumber": m33,
    "secondsShort": m34,
    "seekInterval": MessageLookupByLibrary.simpleMessage("Atlama aralığı"),
    "select": MessageLookupByLibrary.simpleMessage("Seç"),
    "selectVideoInBrowser": MessageLookupByLibrary.simpleMessage(
      "Oynatılan bir şey yok",
    ),
    "selectVideoInBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "İzlemeye başlamak için bilgisayarınızda herhangi bir videoya tıklayın. Kumanda burada görünecek.",
    ),
    "send": MessageLookupByLibrary.simpleMessage("Gönder"),
    "settings": MessageLookupByLibrary.simpleMessage("Ayarlar"),
    "showChat": MessageLookupByLibrary.simpleMessage("Sohbeti göster"),
    "shuffleOff": MessageLookupByLibrary.simpleMessage("Karıştırma kapalı"),
    "shuffleOffNotice": MessageLookupByLibrary.simpleMessage(
      "Karıştırma kapalı",
    ),
    "shuffleOn": MessageLookupByLibrary.simpleMessage("Karıştırma açık"),
    "shufflingPlaylist": MessageLookupByLibrary.simpleMessage(
      "Bu oynatma listesi karışık çalınıyor",
    ),
    "siteSettings": m35,
    "siteWeb": MessageLookupByLibrary.simpleMessage("Web"),
    "skipAd": MessageLookupByLibrary.simpleMessage("Reklamı atla"),
    "skipIntro": MessageLookupByLibrary.simpleMessage("Girişi atla"),
    "sleepTimer": MessageLookupByLibrary.simpleMessage("Uyku zamanlayıcı"),
    "sleepTimerLabel": MessageLookupByLibrary.simpleMessage("Uyku zamanlayıcı"),
    "smallerCaptions": MessageLookupByLibrary.simpleMessage(
      "Daha küçük altyazı",
    ),
    "somethingWrong": MessageLookupByLibrary.simpleMessage(
      "Üzgünüz, bir sorun oluştu.",
    ),
    "somethingWrongTryAgain": MessageLookupByLibrary.simpleMessage(
      "Üzgünüz, bir sorun oluştu. Lütfen tekrar deneyin.",
    ),
    "soundBlockedMessage": MessageLookupByLibrary.simpleMessage(
      "Sesi nasıl açacağınızı görmek için dokunun.",
    ),
    "soundBlockedTitle": MessageLookupByLibrary.simpleMessage(
      "Neden ses gelmiyor?",
    ),
    "soundHelpTitle": MessageLookupByLibrary.simpleMessage("Ses"),
    "speedTrialOver": m36,
    "startFreeTrial": MessageLookupByLibrary.simpleMessage(
      "Ücretsiz denemeyi başlat",
    ),
    "storeProblem": MessageLookupByLibrary.simpleMessage(
      "Mağazada bir sorun oluştu. Lütfen birazdan tekrar deneyin.",
    ),
    "storeUnavailable": MessageLookupByLibrary.simpleMessage(
      "Mağaza şu anda kullanılamıyor. Lütfen daha sonra tekrar deneyin.",
    ),
    "subscribe": MessageLookupByLibrary.simpleMessage("Abone ol"),
    "success": MessageLookupByLibrary.simpleMessage("Tamamlandı"),
    "support": MessageLookupByLibrary.simpleMessage("Destek"),
    "supportedSites": MessageLookupByLibrary.simpleMessage(
      "Desteklenen siteler",
    ),
    "supportedSitesIntro": MessageLookupByLibrary.simpleMessage(
      "Bu siteler için özel olarak hazırlanmış bir kumanda var. Diğer tüm sitelerde Zappit standart bir kumanda olarak çalışır.",
    ),
    "tabMore": MessageLookupByLibrary.simpleMessage("Diğer"),
    "tabRemote": MessageLookupByLibrary.simpleMessage("Kumanda"),
    "tabTabs": MessageLookupByLibrary.simpleMessage("Sekmeler"),
    "tapToKeepPro": MessageLookupByLibrary.simpleMessage(
      "Tüm Pro özelliklerini korumak için dokunun.",
    ),
    "tellAFriend": MessageLookupByLibrary.simpleMessage("Bir arkadaşına öner"),
    "termsOfService": MessageLookupByLibrary.simpleMessage("Hizmet Şartları"),
    "theaterMode": MessageLookupByLibrary.simpleMessage("Sinema modu"),
    "trialReminderBody": m37,
    "trialReminderChannel": MessageLookupByLibrary.simpleMessage(
      "Ücretsiz deneme hatırlatıcısı",
    ),
    "trialReminderChannelDescription": MessageLookupByLibrary.simpleMessage(
      "Ücretsiz denemeniz bitmeden önce bir hatırlatma",
    ),
    "trialReminderMessage": MessageLookupByLibrary.simpleMessage(
      "Sürpriz bir ücretle karşılaşmamanız için ücretsiz denemeniz bitmeden bir gün önce size hatırlatalım mı?",
    ),
    "trialReminderNotificationTitle": MessageLookupByLibrary.simpleMessage(
      "Zappit Pro ücretsiz denemesi yakında bitiyor",
    ),
    "trialReminderTitle": MessageLookupByLibrary.simpleMessage(
      "Deneme hatırlatıcısı",
    ),
    "trialTerms": m38,
    "trialTermsDays": m39,
    "trialTermsMonths": m40,
    "trialTermsYears": m41,
    "tryAgain": MessageLookupByLibrary.simpleMessage("Tekrar dene"),
    "turnOffAbFirst": MessageLookupByLibrary.simpleMessage(
      "Önce A-B Loop’u kapatın",
    ),
    "tutorial": MessageLookupByLibrary.simpleMessage("Kullanım rehberi"),
    "unavailable": MessageLookupByLibrary.simpleMessage("Kullanılamıyor"),
    "undo": MessageLookupByLibrary.simpleMessage("Geri al"),
    "unmute": MessageLookupByLibrary.simpleMessage("Sesi aç"),
    "untitled": MessageLookupByLibrary.simpleMessage("Başlıksız"),
    "up": MessageLookupByLibrary.simpleMessage("Yukarı"),
    "upNext": MessageLookupByLibrary.simpleMessage("Sıradaki"),
    "upNextCountdown": m42,
    "upgrade": MessageLookupByLibrary.simpleMessage("Yükselt"),
    "videoLengthUnknown": MessageLookupByLibrary.simpleMessage(
      "Bu videonun uzunluğu bilinmiyor",
    ),
    "videoQuality": MessageLookupByLibrary.simpleMessage("Video kalitesi"),
    "view": MessageLookupByLibrary.simpleMessage("Görüntüle"),
    "voiceBoostDuringAd": MessageLookupByLibrary.simpleMessage(
      "Voice Boost reklam sırasında kullanılamaz",
    ),
    "voiceBoostOff": MessageLookupByLibrary.simpleMessage("Voice Boost kapalı"),
    "voiceBoostOn": MessageLookupByLibrary.simpleMessage("Voice Boost açık"),
    "voiceBoostTrialLeft": m43,
    "voiceBoostTrialOver": m44,
    "voiceBoostTurnedOn": MessageLookupByLibrary.simpleMessage(
      "Voice Boost açık: sesler daha net duyuluyor",
    ),
    "voiceBoostUnsupported": MessageLookupByLibrary.simpleMessage(
      "Bu video Voice Boost’u desteklemiyor",
    ),
    "volumeDown": MessageLookupByLibrary.simpleMessage("Sesi azalt"),
    "volumeUp": MessageLookupByLibrary.simpleMessage("Sesi artır"),
    "waitingForBrowser": MessageLookupByLibrary.simpleMessage(
      "Tarayıcınız bekleniyor…",
    ),
    "watchAgain": MessageLookupByLibrary.simpleMessage("Tekrar izle"),
    "watching": MessageLookupByLibrary.simpleMessage("İzleniyor"),
    "welcomeToPro": m45,
    "windowNumber": m46,
    "yearly": MessageLookupByLibrary.simpleMessage("Yıllık"),
    "yourBrowser": MessageLookupByLibrary.simpleMessage("tarayıcınız"),
    "youreConnected": MessageLookupByLibrary.simpleMessage("Bağlandınız!"),
    "youreOffline": MessageLookupByLibrary.simpleMessage("Çevrimdışısınız"),
    "youtubeHome": MessageLookupByLibrary.simpleMessage("YouTube ana sayfası"),
    "ytCourses": MessageLookupByLibrary.simpleMessage("Kurslar"),
    "ytDownloads": MessageLookupByLibrary.simpleMessage("İndirilenler"),
    "ytExplore": MessageLookupByLibrary.simpleMessage("Keşfet"),
    "ytGaming": MessageLookupByLibrary.simpleMessage("Oyun"),
    "ytHistory": MessageLookupByLibrary.simpleMessage("Geçmiş"),
    "ytHype": MessageLookupByLibrary.simpleMessage("Hype"),
    "ytLikedVideos": MessageLookupByLibrary.simpleMessage("Beğenilen videolar"),
    "ytLive": MessageLookupByLibrary.simpleMessage("Canlı"),
    "ytMemberships": MessageLookupByLibrary.simpleMessage("Üyelikler"),
    "ytMusic": MessageLookupByLibrary.simpleMessage("Müzik"),
    "ytPlaylists": MessageLookupByLibrary.simpleMessage("Oynatma listeleri"),
    "ytPodcasts": MessageLookupByLibrary.simpleMessage("Podcast’ler"),
    "ytShorts": MessageLookupByLibrary.simpleMessage("Shorts"),
    "ytSubscriptions": MessageLookupByLibrary.simpleMessage("Abonelikler"),
    "ytVideos": MessageLookupByLibrary.simpleMessage("Videolar"),
    "ytWatchLater": MessageLookupByLibrary.simpleMessage("Daha sonra izle"),
    "ytYou": MessageLookupByLibrary.simpleMessage("Siz"),
  };
}
