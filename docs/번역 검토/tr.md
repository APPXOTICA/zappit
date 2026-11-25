# 튀르키예어(tr) 번역 검토 보고서

총 47개 키를 고쳤다. 가장 큰 문제는 Pro preview를 ‘Pro önizleme’(미리보기)로 직역한 것으로, 튀르키예어에서 체험 기간에 쓰지 않는 말이라 ‘Ücretsiz Pro süresi’(무료 Pro 기간)로 바꿨고, 스토어 체험은 ‘ücretsiz deneme’로 남겨 두 개념이 단어부터 구분되게 했다. 그 밖에 ‘Mağaza(스토어)’·‘mağaza hesabı’ 같은 내부 용어, 미번역 ‘A-B Loop’, ‘X gün ücretsiz deneme’ 같은 형용사형·목적격 문법 오류, 존댓말과 어긋나는 반말(tellAFriend), ‘bu sayfa’·‘o telefon’ 같은 모호한 지시어를 고쳤다.

| 키 | 수정 전 | 수정 후 | 문제 | menu-name |
|---|---|---|---|---|
| proFeatureDedicatedControllers | Siteye özel kumandaların kilidini açın | Belirli sitelere özel kumandaların kilidini açın | ‘Siteye özel’만으로는 범위가 모호함. ‘특정 사이트 전용’으로 명확화 (원칙 6) | no |
| proFeatureAllSpeeds | Tüm oynatma hızları | Tüm oynatma hızlarına erişim | 명사 나열이라 혜택이 안 보임. ‘모든 재생 속도 이용 가능’으로 (원칙 6) | no |
| proFeatureFullLoop | Sınırsız tam video tekrarı | Sınırsız tam video döngüsü | 루프 용어 통일: 튀르키예어 플레이어(YouTube·VLC)의 관용어 ‘döngü’로 (원칙 1, 공통 규칙 용어 일치) | no |
| proFeatureAbLoop | Sınırsız A-B Loop | Sınırsız A-B döngüsü | 영어 ‘A-B Loop’를 번역하지 않고 남겨 둠. ‘A-B döngüsü’로 통일 (원칙 1) | no |
| storeUnavailable | Mağaza şu anda kullanılamıyor. Lütfen daha sonra tekrar deneyin. | Şu anda satın alma yapılamıyor. Lütfen daha sonra tekrar deneyin. | ‘Mağaza(스토어)’는 내부 용어. ‘지금은 구매할 수 없어요’로 (원칙 2) | no |
| welcomeToPro | {proName}’ya hoş geldiniz | {proName} etkinleştirildi | 구매 직후의 환영 인사 대신 결과(‘Zappit Pro 활성화됨’)를 알림. placeholder에 붙는 접미사(’ya)도 없앰 (원칙 3, 5) | no |
| freeTrialDays | {count} gün ücretsiz deneme | {count} günlük ücretsiz deneme | ‘7 gün ücretsiz deneme’는 문법상 형용사형 ‘günlük’이 맞음 (맞춤법) | no |
| freeTrialWeeks | {count} hafta ücretsiz deneme | {count} haftalık ücretsiz deneme | 형용사형 ‘haftalık’ (맞춤법) | no |
| freeTrialMonths | {count} ay ücretsiz deneme | {count} aylık ücretsiz deneme | 형용사형 ‘aylık’ (맞춤법) | no |
| freeTrialYears | {count} yıl ücretsiz deneme | {count} yıllık ücretsiz deneme | 형용사형 ‘yıllık’ (맞춤법) | no |
| proPreviewEndedSubtitle | Pro önizlemeniz sona erdi. {proName} ile tüm Pro özelliklerini kullanmaya devam edin. | Ücretsiz Pro süreniz sona erdi. {proName} ile tüm Pro özelliklerini kullanmaya devam edin. | ‘Pro önizleme(미리보기)’는 직역으로 체험 기간에 쓰지 않는 말. ‘무료 Pro 기간(Ücretsiz Pro süresi)’으로 (원칙 1, 4) | no |
| proPreviewActiveBanner | Ücretsiz Pro önizlemeniz {date} tarihine kadar geçerli. Bitmeden abone olursanız tüm Pro özelliklerini kesintisiz kullanmaya devam edersiniz. | Ücretsiz Pro süreniz {date} tarihine kadar geçerli. Süre bitmeden abone olursanız tüm Pro özelliklerini kesintisiz kullanmaya devam edebilirsiniz. | 위와 같은 용어 변경, ‘Süre bitmeden’으로 주어 보완 (원칙 1, 4) | no |
| trialTermsDays | {count} gün ücretsiz denemeyle başlar, ardından yıllık {price}. | {count} günlük ücretsiz denemeyle başlar, ardından yıllık {price} ücret alınır. | 형용사형 ‘günlük’, 체험 후 자동 결제됨을 ‘ücret alınır(요금 청구)’로 분명히 (맞춤법, 원칙 4) | no |
| trialTermsMonths | {count} ay ücretsiz denemeyle başlar, ardından yıllık {price}. | {count} aylık ücretsiz denemeyle başlar, ardından yıllık {price} ücret alınır. | 형용사형 ‘aylık’, 자동 결제 명시 (원칙 4) | no |
| trialTermsYears | {count} yıl ücretsiz denemeyle başlar, ardından yıllık {price}. | {count} yıllık ücretsiz denemeyle başlar, ardından yıllık {price} ücret alınır. | 형용사형 ‘yıllık’, 자동 결제 명시 (원칙 4) | no |
| trialTerms | Ücretsiz denemeyle başlar, ardından yıllık {price}. | Ücretsiz denemeyle başlar, ardından yıllık {price} ücret alınır. | 자동 결제 명시 (원칙 4) | no |
| cancelAnytime | Mağaza hesabınızdan istediğiniz zaman iptal edebilirsiniz. | İstediğiniz zaman abonelik ayarlarınızdan iptal edebilirsiniz. | ‘Mağaza hesabı(스토어 계정)’는 사용자에게 뜻이 없음. ‘구독 설정에서’로 (원칙 2) | no |
| proPreviewStarted | Zappit Pro’nun tüm özelliklerini {days} gün boyunca ücretsiz kullanın. Kredi kartı gerekmez, otomatik ücret alınmaz. | Zappit Pro’nun tüm özelliklerini {days} gün boyunca ücretsiz kullanın. Tamamen ücretsiz; süre bitince hiçbir ücret alınmaz. | ‘Kredi kartı gerekmez’ 관용구 대신 ‘완전 무료, 기간이 끝나도 요금이 청구되지 않음’으로 (원칙 4) | no |
| proPreviewEndsTomorrow | Pro önizleme yarın sona eriyor | Ücretsiz Pro süreniz yarın bitiyor | ‘Pro önizleme’ → ‘Ücretsiz Pro süreniz’ 용어 통일 (원칙 1, 4) | no |
| tapToKeepPro | Tüm Pro özelliklerini korumak için dokunun. | Tüm Pro özelliklerini kullanmaya devam etmek için dokunun. | ‘korumak(보호하다)’는 직역. ‘계속 이용하려면’으로 (원칙 1) | no |
| proPreviewEndedTitle | Pro önizlemeniz sona erdi | Ücretsiz Pro süreniz sona erdi | 용어 통일 (원칙 1, 4) | no |
| proPreviewEndedMessage | Zappit Pro’yu denediğiniz için teşekkürler! Tüm Pro özelliklerini kesintisiz kullanmaya devam etmek için abone olun. | Zappit Pro’yu beğendiniz mi? Tüm Pro özelliklerini kesintisiz kullanmaya devam etmek için abone olun. | ‘사용해 주셔서 감사합니다’ 대신 ‘Zappit Pro 마음에 드셨나요?’ (원칙 3, 4) | no |
| purchaseNotActivatedMessage | Ödemeniz alındı ama Pro henüz etkin değil. Satın alımları geri yükle’yi deneyin. | Ödemeniz alındı ama Pro henüz etkin değil. ‘Satın alımları geri yükle’ seçeneğine dokunun. | 버튼 이름 뒤에 접미사를 붙인 ‘geri yükle’yi’는 어색하고 따옴표도 없음. ‘‘…’ 항목을 누르세요’로 (원칙 6, 문장 부호) | no |
| paymentPendingMessage | Mağaza ödemenizi onaylar onaylamaz Pro açılır. | Ödemeniz onaylanır onaylanmaz Pro açılır. | ‘Mağaza’ 주어 제거 (원칙 2) | no |
| nothingToRestoreMessage | Bu mağaza hesabında etkin bir Zappit Pro aboneliği bulunamadı. | Bu hesapta etkin bir Zappit Pro aboneliği bulunamadı. | ‘mağaza hesabı’ → ‘이 계정’ (원칙 2) | no |
| alreadySubscribed | Bu aboneliğe zaten sahipsiniz. Satın alımları geri yükle’yi deneyin. | Bu aboneliğe zaten sahipsiniz. ‘Satın alımları geri yükle’ seçeneğine dokunun. | purchaseNotActivatedMessage와 같은 문제 (원칙 6, 문장 부호) | no |
| storeProblem | Mağazada bir sorun oluştu. Lütfen birazdan tekrar deneyin. | Satın alma sırasında bir sorun oluştu. Lütfen birazdan tekrar deneyin. | ‘스토어에 문제’ → ‘구매 중 문제가 발생’ (원칙 2) | no |
| extensionUpdatedReload | Zappit uzantısı güncellendi. Tüm kontrolleri kullanmaya devam etmek için bu sayfayı yenileyin. | Zappit uzantısı güncellendi. Tüm kontrolleri kullanmaya devam etmek için tarayıcıdaki sayfayı yenileyin. | 폰에 보이는 문구라 ‘bu sayfa(이 페이지)’가 모호함. ‘브라우저의 페이지’로 (원칙 6) | no |
| sleepTimer | Uyku zamanlayıcı | Uyku zamanlayıcısı | 복합명사 문법 오류: ‘Uyku zamanlayıcı’ → ‘Uyku zamanlayıcısı’ (맞춤법) | yes |
| sleepTimerLabel | Uyku zamanlayıcı | Uyku zamanlayıcısı | 위와 같음 (맞춤법) | no |
| turnOffAbFirst | Önce A-B Loop’u kapatın | Önce A-B döngüsünü kapatın | ‘A-B Loop’u’ → ‘A-B döngüsünü’ 용어 통일 (원칙 1) | no |
| abOffForLive | A-B Loop canlı yayınlarda kapalıdır | A-B döngüsü canlı yayınlarda kapalıdır | 용어 통일 (원칙 1) | no |
| multipleBrowsersMessage | Birden fazla tarayıcı çevrimiçi. Bu kumandanın kontrol edeceğini seçin. | Birden fazla tarayıcı çevrimiçi. Bu kumandanın kontrol edeceği tarayıcıyı seçin. | ‘kontrol edeceğini seçin’은 목적어가 빠진 문장. ‘조종할 브라우저를 고르세요’로 (원칙 6, 문법) | no |
| openSite | {site} aç | {site} sitesini aç | 목적격 접미사 누락(‘YouTube aç’). placeholder 뒤 모음조화 문제를 피해 ‘{site} sitesini aç’로 (문법) | no |
| proPreviewUntil | {date} tarihine kadar Pro önizleme | {date} tarihine kadar ücretsiz Pro | ‘Pro önizleme’ → ‘ücretsiz Pro’ 용어 통일 (원칙 1, 4) | no |
| tellAFriend | Bir arkadaşına öner | Bir arkadaşa öner | ‘arkadaşına’(반말 2인칭 소유)가 파일 전체의 존댓말(siz)과 어긋남. 중립형 ‘Bir arkadaşa öner’ (말투 통일) | yes |
| abLoopCount | A-B Loop tekrar sayısı | A-B döngüsü tekrar sayısı | ‘A-B Loop’ 미번역 → 용어 통일 (원칙 1) | yes |
| noBrowserConnectedShare | Bağlı tarayıcı yok. Zappit uzantısının olduğu tarayıcıyı açıp tekrar deneyin. | Bağlı tarayıcı yok. Zappit uzantısının yüklü olduğu tarayıcıyı açıp tekrar deneyin. | ‘uzantısının olduğu(확장이 있는)’ → ‘설치된’으로 정확하게 (원칙 6) | no |
| openBrowserForTabs | Sekmelerini görmek için Zappit uzantısının olduğu tarayıcıyı açın. | Sekmelerini görmek için Zappit uzantısının yüklü olduğu tarayıcıyı açın. | 위와 같음 (원칙 6) | no |
| reorderHint | Sırasını değiştirmek için bir öğeye basılı tutup sürükleyin | Sırasını değiştirmek için bir öğeyi basılı tutup sürükleyin | ‘basılı tutmak’은 목적격을 씀: ‘öğeye’ → ‘öğeyi’ (문법) | no |
| addToFavorites | {site} Favorilere ekle | {site} sitesini Favorilere ekle | 목적격 누락 (문법) | no |
| removeFromFavorites | {site} Favorilerden kaldır | {site} sitesini Favorilerden kaldır | 목적격 누락 (문법) | no |
| pairPhoneLimit | Bu bilgisayara zaten 3 telefon bağlı. Bağlı diğer telefonlarınızdan birinde Zappit’i açın ve ‘Diğer’ bölümünde ‘Bu telefonun bağlantısını kes’e dokunun. O telefon artık sizde değilse bilgisayardaki Zappit uzantısında ‘Reset’i kullanın. | Bu bilgisayara zaten 3 telefon bağlı. Bağlı diğer telefonlarınızdan birinde Zappit’i açın ve ‘Diğer’ bölümünde ‘Bu telefonun bağlantısını kes’e dokunun. Diğer telefonlarınıza erişiminiz yoksa bilgisayarınızdaki Zappit uzantısında ‘Reset’e tıklayın. | ‘O telefon(그 폰)’이 모호함 → ‘다른 폰에 접근할 수 없다면’, 컴퓨터에서 하는 동작이라 ‘kullanın’ → ‘tıklayın(클릭)’ (원칙 6) | no |
| disconnectPhoneMessage | Bu telefon artık bilgisayarınızı kontrol etmeyecek. Tekrar kullanmak için bilgisayarınızdaki QR kodunu tarayın. | Bu telefon artık bilgisayarınızı kontrol etmeyecek. Yeniden bağlanmak için bilgisayarınızdaki QR kodunu tarayın. | ‘다시 쓰려면’ → ‘다시 연결하려면’ (원칙 6) | no |
| connectedTo | {browser} ile bağlandı | {browser} ile bağlantı kuruldu | ‘X ile bağlandı’는 주어가 없어 어색함. ‘X와 연결됨(bağlantı kuruldu)’ (원칙 1) | no |
| browsersDisconnectedBody | Başka bir telefon ona bağlandı. Tekrar kullanmak için o bilgisayardaki QR kodunu tarayın. | Bu tarayıcıyı artık başka bir telefon kontrol ediyor. Yeniden bağlanmak için tarayıcının bulunduğu bilgisayardaki QR kodunu tarayın. | ‘ona(그것에)’, ‘tekrar kullanmak(다시 쓰다)’가 모호함. 대상과 동작(연결)을 분명히 (원칙 6) | no |
| onboardingWelcomeBody | Bilgisayarınızdaki her videoyu kontrol edin. Kurulum yalnızca iki kısa adım. | Bilgisayarınızdaki her videoyu kontrol edin. Kurulum yalnızca iki kısa adımda tamamlanır. | ‘Kurulum yalnızca iki kısa adım.’은 어색한 명사문. ‘두 단계로 끝나요’로 (원칙 5) | no |

