# 인도네시아어(id) 확장·웹 번역 검토 보고서

확장 번역은 거의 자연스러워서 "lagi … lagi"가 반복되는 확인 문구 2개만 고쳤다. 웹은 랜딩 페이지에서 "kamu/-mu"(반말)와 "Anda"(존댓말)가 섞여 있어 앱과 같은 "Anda"로 통일했고, Pro preview 용어("Pro Preview" → 앱과 같은 "Akses Pro gratis"), 앱 메뉴·문구 인용(“Tidak dapat terhubung ke browser”, "Pengaturan remote", "Teks", "Awal loop", "Putar dari awal", "link")을 앱 파일과 똑같이 맞췄다. 앱 파일의 교차 참조 키는 확장 번역 라벨("Reset", "Hubungkan ponsel Anda", "Remote terhubung")과 이미 일치해서 고치지 않았다. 고친 문구는 확장 2개, 웹 43개, 앱 0개다.

## 확장

| 키 | 수정 전 | 수정 후 | 문제 (한국어, 가이드 원칙 번호 포함) |
|---|---|---|---|
| disconnectBrowserBody | Browser ini akan dihapus dari daftar perangkat yang terhubung. Untuk terhubung lagi, Anda perlu memindai kode QR lagi. | Browser ini akan dihapus dari daftar perangkat yang terhubung. Untuk terhubung kembali, Anda perlu memindai kode QR lagi. | 한 문장에 "lagi"가 두 번 나와 어색하다. 앞쪽을 "kembali"로 바꿨다 (원칙 5, 맞춤법·문체) |
| resetBody | … Untuk terhubung lagi, Anda perlu memindai kode QR lagi. | … Untuk terhubung kembali, Anda perlu memindai kode QR lagi. | 위와 같은 반복 문제 (원칙 5) |

## 웹

