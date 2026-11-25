# 베트남어(vi) 번역 검토 결과

전체 347개 문구 중 38개를 고쳤다. 가장 큰 문제는 Pro preview를 "Bản trải nghiệm Pro"('Pro 체험판')라는 직역어로 부르고 일부 문구(proPreviewEndedMessage)에서는 스토어 체험 용어 "dùng thử"를 섞어 쓴 점이라, Pro preview는 "trải nghiệm Pro miễn phí", 스토어 무료 체험은 "dùng thử miễn phí"로 나눠 통일했다. 그 밖에 결제 문구의 "cửa hàng"(스토어)·"tài khoản cửa hàng"(스토어 계정) 제거, "Chào mừng…"·"Cảm ơn bạn đã dùng thử"·"Không cần thẻ tín dụng" 같은 영어식 표현 정리, 폰에 보이는 "trang này/màn hình này"(이 페이지/이 화면)와 "của nó"(그것의) 같은 모호한 지시어를 고쳤다.

| 키 | 수정 전 | 수정 후 | 문제 | menu-name |
|---|---|---|---|---|
| errorNotChanged | Trang web không thay đổi | Trang web chưa áp dụng thay đổi | "Trang web không thay đổi"는 '웹사이트 자체가 바뀌지 않았다'로 읽힘. 사이트가 변경을 적용하지 않았다는 뜻을 분명히 함 (원칙 6) | no |
| proFeatureDedicatedControllers | Mở khóa điều khiển riêng cho từng trang | Mở khóa điều khiển riêng cho từng trang web | "từng trang"은 페이지/사이트가 모호함. "trang web"(웹사이트)로 범위를 정확히 (원칙 6) | no |
| proFeatureAllSpeeds | Mọi tốc độ phát | Chọn mọi tốc độ phát | 명사 나열이라 혜택이 안 보임. '모든 재생 속도 선택 가능'으로 할 수 있는 일을 씀 (원칙 6) | no |
| proFeatureVoiceBoost | Voice Boost không giới hạn | Dùng Voice Boost không giới hạn | 베트남어는 수식어가 뒤에 오는 언어라 "không giới hạn"을 뒤에 두는 것이 자연스러운 어순. 대신 동사(Dùng)를 앞에 붙여 목록 전체를 '동사+대상+무제한' 형태로 맞추고 혜택이 보이게 함 (원칙 5, 6) | no |
| proFeatureAbLoop | A-B Loop không giới hạn | Dùng A-B Loop không giới hạn | 위와 같은 이유로 동사를 붙여 목록 형식 통일 (원칙 5, 6) | no |
| storeUnavailable | Cửa hàng hiện không khả dụng. Vui lòng thử lại sau. | Hiện chưa thể mua gói đăng ký. Vui lòng thử lại sau. | "Cửa hàng"(스토어)는 사용자가 모르는 내부 용어. '지금은 구독을 구매할 수 없음'으로 결과를 씀 (원칙 2) | no |
| welcomeToPro | Chào mừng bạn đến với {proName} | Đã nâng cấp lên {proName}! | "Chào mừng bạn đến với"(환영합니다) 직역 대신 결과를 알리는 '{proName}로 업그레이드 완료!'로 (원칙 3) | no |
| proPreviewEndedSubtitle | Bản trải nghiệm Pro của bạn đã kết thúc. Giữ mọi tính năng Pro với {proName}. | Thời gian trải nghiệm Pro miễn phí đã kết thúc. Tiếp tục dùng mọi tính năng Pro với {proName}. | "Bản trải nghiệm"('체험판 버전')은 직역으로 생긴 어색한 말. Pro preview 용어를 "trải nghiệm Pro miễn phí"(Pro 무료 체험)로 통일. "Giữ"(보관하다) 직역도 '계속 이용'으로 (원칙 1, 4) | no |
| proPreviewActiveBanner | Bản trải nghiệm Pro miễn phí của bạn có hiệu lực đến {date}. Đăng ký trước khi hết hạn để tiếp tục dùng mọi tính năng Pro liền mạch. | Bạn đang trải nghiệm Pro miễn phí đến {date}. Hãy đăng ký trước khi kết thúc để tiếp tục dùng mọi tính năng Pro không gián đoạn. | 용어 통일("trải nghiệm Pro miễn phí"), "liền mạch"(seamless 직역) 대신 자연스러운 "không gián đoạn"(끊김 없이) (원칙 1, 4) | no |
| cancelAnytime | Hủy bất cứ lúc nào trong tài khoản cửa hàng. | Hủy bất cứ lúc nào trong phần quản lý gói đăng ký. | "tài khoản cửa hàng"(스토어 계정)은 사용자가 이해 못 하는 말. '구독 관리에서 언제든지 해지'로 (원칙 2) | no |
| proPreviewStarted | Dùng miễn phí mọi tính năng Zappit Pro trong {days} ngày. Không cần thẻ tín dụng, không tự động trừ tiền. | Trải nghiệm mọi tính năng Zappit Pro trong {days} ngày. Hoàn toàn miễn phí, không tự động trừ tiền. | "Không cần thẻ tín dụng"(카드 필요 없음) 관용구 직역 제거, '완전 무료, 자동 결제 없음'만 간결하게. Pro 무료 체험 용어(trải nghiệm) 사용 (원칙 4) | no |
| proPreviewEndsTomorrow | Bản trải nghiệm Pro kết thúc vào ngày mai | Trải nghiệm Pro miễn phí sẽ kết thúc vào ngày mai | "Bản trải nghiệm Pro" → 통일 용어 "Trải nghiệm Pro miễn phí" (원칙 1, 4) | no |
| tapToKeepPro | Chạm để giữ mọi tính năng Pro. | Chạm để tiếp tục dùng mọi tính năng Pro. | "giữ"(보관하다) 직역 → '계속 이용하려면 탭' (원칙 1) | no |
| proPreviewEndedTitle | Bản trải nghiệm Pro của bạn đã kết thúc | Trải nghiệm Pro miễn phí đã kết thúc | "Bản trải nghiệm Pro" → 통일 용어 (원칙 1, 4) | no |
| proPreviewEndedMessage | Cảm ơn bạn đã dùng thử Zappit Pro! Hãy đăng ký để tiếp tục dùng mọi tính năng Pro liền mạch. | Bạn thấy Zappit Pro thế nào? Hãy đăng ký để tiếp tục dùng mọi tính năng Pro không gián đoạn. | "Cảm ơn bạn đã dùng thử"(써 봐 주셔서 감사) 대신 'Zappit Pro 어떠셨나요?'. 또 "dùng thử"는 스토어 무료 체험 용어라 두 체험이 섞이지 않게 뺌. "liền mạch" → "không gián đoạn" (원칙 3, 4) | no |
| purchaseNotActivatedMessage | Thanh toán đã thành công nhưng Pro chưa được kích hoạt. Hãy thử Khôi phục giao dịch mua. | Thanh toán đã thành công nhưng Pro chưa được kích hoạt. Hãy thử “Khôi phục giao dịch mua”. | 문장 안의 버튼 이름을 따옴표로 묶어 무엇을 누를지 분명히 함 (원칙 6) | no |
| paymentPendingMessage | Pro sẽ bật ngay khi cửa hàng xác nhận thanh toán của bạn. | Pro sẽ được bật ngay khi thanh toán của bạn được xác nhận. | "cửa hàng"(스토어) 주어 제거: '결제가 확인되면 바로 Pro가 켜져요' (원칙 2) | no |
| nothingToRestoreMessage | Không tìm thấy gói Zappit Pro nào đang hoạt động cho tài khoản cửa hàng này. | Không tìm thấy gói Zappit Pro nào đang hoạt động cho tài khoản này. | "tài khoản cửa hàng"(스토어 계정) → "tài khoản này"(이 계정) (원칙 2) | no |
| alreadySubscribed | Bạn đã có gói đăng ký này. Hãy thử Khôi phục giao dịch mua. | Bạn đã có gói đăng ký này. Hãy thử “Khôi phục giao dịch mua”. | 버튼 이름을 따옴표로 묶음 (원칙 6) | no |
| storeProblem | Cửa hàng gặp sự cố. Vui lòng thử lại sau giây lát. | Đã xảy ra sự cố khi mua. Vui lòng thử lại sau giây lát. | "Cửa hàng gặp sự cố"(스토어에 문제) → '구매 중 문제가 발생' (원칙 2) | no |
| trialReminderTitle | Nhắc nhở dùng thử | Nhắc trước khi hết dùng thử | "Nhắc nhở dùng thử"는 '체험해 보라는 알림'으로도 읽힘. '체험이 끝나기 전 알림'으로 분명히 (원칙 6) | no |
| trialReminderChannel | Nhắc nhở dùng thử miễn phí | Nhắc trước khi hết dùng thử miễn phí | 위와 같은 이유. 알림 채널 이름도 같은 표현으로 통일 (원칙 6, 공통 규칙 용어 일치) | no |
| extensionUpdatedReload | Tiện ích Zappit đã được cập nhật. Hãy tải lại trang này để tiếp tục dùng mọi nút điều khiển. | Tiện ích Zappit đã được cập nhật. Hãy tải lại trang trong trình duyệt trên máy tính để tiếp tục dùng mọi nút điều khiển. | 폰에 보이는 문구인데 "trang này"(이 페이지)는 어느 페이지인지 모호함. '컴퓨터 브라우저의 페이지를 새로고침'으로 (원칙 6) | no |
| notAvailableForLive | Không dùng được khi phát trực tiếp | Không dùng được với video trực tiếp | "khi phát trực tiếp"은 '(내가) 라이브 방송할 때'로 읽힘. '라이브 영상에서는 사용 불가'로 (원칙 6) | no |
| theaterMode | Chế độ rạp hát | Chế độ rạp chiếu phim | YouTube 베트남어 공식 명칭은 "Chế độ rạp chiếu phim". "rạp hát"은 공연 극장 직역 (원칙 1). 접근성 라벨이라 메뉴명 아님 | no |
| multipleBrowsersMessage | Có nhiều trình duyệt đang trực tuyến. Hãy chọn trình duyệt mà điều khiển này sẽ điều khiển. | Có nhiều trình duyệt đang trực tuyến. Hãy chọn trình duyệt bạn muốn điều khiển. | "điều khiển này sẽ điều khiển"(이 리모컨이 제어할) 같은 단어 반복으로 어색함. '제어하고 싶은 브라우저를 고르세요'로 (원칙 5) | no |
| linkPanelHint | Dán liên kết video rồi chạm Gửi. Video sẽ mở trong thẻ mới trên trình duyệt của bạn. | Dán liên kết video rồi chạm “Gửi”. Video sẽ mở trong thẻ mới trên trình duyệt của bạn. | 문장 안 버튼 이름 "Gửi"를 따옴표로 묶음(베트남어 관례 “ ”) (공통 규칙 문장 부호) | no |
| noVideosOnPage | Trang này không có video. | Trang đang mở trên trình duyệt không có video. | 폰에 보이는 문구라 "Trang này"(이 페이지)가 모호함. '브라우저에 열린 페이지'로 (원칙 6) | no |
| nothingPlayingMessage | Không có video trên màn hình này. Hãy chọn thẻ khác hoặc dán liên kết video. | Thẻ đang mở trên trình duyệt không có video. Hãy chọn thẻ khác hoặc dán liên kết video. | "màn hình này"(이 화면)는 폰 화면으로 읽힘. '브라우저에 열린 탭'으로 대상 명확히 (원칙 6) | no |
| proPreviewUntil | Trải nghiệm Pro đến {date} | Trải nghiệm Pro miễn phí đến {date} | "miễn phí"(무료)가 빠져 있었음. Pro 무료 체험 용어로 통일 (원칙 1, 4) | no |
| noSiteSettings | Chưa có cài đặt nào cho trang này. | Chưa có cài đặt nào cho trang web này. | "trang này"(이 페이지) → "trang web này"(이 사이트). 사이트별 설정이라 범위를 정확히 (원칙 6) | no |
| supportedSitesIntro | Những trang này có điều khiển riêng được thiết kế cho chúng. Trên các trang khác, Zappit hoạt động như một điều khiển tiêu chuẩn. | Các trang web này có điều khiển được thiết kế riêng. Trên các trang web khác, Zappit hoạt động như một điều khiển thông thường. | "được thiết kế cho chúng"(그것들을 위해 설계된) 직역 대명사가 어색함. '전용으로 설계된 리모컨', "tiêu chuẩn" → 더 자연스러운 "thông thường" (원칙 1, 6) | no |
| pickBrowserForTabs | Chọn trình duyệt mà điều khiển này sẽ điều khiển để xem các thẻ của nó. | Hãy chọn trình duyệt bạn muốn điều khiển để xem các thẻ đang mở. | "điều khiển này sẽ điều khiển" 반복과 "của nó"(그것의) 직역 대명사 제거 (원칙 5, 6) | no |
| openBrowserForTabs | Mở trình duyệt có tiện ích Zappit để xem các thẻ của nó. | Hãy mở trình duyệt có tiện ích Zappit để xem các thẻ đang mở. | "các thẻ của nó"(그것의 탭) 대명사 제거 → '열린 탭' (원칙 6) | no |
| pairPhoneLimit | Máy tính này đã kết nối với 3 điện thoại. Hãy mở Zappit trên một trong các điện thoại khác đang kết nối và chạm ‘Ngắt kết nối điện thoại này’ trong ‘Thêm’. Nếu bạn không còn điện thoại đó, hãy dùng ‘Reset’ trong tiện ích Zappit trên máy tính của bạn. | Máy tính này đã kết nối với 3 điện thoại. Hãy mở Zappit trên một trong các điện thoại khác đang kết nối và chạm “Ngắt kết nối điện thoại này” trong “Thêm”. Nếu không thể dùng các điện thoại khác, hãy nhấp “Reset” trong tiện ích Zappit trên máy tính. | "Nếu bạn không còn điện thoại đó"(그 폰이 더 이상 없다면)의 '그 폰'이 모호함 → '다른 폰을 쓸 수 없다면'. "dùng ‘Reset’" → "nhấp “Reset”"(클릭), 따옴표를 베트남어 관례 “ ”로 (원칙 6, 공통 규칙). Reset은 확장 영어 라벨 그대로 | no |
| disconnectPhoneMessage | Điện thoại này sẽ không còn điều khiển máy tính của bạn. Để dùng lại, hãy quét mã QR trên máy tính. | Điện thoại này sẽ không còn điều khiển máy tính của bạn. Để kết nối lại, hãy quét mã QR trên máy tính. | "Để dùng lại"(다시 쓰려면) → "Để kết nối lại"(다시 연결하려면): QR 스캔으로 하는 실제 동작 (원칙 6) | no |
| browsersDisconnectedBody | Một điện thoại khác đã kết nối với trình duyệt đó. Để dùng lại, hãy quét mã QR trên máy tính đó. | Một điện thoại khác đã kết nối với trình duyệt đó. Để kết nối lại, hãy quét mã QR trên máy tính đó. | 위와 같은 이유로 "dùng lại" → "kết nối lại" (원칙 6, 용어 일치) | no |
| onboardingWelcomeBody | Điều khiển mọi video trên máy tính. Thiết lập chỉ cần hai bước nhanh. | Điều khiển mọi video trên máy tính. Chỉ cần hai bước nhanh chóng để thiết lập. | "Thiết lập chỉ cần hai bước nhanh"은 영어 어순 직역이라 어색함. '설정은 빠른 두 단계면 충분'의 자연스러운 어순으로 (원칙 5) | no |

