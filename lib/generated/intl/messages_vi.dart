// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a vi locale. All the
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
  String get localeName => 'vi';

  static String m0(site) => "Thêm ${site} vào Yêu thích";

  static String m1(count) => "Lùi ${count} giây";

  static String m2(browser) =>
      "${browser} không phản hồi. Hãy kiểm tra xem trình duyệt có đang mở không.";

  static String m3(browsers) => "Đã ngắt kết nối với ${browsers}";

  static String m4(name) => "Kênh: ${name}";

  static String m5(current, total) => "Chương ${current}/${total}";

  static String m6(browser) => "Đã kết nối với ${browser}";

  static String m7(count) => "Tua tới ${count} giây";

  static String m8(count) => "Dùng thử miễn phí ${count} ngày";

  static String m9(count) => "Dùng thử miễn phí ${count} tháng";

  static String m10(count) => "Dùng thử miễn phí ${count} tuần";

  static String m11(count) => "Dùng thử miễn phí ${count} năm";

  static String m12(price) => "Chỉ ${price}/tháng";

  static String m13(count) => "${Intl.plural(count, other: '${count} phút')}";

  static String m14(count) => "${count} phút";

  static String m15(time) => "Mã mới sau ${time}";

  static String m16(url) =>
      "Mở ${url} trong trình duyệt trên máy tính để cài đặt tiện ích Zappit.";

  static String m17(current, total) => "${current} / ${total}";

  static String m18(current, total) => "Bước ${current}/${total}";

  static String m19(site) => "Mở ${site}";

  static String m20(browser) => "Đã mở trong ${browser}";

  static String m21(browser) => "Đang mở trong ${browser}…";

  static String m22(price) => "${price} / tháng";

  static String m23(price) => "${price} / năm";

  static String m24(date) =>
      "Bạn đang trải nghiệm Pro miễn phí đến ${date}. Hãy đăng ký trước khi kết thúc để tiếp tục dùng mọi tính năng Pro không gián đoạn.";

  static String m25(proName) =>
      "Thời gian trải nghiệm Pro miễn phí đã kết thúc. Tiếp tục dùng mọi tính năng Pro với ${proName}.";

  static String m26(days) =>
      "Trải nghiệm mọi tính năng Zappit Pro trong ${days} ngày. Hoàn toàn miễn phí, không tự động trừ tiền.";

  static String m27(date) => "Trải nghiệm Pro miễn phí đến ${date}";

  static String m28(proName) => "Đã khôi phục ${proName}";

  static String m29(site) => "Xóa ${site} khỏi Yêu thích";

  static String m30(site) => "Đã xóa ${site} khỏi Yêu thích";

  static String m31(site) => "Sắp xếp lại ${site}";

  static String m32(percent) => "Tiết kiệm ${percent}%";

  static String m33(number) => "Phần ${number}";

  static String m34(count) => "${count} giây";

  static String m35(site) => "Cài đặt ${site}";

  static String m36(count) =>
      "Đã về 1x. Nếu không có Pro, bạn dùng được tốc độ này trong ${count} giây.";

  static String m37(price, date) =>
      "Thời gian dùng thử miễn phí của bạn kết thúc vào ngày mai. Bạn sẽ bị trừ ${price} vào ${date}. Nếu không muốn tiếp tục, hãy hủy gói đăng ký trước ngày đó.";

  static String m38(price) =>
      "Bắt đầu với thời gian dùng thử miễn phí, sau đó ${price}/năm.";

  static String m39(count, price) =>
      "Bắt đầu với ${count} ngày dùng thử miễn phí, sau đó ${price}/năm.";

  static String m40(count, price) =>
      "Bắt đầu với ${count} tháng dùng thử miễn phí, sau đó ${price}/năm.";

  static String m41(count, price) =>
      "Bắt đầu với ${count} năm dùng thử miễn phí, sau đó ${price}/năm.";

  static String m42(count) => "Tiếp theo · phát sau ${count} giây";

  static String m43(count) => "Dùng thử Voice Boost, còn ${count} giây";

  static String m44(count) =>
      "Voice Boost đã tắt. Nếu không có Pro, bạn dùng được Voice Boost trong ${count} giây.";

  static String m45(proName) => "Đã nâng cấp lên ${proName}!";

  static String m46(number) => "Cửa sổ ${number}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "abLoopCount": MessageLookupByLibrary.simpleMessage("Số lần lặp A-B Loop"),
    "abOffForLive": MessageLookupByLibrary.simpleMessage(
      "A-B Loop bị tắt với video trực tiếp",
    ),
    "account": MessageLookupByLibrary.simpleMessage("Kết nối"),
    "adBadge": MessageLookupByLibrary.simpleMessage("QC"),
    "addToFavorites": m0,
    "allCategories": MessageLookupByLibrary.simpleMessage("Tất cả thể loại"),
    "allSites": MessageLookupByLibrary.simpleMessage("Tất cả trang web"),
    "alreadySubscribed": MessageLookupByLibrary.simpleMessage(
      "Bạn đã có gói đăng ký này. Hãy thử “Khôi phục giao dịch mua”.",
    ),
    "back": MessageLookupByLibrary.simpleMessage("Quay lại"),
    "backSeconds": m1,
    "browserDidNotAnswer": m2,
    "browserNotResponding": MessageLookupByLibrary.simpleMessage(
      "Trình duyệt không phản hồi",
    ),
    "browsers": MessageLookupByLibrary.simpleMessage("Trình duyệt"),
    "browsersDisconnected": m3,
    "browsersDisconnectedBody": MessageLookupByLibrary.simpleMessage(
      "Một điện thoại khác đã kết nối với trình duyệt đó. Để kết nối lại, hãy quét mã QR trên máy tính đó.",
    ),
    "cameraDenied": MessageLookupByLibrary.simpleMessage(
      "Hãy cho phép truy cập camera trong Cài đặt để quét mã.",
    ),
    "cameraUnavailable": MessageLookupByLibrary.simpleMessage(
      "Camera hiện không khả dụng.",
    ),
    "cancel": MessageLookupByLibrary.simpleMessage("Hủy"),
    "cancelAnytime": MessageLookupByLibrary.simpleMessage(
      "Hủy bất cứ lúc nào trong phần quản lý gói đăng ký.",
    ),
    "cantLoadPage": MessageLookupByLibrary.simpleMessage(
      "Không tải được trang này",
    ),
    "cantOpenOnPhone": MessageLookupByLibrary.simpleMessage(
      "Không thể mở video này trên điện thoại",
    ),
    "cantReachBrowser": MessageLookupByLibrary.simpleMessage(
      "Không kết nối được với trình duyệt",
    ),
    "cantSeekVideo": MessageLookupByLibrary.simpleMessage(
      "Không thể tua video này",
    ),
    "captionLanguage": MessageLookupByLibrary.simpleMessage("Ngôn ngữ phụ đề"),
    "captions": MessageLookupByLibrary.simpleMessage("Phụ đề"),
    "captionsOff": MessageLookupByLibrary.simpleMessage("Đã tắt phụ đề"),
    "captionsOn": MessageLookupByLibrary.simpleMessage("Đã bật phụ đề"),
    "categories": MessageLookupByLibrary.simpleMessage("Thể loại"),
    "categoryFavoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "Chạm vào ngôi sao của một thể loại để thêm vào đây.",
    ),
    "channelLabel": m4,
    "chapterPosition": m5,
    "chapters": MessageLookupByLibrary.simpleMessage("Chương"),
    "chaptersDuringAd": MessageLookupByLibrary.simpleMessage(
      "Không thể chuyển chương khi đang có quảng cáo",
    ),
    "checkConnection": MessageLookupByLibrary.simpleMessage(
      "Hãy kiểm tra kết nối Internet rồi thử lại.",
    ),
    "checkConnectionShort": MessageLookupByLibrary.simpleMessage(
      "Hãy kiểm tra kết nối rồi thử lại.",
    ),
    "chooseBrowser": MessageLookupByLibrary.simpleMessage("Chọn trình duyệt"),
    "chooseNextVideo": MessageLookupByLibrary.simpleMessage(
      "Chọn video tiếp theo",
    ),
    "clear": MessageLookupByLibrary.simpleMessage("Xóa"),
    "close": MessageLookupByLibrary.simpleMessage("Đóng"),
    "connectBrowser": MessageLookupByLibrary.simpleMessage(
      "Kết nối trình duyệt",
    ),
    "connectBrowserFirst": MessageLookupByLibrary.simpleMessage(
      "Hãy kết nối với trình duyệt trước",
    ),
    "connected": MessageLookupByLibrary.simpleMessage("Đã kết nối"),
    "connectedTo": m6,
    "contactUs": MessageLookupByLibrary.simpleMessage("Liên hệ"),
    "contactUsKeepInfo": MessageLookupByLibrary.simpleMessage(
      "Vui lòng không xóa thông tin bên dưới.",
    ),
    "couldNotGetVideoLink": MessageLookupByLibrary.simpleMessage(
      "Không lấy được liên kết video",
    ),
    "couldNotLoadEpisodes": MessageLookupByLibrary.simpleMessage(
      "Không tải được danh sách tập",
    ),
    "couldNotLoadPlaylist": MessageLookupByLibrary.simpleMessage(
      "Không tải được danh sách phát",
    ),
    "couldNotOpenLink": MessageLookupByLibrary.simpleMessage(
      "Không mở được liên kết",
    ),
    "couldNotReadQuality": MessageLookupByLibrary.simpleMessage(
      "Không đọc được các tùy chọn chất lượng từ trang.",
    ),
    "delete": MessageLookupByLibrary.simpleMessage("Xóa"),
    "disconnect": MessageLookupByLibrary.simpleMessage("Ngắt kết nối"),
    "disconnectPhone": MessageLookupByLibrary.simpleMessage(
      "Ngắt kết nối điện thoại này",
    ),
    "disconnectPhoneMessage": MessageLookupByLibrary.simpleMessage(
      "Điện thoại này sẽ không còn điều khiển máy tính của bạn. Để kết nối lại, hãy quét mã QR trên máy tính.",
    ),
    "down": MessageLookupByLibrary.simpleMessage("Xuống"),
    "endOfVideo": MessageLookupByLibrary.simpleMessage("Khi hết video"),
    "enterValidLink": MessageLookupByLibrary.simpleMessage(
      "Nhập liên kết bắt đầu bằng http hoặc https",
    ),
    "episodes": MessageLookupByLibrary.simpleMessage("Tập"),
    "error": MessageLookupByLibrary.simpleMessage("Lỗi"),
    "errorButtonNotFound": MessageLookupByLibrary.simpleMessage(
      "Không tìm thấy nút đó trên trang",
    ),
    "errorDuringAd": MessageLookupByLibrary.simpleMessage(
      "Không thể thực hiện khi đang có quảng cáo",
    ),
    "errorEndBeforeStart": MessageLookupByLibrary.simpleMessage(
      "Điểm kết thúc phải ở sau điểm bắt đầu",
    ),
    "errorGeneric": MessageLookupByLibrary.simpleMessage("Đã xảy ra sự cố"),
    "errorInvalidUrl": MessageLookupByLibrary.simpleMessage(
      "Không thể mở liên kết này",
    ),
    "errorNoBrowser": MessageLookupByLibrary.simpleMessage(
      "Chưa chọn trình duyệt",
    ),
    "errorNoMedia": MessageLookupByLibrary.simpleMessage(
      "Không có video nào đang phát",
    ),
    "errorNotChanged": MessageLookupByLibrary.simpleMessage(
      "Trang web chưa áp dụng thay đổi",
    ),
    "errorNotSupported": MessageLookupByLibrary.simpleMessage(
      "Trang web này không hỗ trợ thao tác đó",
    ),
    "errorStartAfterEnd": MessageLookupByLibrary.simpleMessage(
      "Điểm bắt đầu phải ở trước điểm kết thúc",
    ),
    "errorTabClosed": MessageLookupByLibrary.simpleMessage("Thẻ đó đã đóng"),
    "exitFullScreen": MessageLookupByLibrary.simpleMessage(
      "Thoát toàn màn hình",
    ),
    "extensionUpdatedReload": MessageLookupByLibrary.simpleMessage(
      "Tiện ích Zappit đã được cập nhật. Hãy tải lại trang trong trình duyệt trên máy tính để tiếp tục dùng mọi nút điều khiển.",
    ),
    "faq": MessageLookupByLibrary.simpleMessage("Câu hỏi thường gặp"),
    "favorites": MessageLookupByLibrary.simpleMessage("Yêu thích"),
    "favoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "Chạm vào ngôi sao của một trang web để thêm vào đây.",
    ),
    "forwardSeconds": m7,
    "frameByFrame": MessageLookupByLibrary.simpleMessage("Từng khung hình"),
    "freeTrial": MessageLookupByLibrary.simpleMessage("Dùng thử miễn phí"),
    "freeTrialDays": m8,
    "freeTrialMonths": m9,
    "freeTrialWeeks": m10,
    "freeTrialYears": m11,
    "fullPowerUnlocked": MessageLookupByLibrary.simpleMessage(
      "Đã mở khóa mọi tính năng",
    ),
    "fullScreen": MessageLookupByLibrary.simpleMessage("Toàn màn hình"),
    "generalSettings": MessageLookupByLibrary.simpleMessage("Cài đặt chung"),
    "gotIt": MessageLookupByLibrary.simpleMessage("Đã hiểu"),
    "hideChat": MessageLookupByLibrary.simpleMessage("Ẩn trò chuyện"),
    "home": MessageLookupByLibrary.simpleMessage("Trang chủ"),
    "justPerMonth": m12,
    "largerCaptions": MessageLookupByLibrary.simpleMessage("Phụ đề lớn hơn"),
    "lastVideoInPlaylist": MessageLookupByLibrary.simpleMessage(
      "Đây là video cuối cùng trong danh sách phát",
    ),
    "learnMore": MessageLookupByLibrary.simpleMessage("Tìm hiểu thêm"),
    "left": MessageLookupByLibrary.simpleMessage("Trái"),
    "linkPanelHint": MessageLookupByLibrary.simpleMessage(
      "Dán liên kết video rồi chạm “Gửi”. Video sẽ mở trong thẻ mới trên trình duyệt của bạn.",
    ),
    "liveBadge": MessageLookupByLibrary.simpleMessage("TRỰC TIẾP"),
    "liveCantRewind": MessageLookupByLibrary.simpleMessage(
      "Không thể tua lại video trực tiếp này",
    ),
    "longPressSpeed": MessageLookupByLibrary.simpleMessage(
      "Tốc độ khi nhấn giữ",
    ),
    "loopEnd": MessageLookupByLibrary.simpleMessage("Điểm kết thúc lặp"),
    "loopOff": MessageLookupByLibrary.simpleMessage("Đã tắt lặp lại"),
    "loopOn": MessageLookupByLibrary.simpleMessage("Đã bật lặp lại"),
    "loopStart": MessageLookupByLibrary.simpleMessage("Điểm bắt đầu lặp"),
    "manageSubscription": MessageLookupByLibrary.simpleMessage(
      "Quản lý gói đăng ký",
    ),
    "minutesCount": m13,
    "minutesShort": m14,
    "mixCantRepeat": MessageLookupByLibrary.simpleMessage(
      "Danh sách này phát video mới liên tục không dừng nên không thể lặp lại",
    ),
    "mixCantShuffle": MessageLookupByLibrary.simpleMessage(
      "Danh sách này phát video mới liên tục không dừng nên không thể phát ngẫu nhiên",
    ),
    "monthly": MessageLookupByLibrary.simpleMessage("Hằng tháng"),
    "multipleBrowsersMessage": MessageLookupByLibrary.simpleMessage(
      "Có nhiều trình duyệt đang trực tuyến. Hãy chọn trình duyệt bạn muốn điều khiển.",
    ),
    "mute": MessageLookupByLibrary.simpleMessage("Tắt tiếng"),
    "nextChapter": MessageLookupByLibrary.simpleMessage("Chương tiếp theo"),
    "nextEpisode": MessageLookupByLibrary.simpleMessage("Tập tiếp theo"),
    "nextTab": MessageLookupByLibrary.simpleMessage("Thẻ tiếp theo"),
    "nextVideo": MessageLookupByLibrary.simpleMessage("Video tiếp theo"),
    "noBrowser": MessageLookupByLibrary.simpleMessage("Không có trình duyệt"),
    "noBrowserConnectedShare": MessageLookupByLibrary.simpleMessage(
      "Chưa có trình duyệt nào được kết nối. Hãy mở trình duyệt có tiện ích Zappit rồi thử lại.",
    ),
    "noBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "1. Mở trình duyệt đã kết nối trên máy tính.\n2. Nếu chưa kết nối được, hãy nhấp vào biểu tượng Zappit trên thanh công cụ của trình duyệt.",
    ),
    "noBrowserOnline": MessageLookupByLibrary.simpleMessage(
      "Không có trình duyệt nào trực tuyến.",
    ),
    "noBrowserOnlineShort": MessageLookupByLibrary.simpleMessage(
      "Không có trình duyệt trực tuyến",
    ),
    "noBrowserSelected": MessageLookupByLibrary.simpleMessage(
      "Chưa chọn trình duyệt",
    ),
    "noCategoriesFound": MessageLookupByLibrary.simpleMessage(
      "Không tìm thấy thể loại",
    ),
    "noLinkInShare": MessageLookupByLibrary.simpleMessage(
      "Không tìm thấy liên kết trong nội dung bạn chia sẻ",
    ),
    "noMoreTabs": MessageLookupByLibrary.simpleMessage("Không còn thẻ nào"),
    "noNextEpisode": MessageLookupByLibrary.simpleMessage(
      "Không có tập tiếp theo",
    ),
    "noOpenTabs": MessageLookupByLibrary.simpleMessage(
      "Không có thẻ nào đang mở",
    ),
    "noPreviousPage": MessageLookupByLibrary.simpleMessage(
      "Không có trang trước để quay lại",
    ),
    "noSiteSettings": MessageLookupByLibrary.simpleMessage(
      "Chưa có cài đặt nào cho trang web này.",
    ),
    "noSubtitles": MessageLookupByLibrary.simpleMessage(
      "Video này không có phụ đề",
    ),
    "noThanks": MessageLookupByLibrary.simpleMessage("Không, cảm ơn"),
    "noVideosOnPage": MessageLookupByLibrary.simpleMessage(
      "Trang đang mở trên trình duyệt không có video.",
    ),
    "notAvailableDuringAd": MessageLookupByLibrary.simpleMessage(
      "Không khả dụng khi đang có quảng cáo",
    ),
    "notAvailableForLive": MessageLookupByLibrary.simpleMessage(
      "Không dùng được với video trực tiếp",
    ),
    "notAvailableForLiveStreams": MessageLookupByLibrary.simpleMessage(
      "Không khả dụng cho video phát trực tiếp",
    ),
    "notAvailableForPhotos": MessageLookupByLibrary.simpleMessage(
      "Không khả dụng cho bài đăng ảnh",
    ),
    "notConnected": MessageLookupByLibrary.simpleMessage("Chưa kết nối"),
    "nothingPlaying": MessageLookupByLibrary.simpleMessage(
      "Không tìm thấy video",
    ),
    "nothingPlayingMessage": MessageLookupByLibrary.simpleMessage(
      "Thẻ đang mở trên trình duyệt không có video. Hãy chọn thẻ khác hoặc dán liên kết video.",
    ),
    "nothingToRestore": MessageLookupByLibrary.simpleMessage(
      "Không có gì để khôi phục",
    ),
    "nothingToRestoreMessage": MessageLookupByLibrary.simpleMessage(
      "Không tìm thấy gói Zappit Pro nào đang hoạt động cho tài khoản này.",
    ),
    "obAnimAddExtension": MessageLookupByLibrary.simpleMessage("Thêm tiện ích"),
    "obAnimAdded": MessageLookupByLibrary.simpleMessage("Đã thêm"),
    "obAnimConnectComputer": MessageLookupByLibrary.simpleMessage(
      "Kết nối với máy tính",
    ),
    "obAnimConnectPhone": MessageLookupByLibrary.simpleMessage(
      "Kết nối điện thoại",
    ),
    "obAnimNewCode": m15,
    "obAnimRemoteConnected": MessageLookupByLibrary.simpleMessage(
      "Đã kết nối điều khiển",
    ),
    "obAnimScanCode": MessageLookupByLibrary.simpleMessage(
      "Quét mã này bằng ứng dụng Zappit trên điện thoại.",
    ),
    "obAnimTagline": MessageLookupByLibrary.simpleMessage("Tạm biệt chuột."),
    "obAnimYourPhones": MessageLookupByLibrary.simpleMessage(
      "Điện thoại của bạn",
    ),
    "off": MessageLookupByLibrary.simpleMessage("Tắt"),
    "offline": MessageLookupByLibrary.simpleMessage("Ngoại tuyến"),
    "offlineMessage": MessageLookupByLibrary.simpleMessage(
      "Hãy kiểm tra kết nối Internet. Zappit sẽ tự kết nối lại.",
    ),
    "onboarding0AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Chạm nút phát/tạm dừng trong ứng dụng Zappit sẽ tạm dừng rồi phát tiếp video trên máy tính xách tay",
    ),
    "onboarding1AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Nhập zappit.tv/get vào trình duyệt và thêm tiện ích Zappit",
    ),
    "onboarding1Body": m16,
    "onboarding1Title": MessageLookupByLibrary.simpleMessage(
      "Trước tiên, hãy thêm tiện ích Zappit vào trình duyệt",
    ),
    "onboarding2AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Nhấp vào biểu tượng Zappit trong trình duyệt, rồi quét mã QR bằng điện thoại",
    ),
    "onboarding2Body": MessageLookupByLibrary.simpleMessage(
      "Nhấp vào biểu tượng Zappit trên thanh công cụ của trình duyệt, rồi quét mã QR. Sau khi kết nối, hãy phát một video YouTube và xem điều kỳ diệu xảy ra!",
    ),
    "onboarding2Title": MessageLookupByLibrary.simpleMessage("Quét mã QR"),
    "onboardingGetStarted": MessageLookupByLibrary.simpleMessage("Bắt đầu"),
    "onboardingIconHelp": MessageLookupByLibrary.simpleMessage(
      "Không thấy biểu tượng Zappit?",
    ),
    "onboardingIconHelpLabel": MessageLookupByLibrary.simpleMessage(
      "Không thấy biểu tượng Zappit? Mở câu trả lời trong Câu hỏi thường gặp",
    ),
    "onboardingNext": MessageLookupByLibrary.simpleMessage("Tiếp"),
    "onboardingOpenQrScanner": MessageLookupByLibrary.simpleMessage(
      "Mở trình quét mã QR",
    ),
    "onboardingShareLink": MessageLookupByLibrary.simpleMessage(
      "Gửi liên kết cài đặt",
    ),
    "onboardingStepCount": m17,
    "onboardingStepLabel": m18,
    "onboardingWelcomeBody": MessageLookupByLibrary.simpleMessage(
      "Điều khiển mọi video trong trình duyệt. Chỉ cần hai bước nhanh chóng để thiết lập.",
    ),
    "onboardingWelcomeTitle": MessageLookupByLibrary.simpleMessage(
      "Điện thoại giờ là điều khiển của bạn",
    ),
    "openALink": MessageLookupByLibrary.simpleMessage("Mở liên kết"),
    "openBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "Hãy mở trình duyệt có tiện ích Zappit để xem các thẻ đang mở.",
    ),
    "openLinkInBrowser": MessageLookupByLibrary.simpleMessage(
      "Mở liên kết trong trình duyệt",
    ),
    "openSite": m19,
    "openedIn": m20,
    "openingIn": m21,
    "pairCodeExpired": MessageLookupByLibrary.simpleMessage(
      "Mã này đã hết hạn. Hãy quét mã mới trên máy tính.",
    ),
    "pairCodeInvalid": MessageLookupByLibrary.simpleMessage(
      "Mã này không còn hợp lệ. Hãy quét mã mới trên máy tính.",
    ),
    "pairCodeUsed": MessageLookupByLibrary.simpleMessage(
      "Mã này đã được dùng. Hãy quét mã mới trên máy tính.",
    ),
    "pairFailed": MessageLookupByLibrary.simpleMessage(
      "Không kết nối được. Hãy kiểm tra kết nối Internet rồi thử lại.",
    ),
    "pairHowToInstall": MessageLookupByLibrary.simpleMessage(
      "Cách cài đặt tiện ích",
    ),
    "pairPhoneLimit": MessageLookupByLibrary.simpleMessage(
      "Máy tính này đã kết nối với 3 điện thoại. Hãy mở Zappit trên một trong các điện thoại khác đang kết nối và chạm “Ngắt kết nối điện thoại này” trong “Thêm”. Nếu không thể dùng các điện thoại khác, hãy nhấp “Đặt lại” trong “Cài đặt” của tiện ích Zappit trên máy tính.",
    ),
    "pairTitle": MessageLookupByLibrary.simpleMessage(
      "Kết nối với tiện ích trình duyệt",
    ),
    "paste": MessageLookupByLibrary.simpleMessage("Dán"),
    "pasteALink": MessageLookupByLibrary.simpleMessage("Dán liên kết"),
    "pasteVideoLink": MessageLookupByLibrary.simpleMessage(
      "Dán liên kết video",
    ),
    "pause": MessageLookupByLibrary.simpleMessage("Tạm dừng"),
    "paymentPending": MessageLookupByLibrary.simpleMessage(
      "Đang chờ thanh toán",
    ),
    "paymentPendingMessage": MessageLookupByLibrary.simpleMessage(
      "Pro sẽ được bật ngay khi thanh toán của bạn được xác nhận.",
    ),
    "phoneName": MessageLookupByLibrary.simpleMessage("Tên điện thoại"),
    "phoneNameEmpty": MessageLookupByLibrary.simpleMessage("Nhập tên."),
    "phoneNameMessage": MessageLookupByLibrary.simpleMessage(
      "Hiển thị trong tiện ích Zappit trên máy tính của bạn.",
    ),
    "pickATab": MessageLookupByLibrary.simpleMessage("Chọn thẻ"),
    "pickBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "Hãy chọn trình duyệt bạn muốn điều khiển để xem các thẻ đang mở.",
    ),
    "pickVideosWithPro": MessageLookupByLibrary.simpleMessage(
      "Chọn video từ điện thoại với Pro",
    ),
    "play": MessageLookupByLibrary.simpleMessage("Phát"),
    "playInApp": MessageLookupByLibrary.simpleMessage(
      "Xem tiếp trên điện thoại",
    ),
    "playNow": MessageLookupByLibrary.simpleMessage("Phát ngay"),
    "playVideoFirst": MessageLookupByLibrary.simpleMessage(
      "Hãy phát một video trong trình duyệt trước",
    ),
    "playing": MessageLookupByLibrary.simpleMessage("Đang phát"),
    "playlist": MessageLookupByLibrary.simpleMessage("Danh sách phát"),
    "playlistCantRepeat": MessageLookupByLibrary.simpleMessage(
      "Không thể lặp lại danh sách này",
    ),
    "playlistCantShuffle": MessageLookupByLibrary.simpleMessage(
      "Không thể phát ngẫu nhiên danh sách này",
    ),
    "previousChapter": MessageLookupByLibrary.simpleMessage("Chương trước"),
    "previousTab": MessageLookupByLibrary.simpleMessage("Thẻ trước"),
    "previousVideo": MessageLookupByLibrary.simpleMessage("Video trước"),
    "pricePerMonth": m22,
    "pricePerYear": m23,
    "privacyPolicy": MessageLookupByLibrary.simpleMessage(
      "Chính sách quyền riêng tư",
    ),
    "proBannerSubtitle": MessageLookupByLibrary.simpleMessage(
      "Khai thác toàn bộ sức mạnh của điều khiển",
    ),
    "proFeatureAbLoop": MessageLookupByLibrary.simpleMessage(
      "Dùng A-B Loop không giới hạn",
    ),
    "proFeatureAllSpeeds": MessageLookupByLibrary.simpleMessage(
      "Chọn mọi tốc độ phát",
    ),
    "proFeatureDedicatedControllers": MessageLookupByLibrary.simpleMessage(
      "Mở khóa điều khiển riêng cho từng trang web",
    ),
    "proFeatureFullLoop": MessageLookupByLibrary.simpleMessage(
      "Lặp lại cả video không giới hạn",
    ),
    "proFeatureVoiceBoost": MessageLookupByLibrary.simpleMessage(
      "Dùng Voice Boost không giới hạn",
    ),
    "proPreviewActiveBanner": m24,
    "proPreviewEndedMessage": MessageLookupByLibrary.simpleMessage(
      "Bạn thấy Zappit Pro thế nào? Hãy đăng ký để tiếp tục dùng mọi tính năng Pro không gián đoạn.",
    ),
    "proPreviewEndedSubtitle": m25,
    "proPreviewEndedTitle": MessageLookupByLibrary.simpleMessage(
      "Trải nghiệm Pro miễn phí đã kết thúc",
    ),
    "proPreviewEndsTomorrow": MessageLookupByLibrary.simpleMessage(
      "Trải nghiệm Pro miễn phí sẽ kết thúc vào ngày mai",
    ),
    "proPreviewStarted": m26,
    "proPreviewUntil": m27,
    "proRestored": m28,
    "proSubscriptionEnded": MessageLookupByLibrary.simpleMessage(
      "Gói Pro của bạn đã kết thúc",
    ),
    "proSubtitle": MessageLookupByLibrary.simpleMessage(
      "Khai thác toàn bộ sức mạnh của điều khiển.",
    ),
    "purchaseCancelled": MessageLookupByLibrary.simpleMessage(
      "Đã hủy giao dịch mua",
    ),
    "purchaseCancelledMessage": MessageLookupByLibrary.simpleMessage(
      "Bạn chưa bị trừ tiền. Bạn có thể thử lại bất cứ lúc nào.",
    ),
    "purchaseFailed": MessageLookupByLibrary.simpleMessage(
      "Giao dịch mua thất bại",
    ),
    "purchaseNotActivated": MessageLookupByLibrary.simpleMessage(
      "Giao dịch mua chưa được kích hoạt",
    ),
    "purchaseNotActivatedMessage": MessageLookupByLibrary.simpleMessage(
      "Thanh toán đã thành công nhưng Pro chưa được kích hoạt. Hãy thử “Khôi phục giao dịch mua”.",
    ),
    "purchasesNotAllowed": MessageLookupByLibrary.simpleMessage(
      "Thiết bị hoặc tài khoản này không được phép mua hàng.",
    ),
    "qualityNotChanged": MessageLookupByLibrary.simpleMessage(
      "Chất lượng không thay đổi",
    ),
    "rateZappit": MessageLookupByLibrary.simpleMessage("Đánh giá Zappit"),
    "reload": MessageLookupByLibrary.simpleMessage("Tải lại"),
    "remindMe": MessageLookupByLibrary.simpleMessage("Nhắc tôi"),
    "remoteSettings": MessageLookupByLibrary.simpleMessage(
      "Cài đặt điều khiển",
    ),
    "removeFromFavorites": m29,
    "removedFromFavorites": m30,
    "reorderHint": MessageLookupByLibrary.simpleMessage(
      "Chạm và giữ một mục rồi kéo để sắp xếp lại",
    ),
    "reorderSite": m31,
    "repeatOff": MessageLookupByLibrary.simpleMessage("Đã tắt lặp lại"),
    "repeatOffNotice": MessageLookupByLibrary.simpleMessage("Đã tắt lặp lại"),
    "repeatOn": MessageLookupByLibrary.simpleMessage("Đã bật lặp lại"),
    "repeatingPlaylist": MessageLookupByLibrary.simpleMessage(
      "Đang lặp lại danh sách này",
    ),
    "replay": MessageLookupByLibrary.simpleMessage("Phát lại từ đầu"),
    "restoreFailed": MessageLookupByLibrary.simpleMessage("Khôi phục thất bại"),
    "restorePurchases": MessageLookupByLibrary.simpleMessage(
      "Khôi phục giao dịch mua",
    ),
    "right": MessageLookupByLibrary.simpleMessage("Phải"),
    "save": MessageLookupByLibrary.simpleMessage("Lưu"),
    "savePercent": m32,
    "searchCategories": MessageLookupByLibrary.simpleMessage("Tìm thể loại"),
    "seasonNumber": m33,
    "secondsShort": m34,
    "seekInterval": MessageLookupByLibrary.simpleMessage("Khoảng tua"),
    "select": MessageLookupByLibrary.simpleMessage("Chọn"),
    "selectVideoInBrowser": MessageLookupByLibrary.simpleMessage(
      "Không có gì đang phát",
    ),
    "selectVideoInBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "Nhấp vào video bất kỳ trên máy tính để bắt đầu xem. Điều khiển sẽ xuất hiện ở đây.",
    ),
    "send": MessageLookupByLibrary.simpleMessage("Gửi"),
    "settings": MessageLookupByLibrary.simpleMessage("Cài đặt"),
    "showChat": MessageLookupByLibrary.simpleMessage("Hiện trò chuyện"),
    "shuffleOff": MessageLookupByLibrary.simpleMessage(
      "Đã tắt phát ngẫu nhiên",
    ),
    "shuffleOffNotice": MessageLookupByLibrary.simpleMessage(
      "Đã tắt phát ngẫu nhiên",
    ),
    "shuffleOn": MessageLookupByLibrary.simpleMessage("Đã bật phát ngẫu nhiên"),
    "shufflingPlaylist": MessageLookupByLibrary.simpleMessage(
      "Đang phát ngẫu nhiên danh sách này",
    ),
    "siteSettings": m35,
    "siteWeb": MessageLookupByLibrary.simpleMessage("Web"),
    "skipAd": MessageLookupByLibrary.simpleMessage("Bỏ qua quảng cáo"),
    "skipIntro": MessageLookupByLibrary.simpleMessage("Bỏ qua phần mở đầu"),
    "sleepTimer": MessageLookupByLibrary.simpleMessage("Hẹn giờ tắt"),
    "sleepTimerLabel": MessageLookupByLibrary.simpleMessage("Hẹn giờ tắt"),
    "smallerCaptions": MessageLookupByLibrary.simpleMessage("Phụ đề nhỏ hơn"),
    "soundBlockedMessage": MessageLookupByLibrary.simpleMessage(
      "Chạm để xem cách bật âm thanh.",
    ),
    "soundBlockedTitle": MessageLookupByLibrary.simpleMessage(
      "Sao không nghe thấy gì?",
    ),
    "soundHelpTitle": MessageLookupByLibrary.simpleMessage("Âm thanh"),
    "speedTrialOver": m36,
    "startFreeTrial": MessageLookupByLibrary.simpleMessage(
      "Bắt đầu dùng thử miễn phí",
    ),
    "storeProblem": MessageLookupByLibrary.simpleMessage(
      "Đã xảy ra sự cố khi mua. Vui lòng thử lại sau giây lát.",
    ),
    "storeUnavailable": MessageLookupByLibrary.simpleMessage(
      "Hiện chưa thể mua gói đăng ký. Vui lòng thử lại sau.",
    ),
    "subscribe": MessageLookupByLibrary.simpleMessage("Đăng ký"),
    "success": MessageLookupByLibrary.simpleMessage("Thành công"),
    "support": MessageLookupByLibrary.simpleMessage("Hỗ trợ"),
    "supportedSites": MessageLookupByLibrary.simpleMessage(
      "Trang web được hỗ trợ",
    ),
    "supportedSitesIntro": MessageLookupByLibrary.simpleMessage(
      "Các trang web này có điều khiển được thiết kế riêng. Trên các trang web khác, Zappit hoạt động như một điều khiển thông thường.",
    ),
    "tabMore": MessageLookupByLibrary.simpleMessage("Thêm"),
    "tabRemote": MessageLookupByLibrary.simpleMessage("Điều khiển"),
    "tabTabs": MessageLookupByLibrary.simpleMessage("Thẻ"),
    "tapToKeepPro": MessageLookupByLibrary.simpleMessage(
      "Chạm để tiếp tục dùng mọi tính năng Pro.",
    ),
    "tellAFriend": MessageLookupByLibrary.simpleMessage(
      "Giới thiệu cho bạn bè",
    ),
    "termsOfService": MessageLookupByLibrary.simpleMessage(
      "Điều khoản dịch vụ",
    ),
    "theaterMode": MessageLookupByLibrary.simpleMessage(
      "Chế độ rạp chiếu phim",
    ),
    "trialReminderBody": m37,
    "trialReminderChannel": MessageLookupByLibrary.simpleMessage(
      "Nhắc trước khi hết dùng thử miễn phí",
    ),
    "trialReminderChannelDescription": MessageLookupByLibrary.simpleMessage(
      "Lời nhắc trước khi thời gian dùng thử miễn phí kết thúc",
    ),
    "trialReminderMessage": MessageLookupByLibrary.simpleMessage(
      "Bạn có muốn được nhắc một ngày trước khi thời gian dùng thử miễn phí kết thúc để không bị trừ tiền bất ngờ không?",
    ),
    "trialReminderNotificationTitle": MessageLookupByLibrary.simpleMessage(
      "Thời gian dùng thử Zappit Pro sắp kết thúc",
    ),
    "trialReminderTitle": MessageLookupByLibrary.simpleMessage(
      "Nhắc trước khi hết dùng thử",
    ),
    "trialTerms": m38,
    "trialTermsDays": m39,
    "trialTermsMonths": m40,
    "trialTermsYears": m41,
    "tryAgain": MessageLookupByLibrary.simpleMessage("Thử lại"),
    "turnOffAbFirst": MessageLookupByLibrary.simpleMessage(
      "Hãy tắt A-B Loop trước",
    ),
    "tutorial": MessageLookupByLibrary.simpleMessage("Hướng dẫn"),
    "unavailable": MessageLookupByLibrary.simpleMessage("Không khả dụng"),
    "undo": MessageLookupByLibrary.simpleMessage("Hoàn tác"),
    "unmute": MessageLookupByLibrary.simpleMessage("Bật tiếng"),
    "untitled": MessageLookupByLibrary.simpleMessage("Không có tiêu đề"),
    "up": MessageLookupByLibrary.simpleMessage("Lên"),
    "upNext": MessageLookupByLibrary.simpleMessage("Tiếp theo"),
    "upNextCountdown": m42,
    "upgrade": MessageLookupByLibrary.simpleMessage("Nâng cấp"),
    "videoLengthUnknown": MessageLookupByLibrary.simpleMessage(
      "Không rõ độ dài của video này",
    ),
    "videoQuality": MessageLookupByLibrary.simpleMessage("Chất lượng video"),
    "view": MessageLookupByLibrary.simpleMessage("Xem"),
    "voiceBoostDuringAd": MessageLookupByLibrary.simpleMessage(
      "Không dùng được Voice Boost khi đang có quảng cáo",
    ),
    "voiceBoostOff": MessageLookupByLibrary.simpleMessage("Đã tắt Voice Boost"),
    "voiceBoostOn": MessageLookupByLibrary.simpleMessage("Đã bật Voice Boost"),
    "voiceBoostTrialLeft": m43,
    "voiceBoostTrialOver": m44,
    "voiceBoostTurnedOn": MessageLookupByLibrary.simpleMessage(
      "Đã bật Voice Boost: giọng nói rõ hơn",
    ),
    "voiceBoostUnsupported": MessageLookupByLibrary.simpleMessage(
      "Video này không hỗ trợ Voice Boost",
    ),
    "volumeDown": MessageLookupByLibrary.simpleMessage("Giảm âm lượng"),
    "volumeUp": MessageLookupByLibrary.simpleMessage("Tăng âm lượng"),
    "waitingForBrowser": MessageLookupByLibrary.simpleMessage(
      "Đang chờ trình duyệt của bạn…",
    ),
    "watchAgain": MessageLookupByLibrary.simpleMessage("Xem lại"),
    "watching": MessageLookupByLibrary.simpleMessage("Đang xem"),
    "welcomeToPro": m45,
    "windowNumber": m46,
    "yearly": MessageLookupByLibrary.simpleMessage("Hằng năm"),
    "yourBrowser": MessageLookupByLibrary.simpleMessage("trình duyệt của bạn"),
    "youreConnected": MessageLookupByLibrary.simpleMessage("Đã kết nối!"),
    "youreOffline": MessageLookupByLibrary.simpleMessage(
      "Bạn đang ngoại tuyến",
    ),
    "youtubeHome": MessageLookupByLibrary.simpleMessage("Trang chủ YouTube"),
    "ytCourses": MessageLookupByLibrary.simpleMessage("Khóa học"),
    "ytDownloads": MessageLookupByLibrary.simpleMessage("Nội dung tải xuống"),
    "ytExplore": MessageLookupByLibrary.simpleMessage("Khám phá"),
    "ytGaming": MessageLookupByLibrary.simpleMessage("Trò chơi"),
    "ytHistory": MessageLookupByLibrary.simpleMessage("Video đã xem"),
    "ytHype": MessageLookupByLibrary.simpleMessage("Hype"),
    "ytLikedVideos": MessageLookupByLibrary.simpleMessage("Video đã thích"),
    "ytLive": MessageLookupByLibrary.simpleMessage("Trực tiếp"),
    "ytMemberships": MessageLookupByLibrary.simpleMessage("Gói hội viên"),
    "ytMusic": MessageLookupByLibrary.simpleMessage("Âm nhạc"),
    "ytPlaylists": MessageLookupByLibrary.simpleMessage("Danh sách phát"),
    "ytPodcasts": MessageLookupByLibrary.simpleMessage("Podcast"),
    "ytShorts": MessageLookupByLibrary.simpleMessage("Shorts"),
    "ytSubscriptions": MessageLookupByLibrary.simpleMessage("Kênh đăng ký"),
    "ytVideos": MessageLookupByLibrary.simpleMessage("Video"),
    "ytWatchLater": MessageLookupByLibrary.simpleMessage("Xem sau"),
    "ytYou": MessageLookupByLibrary.simpleMessage("Bạn"),
  };
}