| 키 | 수정 전 | 수정 후 | 문제 (한국어, 가이드 원칙 번호 포함) |
|---|---|---|---|
| meta.landingTitle | Zappit: ponselmu jadi remote | Zappit: ponsel Anda jadi remote | 반말 "-mu"가 사이트·앱의 "Anda"와 섞였다. 말투 통일 (공통 규칙: 말투) |
| common.footer.tagline | Ponselmu jadi remote. | Ponsel Anda jadi remote. | 말투 통일 (공통 규칙: 말투) |
| landing.title | Lepaskan mouse-mu. | Lupakan mouse. | "Lepaskan"(손에서 놓다)은 "Kill the mouse"의 뜻(마우스가 필요 없다)을 못 전하는 직역이고 반말이다. "마우스는 잊으세요"로 바꿨다 (원칙 1, 3) |
| landing.sub | … di komputermu. … | … di komputer Anda. … | 말투 통일 (공통 규칙: 말투) |
| landing.demo.sub | Ketuk, tahan, dan geser, browser langsung merespons. | Ketuk, tahan, atau geser, dan browser langsung merespons. | 쉼표로 두 문장을 붙인 비문이다. 접속사를 넣어 고쳤다 (원칙 5) |
| landing.demo.hint3 | Pasang [ dan ] untuk mengulang | Ketuk [ dan ] untuk mengulang | "Pasang"(설치하다/달다)은 "Set"의 직역이라 어색하다. 실제 동작인 "탭"으로 썼다 (원칙 1, 6) |
| landing.demo.videoTitle | Night Ride: sebuah film pendek | Night Ride: film pendek | "sebuah"는 영어 관사 "a"의 직역이다 (원칙 1) |
| landing.demo.channel | Kanal demo | Channel demo | 앱은 "Channel"을 쓴다(channelLabel). 용어 통일 (원칙 9) |
| landing.demo.captionsTitle | Subtitel | Teks | 데모는 앱 리모컨 화면을 그대로 보여 준다. 앱 captions "Teks"와 통일 (원칙 9) |
| landing.demo.captionLanguage | Bahasa subtitel | Bahasa teks | 앱 captionLanguage와 통일 (원칙 9) |
| landing.snack.captionsOn | Subtitel aktif | Teks aktif | 앱 captionsOn과 통일 (원칙 9) |
| landing.snack.captionsOff | Subtitel nonaktif | Teks nonaktif | 앱 captionsOff와 통일 (원칙 9) |
| landing.snack.captionLang | Subtitel: {lang} | Teks: {lang} | 용어 통일 (원칙 9) |
| landing.snack.mute | Bisu | Suara dimatikan | "Bisu"(벙어리)는 상태 알림으로 쓰지 않는 말이다. "소리 꺼짐"으로 바꿨다 (원칙 1) |
| landing.snack.loopStart | Awal pengulangan {time} | Awal loop {time} | 앱 loopStart "Awal loop"와 통일 (원칙 9) |
| landing.snack.loopEnd | Akhir pengulangan {time} | Akhir loop {time} | 앱 loopEnd와 통일 (원칙 9) |
| landing.snack.replay | Tonton lagi | Putar dari awal | 앱 replay "Putar dari awal"과 통일 (원칙 9) |
| landing.snack.framePause | Jeda video untuk maju per frame | Jeda video untuk melihatnya per frame | "maju"(앞으로)는 앞으로만 간다는 뜻이 된다. 프레임 이동은 양방향이다 (원칙 6) |
| landing.a11y.captions | Subtitel | Teks | 앱과 통일 (원칙 9) |
| landing.a11y.captionLanguage | Bahasa subtitel | Bahasa teks | 앱과 통일 (원칙 9) |
| landing.a11y.smaller | Subtitel lebih kecil | Teks lebih kecil | 앱 smallerCaptions와 통일 (원칙 9) |
| landing.a11y.larger | Subtitel lebih besar | Teks lebih besar | 앱 largerCaptions와 통일 (원칙 9) |
| landing.a11y.loopStart | Awal pengulangan | Awal loop | 앱과 통일 (원칙 9) |
| landing.a11y.loopEnd | Akhir pengulangan | Akhir loop | 앱과 통일 (원칙 9) |
| landing.a11y.replay | Tonton lagi | Putar dari awal | 앱과 통일 (원칙 9) |
| landing.why.title | Dibuat untuk sofa. | Santai dari sofa. | "소파를 위해 만들어졌다"는 직역이라 뜻이 이상하다. "소파에서 편하게"로 의역 (원칙 1, 3) |
| landing.why.threeTitle | Dari ponsel ke PC, dan kembali | Dari ponsel ke PC, dan sebaliknya | "and back"을 직역한 "dan kembali"는 미완성 문장처럼 읽힌다. 관용 표현 "그 반대로도" (원칙 1) |
| landing.why.threeBody | … saat kamu keluar ruangan. | … saat Anda keluar ruangan. | 말투 통일 (공통 규칙: 말투) |
| guide.step1Body | … lalu instal aplikasi Zappit … | … lalu pasang aplikasi Zappit … | 앱·웹 다른 문구는 "memasang/pasang"을 쓴다. 용어 통일 (원칙 9) |
| guide.f1Tip | … di pengaturan remote → … | … di Pengaturan remote → … | 앱 메뉴 이름 "Pengaturan remote"와 대소문자까지 똑같이 맞췄다 (원칙 9) |
| guide.f2Body | Ketuk Bagikan (Share), … | Ketuk Bagikan, … | YouTube·TikTok 인도네시아어 화면 버튼은 "Bagikan"뿐이라 영어 괄호는 군더더기다 (원칙 1) |
| guide.f2Tip | … menempelkan tautan … | … menempelkan link … | 앱은 "link"(Tempel link)를 쓴다. 용어 통일 (원칙 9) |
| guide.f3Body | Ketuk Lanjutkan di ponsel di remote. Browser akan dijeda, dan video terbuka … | Di remote, ketuk “Lanjutkan di ponsel”. Video di browser dijeda, lalu terbuka … | 버튼 이름이 문장에 묻히고 "di … di"가 겹쳐 읽기 어렵다. 앱 버튼 이름을 따옴표로 구분했고, 멈추는 것은 브라우저가 아니라 영상이다 (원칙 5, 6) |
| guide.f3Tip | Lanjutkan di ponsel adalah tombol pertama … | Tombol “Lanjutkan di ponsel” adalah tombol pertama … | 버튼 이름이 문장 주어로 묻혀 있었다. 버튼임을 분명히 했다 (원칙 6) |
| guide.f4Tip | … di pengaturan remote → … | … di Pengaturan remote → … | 앱 메뉴 이름과 통일 (원칙 9) |
| guide.f5Body | Setiap garis adalah satu frame: … | Setiap garis berarti satu frame: … | "눈금 = 프레임"이라는 직역 대신 "눈금 하나가 한 프레임 이동"의 뜻이 드러나게 했다 (원칙 6) |
| guide.f6Body | … untuk ke tab berikutnya. | … untuk pindah ke tab berikutnya. | 동사가 빠진 구어체 문장이다 (원칙 6, 문법) |
| faq.q1 | Apa itu Pro Preview? | Apa itu Akses Pro gratis? | 앱은 Pro preview를 "Akses Pro gratis"로 정했다. 영어 그대로 두면 앱 화면과 다르다 (원칙 1, 4, 9) |
| faq.a1 | Pro Preview memungkinkan … gratis selama 7 hari … Tidak perlu kartu kredit, dan tidak ada tagihan saat berakhir. … memulai uji coba tersebut … | Akses Pro gratis memungkinkan … selama 7 hari … Sepenuhnya gratis, dan tidak ada tagihan otomatis saat berakhir. Akses ini berbeda dari uji coba gratis langganan berbayar: … memulai uji coba gratis tersebut … | 용어를 앱과 통일했다. "카드 필요 없음" 관용구를 빼고 앱 proPreviewStarted처럼 "완전 무료, 자동 결제 없음"으로 썼다. 스토어 체험은 "uji coba gratis"로 분명히 구분했다 (원칙 1, 4, 9) |
| faq.a2 | … Zappit hanya menyinkronkan secara real time apa yang sedang diputar dan info tab yang terbuka. … | … Zappit hanya mengirimkan info video yang sedang diputar dan tab yang terbuka secara real time. … | "sync"(동기화)는 기술 용어다. 사용자가 이해하는 "보낸다"로 바꿨다 (원칙 2) |
| faq.q5 | Aplikasi menampilkan “Browser tidak terjangkau”. … | Aplikasi menampilkan “Tidak dapat terhubung ke browser”. … | 인용한 앱 문구가 앱 cantReachBrowser의 현재 번역과 달랐다 (원칙 9) |
| faq.a8 | … Zappit hanya menyinkronkan secara real time apa yang sedang diputar dan info tab yang terbuka, … | … Zappit hanya mengirimkan info video yang sedang diputar dan tab yang terbuka secara real time, … | a2와 같은 문제 (원칙 2) |
| get.copy | Salin tautan | Salin link | 앱·웹 전체가 "link"를 쓴다. 용어 통일 (원칙 9) |

