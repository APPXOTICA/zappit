# 인도네시아어(id) 번역 검토 보고서

기존 번역은 대체로 자연스럽고 "Anda" 존댓말로 일관되어 있었지만, 결제·구독 문구에 한국어 사례와 같은 문제가 있었다. "Pro preview"를 "Pratinjau Pro"로 직역했는데, 이 말은 콘텐츠 미리보기를 뜻해서 인도네시아 앱에서 무료 이용 기간을 부르는 말로 쓰지 않는다. 또 "toko/akun toko"(스토어/스토어 계정) 같은 내부 용어, "Selamat datang di"·"Terima kasih telah mencoba" 같은 직역 인사, "Tanpa kartu kredit" 관용구가 있었다. 그 밖에 "이 페이지"·"그 폰"처럼 가리키는 대상이 모호한 문구와 뭉뚱그린 동사("memakainya lagi")도 고쳤다. 고친 키는 모두 27개다.

| 키 | 수정 전 | 수정 후 | 문제 (한국어로, 적용한 가이드 원칙 번호 포함) | menu-name |
|---|---|---|---|---|
| errorNotSupported | Situs ini tidak mendukungnya | Situs ini tidak mendukung fitur tersebut | "-nya"(그것)가 무엇을 가리키는지 모호해서 대상을 분명히 썼다 (원칙 6) | no |
| errorNotChanged | Situs tidak mengubahnya | Situs tidak menerapkan perubahan | "그것을 바꾸지 않았다"는 대명사 직역이라 모호하다. "변경을 적용하지 않았다"로 결과를 분명히 썼다 (원칙 6) | no |
| proFeatureDedicatedControllers | Buka remote khusus untuk tiap situs | Remote khusus untuk situs tertentu | "tiap situs"(모든 사이트마다)는 지원 사이트만 해당된다는 범위와 맞지 않는다. "Buka"는 '열다'로도 읽힌다. "특정 사이트 전용 리모컨"으로 범위를 정확히 썼다 (원칙 6, 1) | no |
| proFeatureAllSpeeds | Semua kecepatan putar | Bebas pilih semua kecepatan putar | 명사만 나열해서 혜택이 안 보였다. "모든 재생 속도 자유롭게 선택"으로 바꿨다 (원칙 6) | no |
| storeUnavailable | Toko sedang tidak tersedia. Silakan coba lagi nanti. | Saat ini pembelian belum bisa dilakukan. Silakan coba lagi nanti. | "Toko"(스토어)는 내부 용어다. 사용자가 겪는 결과(지금은 구매할 수 없음)를 썼다 (원칙 2) | no |
| welcomeToPro | Selamat datang di {proName} | {proName} sudah aktif! | 구매 직후의 "환영합니다" 직역 대신 결과를 알리는 말로 바꿨다 (원칙 3) | no |
| proPreviewEndedSubtitle | Pratinjau Pro Anda telah berakhir. Tetap gunakan semua fitur Pro dengan {proName}. | Akses Pro gratis Anda telah berakhir. Dengan {proName}, Anda bisa terus menggunakan semua fitur Pro. | "Pratinjau"(미리보기)는 무료 이용 기간을 뜻하지 않는 직역어다. "무료 Pro 이용"으로 바꿨고, 스토어 체험(uji coba gratis)과 구분된다 (원칙 1, 4) | no |
| proPreviewActiveBanner | Pratinjau Pro gratis Anda aktif hingga {date}. Berlangganan sebelum berakhir agar semua fitur Pro tetap bisa digunakan tanpa jeda. | Akses Pro gratis Anda aktif hingga {date}. Berlangganan sebelum berakhir agar semua fitur Pro tetap bisa digunakan tanpa terputus. | 위와 같은 용어 문제. "tanpa jeda"(일시정지 없이)는 "끊김 없이"의 뜻으로 어색해서 "tanpa terputus"로 바꿨다 (원칙 1, 4) | no |
| cancelAnytime | Batalkan kapan saja di akun toko Anda. | Batalkan kapan saja di pengaturan langganan. | "akun toko"(스토어 계정)는 사용자가 모르는 말이다. 실제로 해지하는 곳인 "구독 설정"으로 썼다 (원칙 2) | no |
| proPreviewStarted | Nikmati semua fitur Zappit Pro gratis selama {days} hari. Tanpa kartu kredit, tanpa tagihan otomatis. | Nikmati semua fitur Zappit Pro selama {days} hari. Sepenuhnya gratis, tanpa tagihan otomatis. | "No credit card required" 관용구 직역을 빼고 "완전 무료, 자동 결제 없음"만 간결하게 전했다. "gratis"가 두 번 나오지 않게 했다 (원칙 4) | no |
| proPreviewEndsTomorrow | Pratinjau Pro berakhir besok | Akses Pro gratis berakhir besok | 용어 통일 (원칙 1, 4) | no |
| proPreviewEndedTitle | Pratinjau Pro Anda telah berakhir | Akses Pro gratis Anda telah berakhir | 용어 통일 (원칙 1, 4) | no |
| proPreviewEndedMessage | Terima kasih telah mencoba Zappit Pro! Berlangganan agar bisa terus menikmati semua fitur Pro tanpa jeda. | Suka dengan Zappit Pro? Berlangganan agar bisa terus menikmati semua fitur Pro tanpa terputus. | 감사 인사를 직역하지 않고 "Zappit Pro 마음에 드셨나요?"라는 질문으로 바꿨다. "tanpa jeda"도 고쳤다 (원칙 3, 4) | no |
| purchaseNotActivatedMessage | Pembayaran berhasil, tetapi Pro belum aktif. Coba Pulihkan pembelian. | Pembayaran berhasil, tetapi Pro belum aktif. Coba ketuk ‘Pulihkan pembelian’. | 문장 중간의 대문자 동사가 버튼 이름인지 알 수 없었다. 버튼을 누르라고 분명히 썼다 (원칙 6) | no |
| paymentPendingMessage | Pro aktif segera setelah toko mengonfirmasi pembayaran Anda. | Pro akan aktif segera setelah pembayaran Anda dikonfirmasi. | "toko"를 뺐다. 주어 없이도 뜻이 통한다 (원칙 2) | no |
| nothingToRestoreMessage | Tidak ada langganan Zappit Pro aktif yang ditemukan di akun toko ini. | Tidak ditemukan langganan Zappit Pro yang aktif di akun ini. | "akun toko" 대신 "이 계정". 어순도 자연스럽게 다듬었다 (원칙 2, 5) | no |
| alreadySubscribed | Anda sudah memiliki langganan ini. Coba Pulihkan pembelian. | Anda sudah memiliki langganan ini. Coba ketuk ‘Pulihkan pembelian’. | purchaseNotActivatedMessage와 같은 문제 (원칙 6) | no |
| storeProblem | Terjadi masalah pada toko. Silakan coba lagi sebentar lagi. | Terjadi masalah saat pembelian. Silakan coba lagi dalam beberapa saat. | "toko" 대신 "구매 중 문제". "lagi … lagi"가 반복되는 어색한 표현도 고쳤다 (원칙 2) | no |
| extensionUpdatedReload | Ekstensi Zappit telah diperbarui. Muat ulang halaman ini agar semua kontrol tetap bisa digunakan. | Ekstensi Zappit telah diperbarui. Muat ulang halaman di browser Anda agar semua kontrol tetap bisa digunakan. | 폰에 보이는 문구라 "이 페이지"가 어느 페이지인지 알 수 없었다. "브라우저의 페이지"로 분명히 썼다 (원칙 6) | no |
| cantReachBrowser | Browser tidak terjangkau | Tidak dapat terhubung ke browser | "terjangkau"(도달 가능한/저렴한)는 "reach" 직역으로 어색하다. "브라우저에 연결할 수 없음"으로 바꿨다 (원칙 1) | no |
| proPreviewUntil | Pratinjau Pro hingga {date} | Akses Pro gratis hingga {date} | 용어 통일 (원칙 1, 4) | no |
| fullPowerUnlocked | Semua fitur terbuka | Semua fitur Pro aktif | "terbuka"는 '열려 있음'으로 읽히는 직역이다. 구독자에게 "모든 Pro 기능 활성"으로 결과를 썼다 (원칙 1) | no |
| supportedSitesIntro | Situs-situs ini punya remote khusus yang dibuat untuknya. Di situs lain, Zappit berfungsi sebagai remote standar. | Situs-situs ini punya remote khusus. Di situs lain, Zappit berfungsi sebagai remote standar. | "yang dibuat untuknya"는 영어 구조를 직역한 군더더기라 뺐다 (원칙 1, 5) | no |
| unmute | Bunyikan | Aktifkan suara | "Bunyikan"(울리게 하다)은 음소거 해제 라벨로 쓰지 않는다. 인도네시아 앱에서 쓰는 "소리 켜기" 표현으로 바꿨다 (원칙 1) | no |
| pairPhoneLimit | Komputer ini sudah terhubung dengan 3 ponsel. Buka Zappit di salah satu ponsel Anda yang lain yang terhubung, lalu ketuk ‘Putuskan ponsel ini’ di ‘Lainnya’. Jika ponsel itu sudah tidak ada, gunakan ‘Reset’ di ekstensi Zappit pada komputer Anda. | Komputer ini sudah terhubung dengan 3 ponsel. Buka Zappit di salah satu ponsel lain yang terhubung, lalu ketuk ‘Putuskan ponsel ini’ di ‘Lainnya’. Jika Anda tidak bisa mengakses ponsel lain tersebut, klik ‘Reset’ di ekstensi Zappit pada komputer Anda. | "ponsel itu"(그 폰)가 모호해서 "다른 폰에 접근할 수 없다면"으로 고쳤다. "yang lain yang" 중복을 줄였고, 컴퓨터 확장 버튼이라 "gunakan" 대신 "klik"으로 썼다 (원칙 6) | no |
| disconnectPhoneMessage | Ponsel ini tidak akan lagi mengontrol komputer Anda. Untuk memakainya lagi, pindai kode QR di komputer. | Ponsel ini tidak akan lagi mengontrol komputer Anda. Untuk menghubungkannya lagi, pindai kode QR di komputer. | QR 스캔으로 하는 일은 "연결"이라 "다시 쓰려면" 대신 "다시 연결하려면"으로 썼다 (원칙 6) | no |
| browsersDisconnectedBody | Ponsel lain telah terhubung ke sana. Untuk memakainya lagi, pindai kode QR di komputer tersebut. | Ponsel lain telah terhubung ke browser tersebut. Untuk menghubungkannya lagi, pindai kode QR di komputer itu. | "ke sana"(거기로)가 모호해서 대상(그 브라우저)을 썼다. 동사는 "연결"로 고쳤다 (원칙 6) | no |

