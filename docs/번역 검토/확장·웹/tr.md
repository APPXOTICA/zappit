# 튀르키예어(tr) 확장·웹 번역 검토 보고서

확장 2개, 웹 49개, 앱 교차 참조 1개를 고쳤다. 확장은 대체로 자연스러워 모호한 지시어만 고쳤고, 웹은 ‘Pro Preview’ 미번역과 ‘A-B Loop’·‘Tekrar’ 같은 루프 용어, ‘Uyku zamanlayıcı’ 등 앱에서 이미 확정한 용어·메뉴 이름과 어긋난 곳을 앱 파일과 똑같이 맞췄다. 그 밖에 반말 슬로건, 직역 제목, 스캐너와 브라우저가 둘 다 ‘tarayıcı’가 되는 혼동, 내부 용어 ‘eşitler’(동기화)를 고쳤다.

## 확장

| 키 | 수정 전 | 수정 후 | 문제 |
|---|---|---|---|
| resetHint | Yalnızca bunu değil, bağlı tüm telefonları ve tarayıcıları sıfırlar. | Yalnızca bu tarayıcıyı değil, bağlı tüm telefonları ve tarayıcıları sıfırlar. | ‘Yalnızca bunu değil’(이것만이 아니라)의 ‘이것’이 모호함. ‘이 브라우저만이 아니라’ (원칙 6) |
| resetBody | Yalnızca bu değil, bağlı tüm telefonlar ve tarayıcılar sıfırlanır. Yeniden bağlanmak için QR kodunu tekrar taramanız gerekir. | Yalnızca bu tarayıcı değil, bağlı tüm telefonlar ve tarayıcılar sıfırlanır. Yeniden bağlanmak için QR kodunu tekrar taramanız gerekir. | 위와 같음 (원칙 6) |

## 웹

