# 루마니아어(ro) 번역 검토 보고서

가장 큰 문제는 Pro preview를 'Previzualizare Pro'(미리보기)로 직역한 것과, 'magazin'(스토어)·'cont de magazin'(스토어 계정) 같은 내부 용어가 결제 문구 곳곳에 들어간 것이었습니다. 스토어 무료 체험은 'perioadă de probă'와 'perioadă gratuită'가 섞여 있어 'perioadă de probă gratuită'로 통일하고, Pro preview는 'accesul gratuit la Pro'(Pro 무료 이용)로 바꿔 두 개념이 서로 다른 단어가 되게 했습니다. 그 밖에 모호한 대상('acel telefon', '이 페이지')과 버튼 이름 인용 부호 누락, 문법 오류 1건을 고쳤습니다. 전체 28개 키를 수정했고 메뉴 이름은 바꾸지 않았습니다.

| 키 | 수정 전 | 수정 후 | 문제 (한국어로, 적용한 가이드 원칙 번호 포함) | menu-name |
|---|---|---|---|---|
| proFeatureDedicatedControllers | Deblochează telecomenzi dedicate site-urilor | Deblochează telecomenzile create special pentru anumite site-uri | 'dedicate site-urilor'만으로는 범위가 모호함. 지원 사이트 소개 문구와 같은 '특정 사이트용으로 따로 만든 리모컨'으로 명확화 (원칙 6) | no |
| proFeatureAllSpeeds | Toate vitezele de redare | Acces la toate vitezele de redare | 명사 나열이라 혜택이 안 보임. '모든 재생 속도 이용 가능'으로 (원칙 6) | no |
| proFeatureFullLoop | Repetarea întregului videoclip, nelimitat | Repetare nelimitată a întregului videoclip | 쉼표로 이어 붙인 어색한 구조, 성 일치 오류(repetarea… nelimitat). '무제한'을 앞쪽에 두는 자연스러운 어순으로 (원칙 5, 문법) | no |
| storeUnavailable | Magazinul nu este disponibil acum. Încearcă mai târziu. | Achizițiile nu sunt disponibile momentan. Încearcă din nou mai târziu. | 'Magazinul'(스토어)은 내부 용어. '지금은 구매할 수 없어요'로 (원칙 2) | no |
| welcomeToPro | Bun venit în {proName} | {proName} este acum activ! | 'Bun venit în'은 구매 직후 인사로 어색하고 전치사도 부자연스러움. 결과를 알리는 '이제 활성화됨!'으로 (원칙 3) | no |
| proPreviewEndedSubtitle | Previzualizarea Pro s-a încheiat. Păstrează toate funcțiile Pro cu {proName}. | Accesul gratuit la Pro s-a încheiat. Păstrează toate funcțiile Pro cu {proName}. | 'Previzualizarea Pro'(미리보기)는 직역으로 루마니아어 앱에서 쓰지 않는 말. Pro preview 용어를 'accesul gratuit la Pro'(Pro 무료 이용)로 통일 (원칙 1, 4) | no |
| proPreviewActiveBanner | Previzualizarea Pro gratuită este activă până pe {date}. Abonează-te înainte să se termine ca să păstrezi toate funcțiile Pro fără întrerupere. | Accesul gratuit la Pro este activ până la {date}. Abonează-te înainte să se termine ca să păstrezi toate funcțiile Pro fără întrerupere. | 위와 같은 용어 통일. 'până pe'는 구어라 표준형 'până la'로 (원칙 1, 4) | no |
| cancelAnytime | Anulezi oricând din contul magazinului. | Poți anula oricând din pagina de abonamente. | 'contul magazinului'(스토어 계정)은 사용자가 이해 못 함. '구독 페이지에서 언제든지 해지 가능'으로 (원칙 2) | no |
| startFreeTrial | Începe perioada gratuită | Începe perioada de probă gratuită | 스토어 무료 체험 용어를 'perioadă de probă gratuită'로 통일 (원칙 4, 체크리스트 9) | no |
| proPreviewStarted | Folosește gratuit toate funcțiile Zappit Pro timp de {days} zile. Fără card, fără plăți automate. | Folosește toate funcțiile Zappit Pro timp de {days} zile. Complet gratuit, fără nicio plată automată. | 'Fără card'(카드 불필요)는 영어 관용구 직역. '완전 무료, 자동 결제 없음'만 전달하고 '무료' 중복 제거 (원칙 4) | no |
| proPreviewEndsTomorrow | Previzualizarea Pro se termină mâine | Accesul gratuit la Pro se încheie mâine | Pro preview 용어 통일 (원칙 1) | no |
| proPreviewEndedTitle | Previzualizarea Pro s-a încheiat | Accesul gratuit la Pro s-a încheiat | Pro preview 용어 통일 (원칙 1) | no |
| proPreviewEndedMessage | Mulțumim că ai încercat Zappit Pro! Abonează-te ca să folosești în continuare toate funcțiile Pro fără întrerupere. | Sperăm că ți-a plăcut accesul gratuit la Zappit Pro! Abonează-te ca să folosești în continuare toate funcțiile Pro fără întrerupere. | 'încercat'(써 봄)+감사 인사를 '무료 Pro 이용이 마음에 드셨길 바라요'로. 무료였음이 드러나게 (원칙 3, 4) | no |
| purchaseNotActivatedMessage | Plata a fost făcută, dar Pro nu este încă activ. Încearcă Restabilește achizițiile. | Plata a fost făcută, dar Pro nu este încă activ. Încearcă „Restabilește achizițiile”. | 버튼 이름을 따옴표 없이 문장에 넣어 문법이 깨짐. „…” 인용으로 (공통 규칙: 문장 부호) | no |
| paymentPendingMessage | Pro se activează imediat ce magazinul confirmă plata. | Pro se activează imediat ce plata este confirmată. | 'magazinul'(스토어) 제거, '결제가 확인되면' (원칙 2) | no |
| nothingToRestoreMessage | Nu s-a găsit niciun abonament Zappit Pro activ pentru acest cont de magazin. | Nu s-a găsit niciun abonament Zappit Pro activ pentru acest cont. | 'cont de magazin'(스토어 계정) 제거 (원칙 2) | no |
| alreadySubscribed | Ai deja acest abonament. Încearcă Restabilește achizițiile. | Ai deja acest abonament. Încearcă „Restabilește achizițiile”. | 버튼 이름 인용 부호 누락 (공통 규칙: 문장 부호) | no |
| storeProblem | Magazinul a întâmpinat o problemă. Încearcă din nou peste puțin timp. | A apărut o problemă la achiziție. Încearcă din nou peste puțin timp. | 'Magazinul'(스토어) 제거, '구매 중 문제가 발생' (원칙 2) | no |
| trialReminderMessage | Vrei să-ți amintim cu o zi înainte de sfârșitul perioadei gratuite, ca să nu ai surprize la plată? | Vrei să-ți amintim cu o zi înainte de sfârșitul perioadei de probă gratuite, ca să nu ai surprize la plată? | 스토어 체험 용어 통일('perioada gratuită' → 'perioada de probă gratuită') (원칙 4, 체크리스트 9) | no |
| trialReminderBody | Perioada gratuită se termină mâine. Pe {date} vei plăti {price}. Dacă nu vrei să continui, anulează abonamentul înainte de această dată. | Perioada de probă gratuită se termină mâine. Pe {date} vei plăti automat {price}. Dacă nu vrei să continui, anulează abonamentul înainte de această dată. | 용어 통일 + 자동 결제임을 명시('vei plăti automat') (원칙 4) | no |
| trialReminderNotificationTitle | Perioada gratuită Zappit Pro se termină curând | Perioada de probă gratuită Zappit Pro se termină curând | 스토어 체험 용어 통일 (원칙 4) | no |
| trialReminderChannel | Memento perioadă gratuită | Memento perioadă de probă gratuită | 스토어 체험 용어 통일 (원칙 4) | no |
| trialReminderChannelDescription | Un memento înainte de sfârșitul perioadei gratuite | Un memento înainte de sfârșitul perioadei de probă gratuite | 스토어 체험 용어 통일 (원칙 4) | no |
| extensionUpdatedReload | Extensia Zappit a fost actualizată. Reîncarcă pagina ca să poți folosi în continuare toate comenzile. | Extensia Zappit a fost actualizată. Reîncarcă pagina în browser ca să poți folosi în continuare toate comenzile. | 폰에 보이는 문구라 '페이지'가 어디인지 모호. '브라우저에서 페이지를 새로고침'으로 (원칙 6) | no |
| proPreviewUntil | Previzualizare Pro până pe {date} | Acces gratuit la Pro până la {date} | Pro preview 용어 통일, 'până pe' → 'până la' (원칙 1) | no |
| pairPhoneLimit | La acest computer sunt deja conectate 3 telefoane. Deschide Zappit pe unul dintre celelalte telefoane conectate și atinge „Deconectează acest telefon” din „Mai multe”. Dacă nu mai ai acel telefon, folosește „Reset” din extensia Zappit de pe computerul tău. | La acest computer sunt deja conectate 3 telefoane. Deschide Zappit pe unul dintre celelalte telefoane conectate și atinge „Deconectează acest telefon” din „Mai multe”. Dacă nu ai acces la niciunul dintre ele, dă clic pe „Reset” în extensia Zappit de pe computer. | 'acel telefon'(그 폰)이 모호 → '그중 어느 폰에도 접근할 수 없다면'. 컴퓨터에서는 'atinge'(탭) 대신 'dă clic pe'(클릭). 'Reset'은 확장 영어 라벨 유지 (원칙 6) | no |
| disconnectPhoneMessage | Acest telefon nu va mai controla computerul. Ca să-l folosești din nou, scanează codul QR de pe computer. | Acest telefon nu va mai controla computerul. Ca să-l conectezi din nou, scanează codul QR de pe computer. | 'folosești'(쓰다) → 'conectezi'(연결하다) (원칙 6) | no |
| browsersDisconnectedBody | Alt telefon s-a conectat la el. Ca să-l folosești din nou, scanează codul QR de pe acel computer. | Un alt telefon a preluat conexiunea. Ca să te reconectezi, scanează codul QR din extensia Zappit de pe computer. | 'el'(그것)·'-l folosești'(쓰다)·'acel computer'가 모호. '다른 폰이 연결을 가져갔어요. 다시 연결하려면 컴퓨터의 Zappit 확장 QR 코드를 스캔하세요'로 (원칙 6) | no |