## 확인이 필요한 부분

- **Pro preview 용어:** "Akses Pro gratis"(무료 Pro 이용)로 정했다. 인도네시아 앱은 체험 기간을 보통 "uji coba gratis"라고 부르지만, 이 파일은 이미 스토어 체험(자동 결제)에 그 말을 쓰고 있다. 두 개념이 같은 단어가 되지 않도록 Pro preview에는 "Akses Pro gratis"를 썼다. 가이드처럼 "Uji coba Pro gratis"로 통일하고 싶다면 알려 주세요. 웹 FAQ·가이드의 인도네시아어 번역에 "Pratinjau Pro"가 있다면 같이 바꿔야 한다.
- **Unlimited 어순 (proFeatureVoiceBoost, proFeatureFullLoop, proFeatureAbLoop):** 고치지 않았다. 인도네시아어는 꾸미는 말이 뒤에 오는 언어라 "Voice Boost tanpa batas"가 자연스러운 어순이다. Spotify 같은 현지 앱의 "… tanpa batas"와도 같다. 원칙 5는 그 언어의 어순을 따르라는 원칙이라 그대로 두었다.
- **learnMore "Pelajari Lebih Lanjut":** Google 등 현지 앱에서 쓰는 표준 표현이라 고치지 않았다. 다른 버튼은 대부분 문장형 대문자를 쓰므로, 통일하려면 "Pelajari lebih lanjut"으로 바꿀 수 있다.
- **ytMemberships "Langganan":** 앱의 Pro 구독(langganan)과 같은 단어다. YouTube 인도네시아어 화면의 실제 메뉴 이름("Langganan" 또는 "Keanggotaan")을 확인하지 못해 바꾸지 않았다. 확인이 필요하다.
- **voiceBoostTrialLeft "Uji coba Voice Boost…":** 스토어 체험과 같은 "uji coba"를 쓴다. 결제와 상관없는 접근성 라벨이라 그대로 두었다.
- **검증 스크립트의 minutesCount 경고:** 오탐이다. 영어 원문의 `one{1 minute}` 안에 있는 "1"을 placeholder로 잘못 세었다. 인도네시아어는 복수 범주가 `other` 하나뿐이라 `{count, plural, other{{count} menit}}`가 맞고, 이 키는 수정하지 않았다.