| 키 | 수정 전 | 수정 후 | 문제 |
|---|---|---|---|
| meta.landingTitle | Zappit: telefonun artık kumanda | Zappit: telefonunuz artık kumanda | 반말 ‘telefonun’이 사이트 전체의 존댓말(siz)과 어긋남. 앱 onboardingWelcomeTitle(‘Telefonunuz artık…’)과 맞춤 (말투 통일) |
| common.footer.tagline | Telefonun artık kumanda. | Telefonunuz artık kumanda. | 위와 같음 (말투 통일) |
| landing.title | Fareyi bırakın. | Fareye elveda. | 같은 슬로건 ‘Kill the mouse.’가 앱 obAnimTagline에서 ‘Fareye elveda.’라 통일. ‘Fareyi bırakın’(마우스를 놓으세요)은 직역 (원칙 1, 체크 9) |
| landing.demo.title | Herhangi birine basın. Hemen tepki versin. | Herhangi bir düğmeye basın. Tepkisini anında görün. | ‘Hemen tepki versin’(곧 반응하게 하세요)은 어색한 직역. ‘버튼을 누르고 반응을 바로 보세요’로 (원칙 1) |
| landing.demo.hint1 | 2× için ▶ basılı tutun | 2× için ▶ düğmesini basılı tutun | ‘basılı tutmak’은 목적격이 필요해 ‘▶ düğmesini’로 (문법) |
| landing.demo.hint3 | Tekrar için [ ve ] koyun | Döngü için [ ve ] noktalarını belirleyin | 앱의 루프 용어 ‘döngü’와 통일, 동사 ‘koymak’(놓다) 대신 ‘지점을 정하다’ (원칙 1, 체크 9) |
| landing.demo.videoTitle | Night Ride: bir kısa film | Night Ride: kısa film | ‘bir kısa film’은 영어 관사 직역. ‘kısa film’ (원칙 1) |
| landing.snack.mute | Ses kapatıldı | Sessize alındı | 앱 버튼 ‘Sessize al’과 맞춰 ‘Sessize alındı’ (체크 9) |
| landing.snack.loopStart | Tekrar başlangıcı {time} | Döngü başlangıcı {time} | 앱 loopStart ‘Döngü başlangıcı’와 통일 (체크 9) |
| landing.snack.loopEnd | Tekrar bitişi {time} | Döngü sonu {time} | 앱 loopEnd ‘Döngü sonu’와 통일 (체크 9) |
| landing.snack.abOn | A-B Loop {a} – {b} | A-B döngüsü {a} – {b} | 미번역 ‘A-B Loop’ → 앱 용어 ‘A-B döngüsü’ (원칙 1, 체크 9) |
| landing.snack.abOff | A-B Loop kapalı | A-B döngüsü kapalı | 위와 같음 (체크 9) |
| landing.snack.startAfterEnd | Başlangıç noktası bitişten önce olmalı | Başlangıç noktası bitiş noktasından önce olmalı | 앱 errorStartAfterEnd 문구와 똑같이 (체크 9) |
| landing.snack.endBeforeStart | Bitiş noktası başlangıçtan sonra olmalı | Bitiş noktası başlangıç noktasından sonra olmalı | 앱 errorEndBeforeStart 문구와 똑같이 (체크 9) |
| landing.snack.turnOffAbFirst | Önce A-B Loop’u kapatın | Önce A-B döngüsünü kapatın | 앱 turnOffAbFirst와 똑같이 (체크 9) |
| landing.snack.loopOn | Tekrar açık | Döngü açık | 앱 loopOn ‘Döngü açık’과 통일 (체크 9) |
| landing.snack.loopOff | Tekrar kapalı | Döngü kapalı | 앱 loopOff와 통일 (체크 9) |
| landing.snack.replay | Yeniden izle | Baştan oynat | 앱 replay ‘Baştan oynat’과 통일 (체크 9) |
| landing.snack.sleep | Uyku zamanlayıcı · {min} dk | Uyku zamanlayıcısı · {min} dk | 앱에서 고친 복합명사 형태 ‘Uyku zamanlayıcısı’로 (맞춤법, 체크 9) |
| landing.snack.sleepOff | Uyku zamanlayıcı kapalı | Uyku zamanlayıcısı kapalı | 위와 같음 (맞춤법) |
| landing.a11y.mute | Sesi kapat | Sessize al | 앱 mute 버튼 ‘Sessize al’과 통일 (체크 9) |
| landing.a11y.sleep | Uyku zamanlayıcı | Uyku zamanlayıcısı | ‘Uyku zamanlayıcısı’ (맞춤법, 체크 9) |
| landing.a11y.loopStart | Tekrar başlangıcı | Döngü başlangıcı | 앱과 통일 (체크 9) |
| landing.a11y.loopEnd | Tekrar bitişi | Döngü sonu | 앱과 통일 (체크 9) |
| landing.a11y.replay | Yeniden izle | Baştan oynat | 앱과 통일 (체크 9) |
| landing.a11y.loop | Tekrarla | Döngü | 루프 용어 ‘döngü’ 통일 (체크 9) |
| landing.why.title | Koltuk için tasarlandı. | Koltuktan kalkmanıza gerek yok. | ‘Koltuk için tasarlandı’(소파를 위해 설계됨)는 직역이라 뜻이 어색함. ‘소파에서 일어날 필요 없어요’로 (원칙 1, 3) |
| landing.why.threeTitle | Telefondan PC’ye, ve geri | Telefondan bilgisayara, bilgisayardan telefona | ‘ve’ 앞 쉼표는 튀르키예어 문장 부호 오류, ‘PC’ 대신 사이트 전체 용어 ‘bilgisayar’ (맞춤법, 원칙 1) |
| guide.sub | İki adımda kurun, ardından Zappit’i hızlı kılan hareketleri öğrenin. | İki adımda kurun, ardından Zappit’i hızlı kullanmanızı sağlayan püf noktalarını öğrenin. | ‘hareket’(동작)은 ‘moves’의 직역. ‘püf noktaları’(요령) (원칙 1) |
| guide.step1Title | Zappit’i iki tarafa da kurun | Zappit’i hem bilgisayara hem telefona kurun | ‘iki taraf’(양쪽)가 무엇인지 모호함. ‘컴퓨터와 폰 모두에’ (원칙 6) |
| guide.featuresTitle | Bilmeye değer hareketler | Bilmeye değer püf noktaları | ‘hareketler’ 직역 → ‘püf noktaları’ (원칙 1) |
| guide.f1Tip | Hızı kumanda ayarları → Basılı tutma hızı bölümünden değiştirebilirsiniz. | Hızı Kumanda ayarları → Basılı tutma hızı bölümünden değiştirebilirsiniz. | 앱 메뉴 이름 ‘Kumanda ayarları’를 대문자까지 똑같이 인용 (체크 9) |
| guide.f2Body | YouTube veya TikTok uygulamasında mı izliyorsunuz? Paylaş’a (Share) dokunun, Zappit’i seçin; video bilgisayarınızın tarayıcısında açılsın. | YouTube veya TikTok uygulamasında mı izliyorsunuz? Paylaş’a dokunup Zappit’i seçin; video bilgisayarınızın tarayıcısında açılır. | 불필요한 영어 병기 ‘(Share)’ 삭제(튀르키예어 앱 버튼은 ‘Paylaş’), ‘açılsın’(열리게 하라) → ‘açılır’(열려요) (원칙 1, 6) |
| guide.f4Title | Bölüm tekrarı (A-B Loop) | A-B döngüsü | 앱 기능 이름 ‘A-B döngüsü’와 통일, 미번역 영어 제거 (원칙 1, 체크 9) |
| guide.f4Body | İstediğiniz bölümün başladığı yerde [ simgesine, bittiği yerde ] simgesine dokunun. O bölüm tekrar tekrar oynatılır. O noktayı silip tekrarı durdurmak için [ veya ] simgesine yeniden dokunun. | İstediğiniz bölümün başladığı yerde [ simgesine, bittiği yerde ] simgesine dokunun. O bölüm tekrar tekrar oynatılır. O noktayı silip döngüyü durdurmak için [ veya ] simgesine yeniden dokunun. | 루프 용어 통일: ‘tekrarı durdurmak’ → ‘döngüyü durdurmak’ (체크 9) |
| guide.f4Tip | Kaç kez tekrarlanacağını kumanda ayarları → A-B Loop tekrar sayısı bölümünden belirleyin. | Kaç kez tekrarlanacağını Kumanda ayarları → A-B döngüsü tekrar sayısı bölümünden belirleyin. | 앱 메뉴 ‘Kumanda ayarları → A-B döngüsü tekrar sayısı’와 똑같이 (체크 9) |
| guide.anim.opening | Chrome’da açılıyor… | Açılıyor: Chrome… | 앱 상단 알림 openingIn(‘Açılıyor: {browser}…’)을 그린 애니메이션이라 같은 문구로 (체크 9) |
| guide.anim.opened | Chrome’da açıldı | Açıldı: Chrome | 앱 openedIn(‘Açıldı: {browser}’)과 같게 (체크 9) |
| faq.q1 | Pro Preview nedir? | Ücretsiz Pro süresi nedir? | ‘Pro Preview’를 번역하지 않음. 앱 용어 ‘Ücretsiz Pro süresi’로 (원칙 1, 4, 체크 9) |
| faq.a1 | Pro Preview, telefonunuz ve tarayıcınız ilk kez bağlandığı andan itibaren 7 gün boyunca tüm Pro özelliklerini ücretsiz kullanmanızı sağlar. Kredi kartı gerekmez ve süre bittiğinde hiçbir ücret alınmaz. Ücretli aboneliğin ücretsiz deneme süresinden ayrıdır: Pro Preview bittikten sonra da satın alma ekranından o deneme süresini başlatabilirsiniz. | Ücretsiz Pro süresi, telefonunuz ve tarayıcınız ilk kez bağlandığında başlar ve 7 gün boyunca tüm Pro özelliklerini ücretsiz kullanmanızı sağlar. Tamamen ücretsizdir; süre bittiğinde hiçbir ücret alınmaz. Ücretli aboneliğin ücretsiz denemesinden ayrıdır: ücretsiz Pro süreniz bittikten sonra da satın alma ekranından ücretsiz denemeyi başlatabilirsiniz. | 앱 용어로 통일하고 ‘Kredi kartı gerekmez’ 관용구 대신 앱 proPreviewStarted처럼 ‘완전 무료, 끝나도 요금 없음’으로. 스토어 체험은 ‘ücretsiz deneme’로 구분 유지 (원칙 1, 4, 체크 9) |
| faq.a2 | Hayır. Zappit ziyaret ettiğiniz sitelerin veya izlediğiniz videoların geçmişini asla tutmaz. Kontrolleri telefonunuzda gösterebilmek için yalnızca şu anda oynatılanı ve açık sekme bilgilerinizi gerçek zamanlı olarak eşitler. Her şey kullandıkça üzerine yazılır ve işiniz bittiğinde silinir. | Hayır. Zappit ziyaret ettiğiniz sitelerin veya izlediğiniz videoların geçmişini asla tutmaz. Kontrolleri telefonunuzda gösterebilmek için yalnızca şu anda oynatılanı ve açık sekme bilgilerinizi gerçek zamanlı olarak aktarır. Her şey kullandıkça üzerine yazılır ve işiniz bittiğinde silinir. | ‘eşitler’(동기화)는 내부 용어. ‘aktarır’(전달) (원칙 2) |
| faq.q3 | Telefon ve bilgisayar aynı Wi-Fi’da olmak zorunda mı? | Telefonum ve bilgisayarım aynı Wi-Fi ağında olmalı mı? | ‘Telefon ve bilgisayar … olmak zorunda mı’는 주어가 일반적이고 구어적. ‘내 폰과 컴퓨터가 같은 Wi-Fi 네트워크에 있어야 하나요?’로 (원칙 5) |
| faq.a4 | Evet. Bir bilgisayara en fazla 3 telefon bağlanabilir ve bir telefon birden fazla tarayıcıyı kontrol edebilir. Pro’nuz varsa, başka telefon eklemeden önce Pro’yu satın aldığınız telefonu bağlayın ve bağlı tutun (ya da o telefonda satın alımı geri yükleyin). Böylece Pro tüm bağlı cihazlarda çalışır. | Evet. Bir bilgisayara en fazla 3 telefon bağlanabilir ve bir telefon birden fazla tarayıcıyı kontrol edebilir. Pro aboneliğiniz varsa, başka telefon eklemeden önce Pro’yu satın aldığınız telefonu bağlayın ve bağlı tutun (ya da o telefonda satın alımı geri yükleyin). Böylece Pro tüm bağlı cihazlarda çalışır. | ‘Pro’nuz varsa’(Pro가 있으면)는 무엇을 가졌는지 모호함. ‘Pro 구독이 있으면’ (원칙 6) |
| faq.a6 | Voice Boost videodaki sesleri daha yüksek ve net hâle getirir, böylece diyaloglar müzik ve arka plan gürültüsünden ayrışır. Şu anda YouTube’da çalışır, ancak bazı videolar desteklenmez; kullanılamadığında kumanda sizi bilgilendirir. | Voice Boost videodaki konuşmaları daha yüksek ve net hâle getirir, böylece diyaloglar müzik ve arka plan gürültüsünden ayrışır. Şu anda YouTube’da çalışır, ancak bazı videolar desteklenmez; kullanılamadığında kumanda sizi bilgilendirir. | ‘sesler’는 모든 소리라 Voice Boost가 무엇을 키우는지 흐려짐. ‘konuşmalar’(대사·말소리) (원칙 6) |
| faq.a8 | Kurulum sırasında Chrome, Zappit’in **Tüm web sitelerindeki tüm verilerinizi okuma ve değiştirme** iznine sahip olacağı uyarısını gösterir; Safari de benzer bir erişim ister. Zappit her video sitesinde çalıştığı için açtığınız sayfadaki video oynatıcıyı bulup oynatmayı kontrol etmek üzere bu izne ihtiyaç duyar.<br><br>Zappit ziyaret ettiğiniz sitelerin veya izlediğiniz videoların geçmişini asla tutmaz. Yalnızca o an oynatılan içeriği ve açık sekmelerinizin bilgisini gerçek zamanlı olarak eşitler; tarama geçmişinizi okuma izni istemez. | Kurulum sırasında Chrome, Zappit’in **Tüm web sitelerindeki tüm verilerinizi okuma ve değiştirme** iznine sahip olacağı uyarısını gösterir; Safari de benzer bir erişim ister. Zappit her video sitesinde çalıştığı için açtığınız sayfadaki video oynatıcıyı bulup oynatmayı kontrol etmek üzere bu izne ihtiyaç duyar.<br><br>Zappit ziyaret ettiğiniz sitelerin veya izlediğiniz videoların geçmişini asla tutmaz. Yalnızca o an oynatılan içeriği ve açık sekmelerinizin bilgisini gerçek zamanlı olarak aktarır; tarama geçmişinizi okuma izni istemez. | ‘eşitler’ → ‘aktarır’ (원칙 2) |
| faq.a10Steps[1] | **Site verilerini okuyabilir ve değiştirebilir** altında **Tüm sitelerde**’yi seçin. | **Site verilerini okuyabilir ve değiştirebilir** altında **Tüm sitelerde** seçeneğini seçin. | ‘Tüm sitelerde’yi’처럼 처격 뒤에 목적격 접미사를 붙여 어색함. ‘… seçeneğini seçin’ (문법) |
| faq.a11 | Kamera erişimine izin vermediyseniz tarayıcı siyah kalır veya açılmaz. Zappit için kamerayı yeniden açın: | Kamera erişimine izin vermediyseniz QR tarayıcı siyah kalır veya açılmaz. Zappit için kamerayı yeniden açın: | 스캐너를 ‘tarayıcı’로 옮겨 브라우저(tarayıcı)와 같은 말이 됨. 앱 ‘QR tarayıcı’로 (원칙 6, 체크 9) |
| faq.a11Points[0] | **iPhone:** **Ayarlar** → **Uygulamalar** → **Zappit**’i açın ve **Kamera**’yı açın. | **iPhone:** **Ayarlar** → **Uygulamalar** → **Zappit** bölümüne gidin ve **Kamera**’yı açın. | ‘…’i açın ve … açın’으로 ‘açın’(열다/켜다)이 두 번 다른 뜻으로 나옴. ‘Zappit 항목으로 가서 카메라를 켜세요’ (원칙 6) |
| faq.a11Note | Uygulamadaki tarayıcı da bu hatırlatmayı gösterir. | Uygulamadaki QR tarayıcı da bu hatırlatmayı gösterir. | 위와 같이 ‘QR tarayıcı’ (원칙 6) |