## 확인이 필요한 점

- **어순(proFeatureVoiceBoost·FullLoop·AbLoop):** 한국어 사례처럼 "무제한"을 앞으로 옮기지 않았다. 베트남어는 수식어가 명사 뒤에 오는 언어라 "… không giới hạn"이 자연스러운 어순이다("Không giới hạn Voice Boost"는 어색함). 대신 앞에 동사를 붙여 혜택이 보이게 했다.
- **Pro preview 용어:** "trải nghiệm Pro miễn phí"(Pro 무료 체험)로 정했다. 스토어 체험은 "dùng thử miễn phí"로 두어 단어 자체가 다르므로 두 개념이 섞이지 않는다. 웹 베트남어 번역에 Pro preview 표현이 있다면 같은 용어로 맞춰야 한다.
- **A-B Loop:** 앱 전체에서 영어 "A-B Loop"를 그대로 쓰고 있다(turnOffAbFirst, abOffForLive, abLoopCount 등). 베트남어로는 "Lặp đoạn A-B"가 더 자연스럽지만 여러 키와 웹 가이드에 걸친 용어라 바꾸지 않았다. 바꿀지 결정이 필요하다.
- **voiceBoostTrialLeft·speedTrialOver:** 무료 사용자의 몇 초짜리 맛보기를 "Dùng thử"로 부르는데, 이는 스토어 무료 체험과 같은 단어다. 결제와 무관함이 문맥상 분명해(초 단위) 그대로 두었다.
- **skipIntro("Bỏ qua phần mở đầu")·ytMemberships("Gói hội viên")·ytHype("Hype"):** Netflix·YouTube 베트남어 화면의 공식 명칭을 직접 확인하지 못해 그대로 두었다. 실제 화면에서 확인을 권한다.
- **validate.py의 minutesCount 경고:** 영어 "one{1 minute}"의 숫자 1을 placeholder로 잘못 세는 검사 스크립트 문제다. 베트남어는 복수형 범주가 other 하나뿐이라 원본 그대로 정상이다(수정하지 않음).
- menu-name에 해당하는 변경은 없다(theaterMode는 접근성 라벨).