## 확인이 필요한 부분

- **Pro preview 용어:** 'accesul gratuit la Pro'(Pro 무료 이용)를 택했습니다. 스토어 체험 'perioadă de probă gratuită'와 겹치지 않게 하려고 'probă'(체험)라는 단어를 일부러 피했습니다. 웹 번역에서 Pro preview를 다른 말로 부르고 있다면 맞춰야 합니다.
- **cancelAnytime:** 'din pagina de abonamente'(구독 페이지에서)로 썼습니다. iOS는 설정 > Apple 계정 > 구독, Android는 Play 스토어 > 구독이라 플랫폼과 무관한 표현을 골랐습니다.
- **원칙 5(어순):** 루마니아어는 형용사가 명사 뒤에 오는 언어라 'Voice Boost nelimitat', 'A-B Loop nelimitat'은 자연스러운 어순이므로 그대로 두었습니다('Nelimitat Voice Boost'는 비문입니다). proFeatureFullLoop만 문법 오류가 있어 고쳤습니다.
- **복수형:** freeTrialDays/Weeks/Months/Years, backSeconds, speedTrialOver 등은 원문이 ICU plural이 아니라 숫자에 따른 형태 변화가 없습니다. 현재 값(7일, 1주, 10초 등)에서는 문제없지만, 1개월('1 luni')이나 20 이상('20 de secunde')이 되면 틀린 문장이 됩니다. 기간 설정을 바꾸려면 원문 키를 plural로 바꾸는 것을 권합니다.
- **YouTube 메뉴 이름:** ytMemberships('Abonamente de membru'), sleepTimer('Temporizator')는 YouTube 루마니아어 공식 명칭을 확인하지 못해 그대로 두었습니다.
- 확인한 결과 쉼표 아래 점(ș ț) 대신 세디유(ş ţ)를 쓴 곳은 없었습니다.