## 앱(교차 참조 수정)

| 키 | 수정 전 | 수정 후 | 문제 |
|---|---|---|---|
| pairPhoneLimit | Bu bilgisayara zaten 3 telefon bağlı. Bağlı diğer telefonlarınızdan birinde Zappit’i açın ve ‘Diğer’ bölümünde ‘Bu telefonun bağlantısını kes’e dokunun. Diğer telefonlarınıza erişiminiz yoksa bilgisayarınızdaki Zappit uzantısında ‘Reset’e tıklayın. | Bu bilgisayara zaten 3 telefon bağlı. Bağlı diğer telefonlarınızdan birinde Zappit’i açın ve ‘Diğer’ bölümünde ‘Bu telefonun bağlantısını kes’e dokunun. Diğer telefonlarınıza erişiminiz yoksa bilgisayarınızdaki Zappit uzantısında ‘Ayarlar’ → ‘Sıfırla’ya tıklayın. | 확장이 번역되어 버튼 이름이 ‘Sıfırla’가 됨. 영어 ‘Reset’ 대신 확장 라벨을 쓰고, 위치(‘Ayarlar’)를 함께 적어 찾기 쉽게 함 (원칙 6, 체크 9) |

browsersDisconnectedBody 등 나머지 앱 문구에는 확장 라벨 인용이 없어 그대로 뒀다. 앱 온보딩 애니메이션의 확장 팝업 문구(obAnimConnectPhone·obAnimScanCode·obAnimNewCode·obAnimRemoteConnected·obAnimYourPhones)는 확장 번역과 이미 같다.