## 확인이 필요한 부분

- **Pro preview 용어:** 한국어처럼 ‘Pro ücretsiz deneme’로 하면 기존 trialReminderNotificationTitle(‘Zappit Pro ücretsiz denemesi…’, 스토어 체험)과 같은 말이 되어 원칙 4에 어긋난다. 그래서 Pro preview는 ‘Ücretsiz Pro süresi’로 정했다. 웹 가이드·FAQ의 튀르키예어에 ‘Pro önizleme’가 있으면 같이 바꿔야 한다.
- **루프 용어:** 파일 안에서 loop는 ‘döngü’(loopOn·loopStart 등), repeat는 ‘tekrar’(재생목록 반복)로 쓰고 있어, A-B Loop와 Full Video Loop도 ‘döngü’로 맞췄다(YouTube 튀르키예어 ‘Döngü’, VLC ‘A-B döngüsü’). abLoopCount는 리모컨 설정 이름이라 웹에 인용되면 동기화가 필요하다.
- **welcomeToPro:** 튀르키예어에서 ‘…’ya hoş geldiniz’는 한국어만큼 어색하지는 않다(일부 구독 앱이 씀). 다만 결과를 알리는 쪽이 원칙 3에 맞고 placeholder 뒤 접미사도 없어져 ‘{proName} etkinleştirildi’로 바꿨다. 환영 인사를 원하면 되돌려도 된다.
- **chapters / episodes:** 둘 다 ‘Bölümler’다. YouTube(챕터)와 Netflix(에피소드)가 각자 튀르키예어에서 쓰는 공식 이름이라 그대로 뒀다. 한 화면에 같이 나오지 않아 문제는 없지만, 접근성 라벨 previousChapter/nextChapter와 nextEpisode도 같은 말(‘Sonraki bölüm’)이다.
- **learnMore:** ‘Daha fazla bilgi’는 Google 등 튀르키예어 앱에서 Learn more 버튼에 쓰는 표준 표현이라 바꾸지 않았다.