## 앱(교차 참조 수정)

| 키 | 수정 전 | 수정 후 | 문제 (한국어, 가이드 원칙 번호 포함) |
|---|---|---|---|
| (없음) | | | pairPhoneLimit의 ‘Reset’, obAnimConnectPhone "Hubungkan ponsel Anda", obAnimRemoteConnected "Remote terhubung"이 확장 번역 라벨과 이미 같아서 고칠 필요가 없었다. browsersDisconnectedBody는 확장 라벨을 인용하지 않는다. `validate.py id` 통과 |

## 확인이 필요한 부분

- **Captions 용어 "Teks":** 앱이 "Teks"를 써서 웹 데모를 그쪽에 맞췄다. 인도네시아 YouTube·Netflix 화면은 "Subtitel/Subtitle"을 쓰므로, "Subtitel"로 바꾸고 싶다면 앱(captions, captionsOn/Off, captionLanguage, smaller/largerCaptions, noSubtitles)과 웹을 함께 바꿔야 한다.
- **pairPhoneLimit 경로:** 영어 원문대로 "‘Reset’ di ekstensi Zappit"만 쓴다. Reset 버튼은 확장 팝업의 ‘Pengaturan’ 안에 있으므로 "klik ‘Reset’ di ‘Pengaturan’ ekstensi Zappit"처럼 경로를 넣으면 더 찾기 쉽다. 영어 원문을 같이 바꿀지 정해 주세요.
- **브라우저 시스템 문구(faq.a8~a10, a9Steps, a10Steps):** Chrome·Safari 인도네시아어 화면의 실제 문구("Membaca dan mengubah semua data Anda di semua situs", "Edit Situs Web…" 등)는 실제 브라우저 화면에서 확인하지 못해 그대로 두었다.
- **"Menu Tab"(guide.f6Body):** 앱 하단 탭 이름은 "Tab"이다. "Tab Tab"이 어색해 "Menu Tab"을 그대로 두었다.