## 확인이 필요한 부분

- **랜딩 슬로건:** ‘Kill the mouse.’를 앱 obAnimTagline과 같은 ‘Fareye elveda.’(마우스여 안녕)로 맞췄다. 웹 마케팅 문구로 더 강한 표현을 원하면 앱과 함께 바꿔야 한다.
- **반말/존댓말:** 슬로건 ‘Telefonun artık kumanda’는 튀르키예어 광고에서 흔한 반말이지만, 사이트와 앱 전체가 존댓말이라 ‘Telefonunuz’로 바꿨다.
- **guide.anim.opening/opened:** 앱 알림 형식(‘Açılıyor: Chrome…’)에 맞췄다. 앱 쪽 형식 자체가 다소 딱딱해 ‘Chrome’da açılıyor…’로 바꾸고 싶다면 앱 openingIn·openedIn을 함께 고쳐야 한다(앱은 placeholder 뒤 접미사 문제 때문에 지금 형식을 쓴 것으로 보인다).
- **Safari 메뉴 이름:** ‘Genişletmeler’는 Apple 튀르키예어 지원 문서에서 확인했다. Chrome의 ‘Site verilerini okuyabilir ve değiştirebilir’, Android의 ‘Yalnızca uygulama kullanılırken izin ver’은 실제 기기 화면에서 한 번 확인하는 것이 좋다.
- **guide 제목:** 웹은 ‘Kılavuz’, 앱 More의 Tutorial은 ‘Kullanım rehberi’다. 웹이 앱 메뉴 이름을 인용하지 않아 그대로 뒀지만, 같은 페이지를 여는 메뉴라 하나로 맞출지 결정이 필요하다.
