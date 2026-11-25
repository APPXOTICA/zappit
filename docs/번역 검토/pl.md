# 폴란드어(pl) 번역 검토 보고서

주요 문제는 Pro preview를 폴란드어 앱에 없는 직역어 ‘podgląd Pro’(미리보기)로 옮긴 것, 결제 문구에 ‘sklep’(스토어)·‘konto sklepu’ 같은 내부 용어가 들어간 것, 그리고 ‘Witaj w’, ‘Dzięki za wypróbowanie’, ‘Bez karty’ 같은 영어 관용 표현의 직역이었다. Pro preview는 ‘Darmowy dostęp Pro’(무료 Pro 이용), 스토어 체험은 ‘(darmowy) okres próbny’로 나눠 두 개념이 섞이지 않게 했다. 그 밖에 ‘Unlimited’ 어순, 버튼 이름을 동사 뒤에 붙인 비문(‘Spróbuj Przywróć zakupy’), 다운로드로도 읽히는 ‘pobrane’, 영어 그대로인 ‘A-B Loop’를 고쳤다. 말투는 기존 파일의 친근한 ty 반말(Dotknij, Sprawdź)을 그대로 유지했다.

수정한 키: 34개

| 키 | 수정 전 | 수정 후 | 문제 | menu-name |
|---|---|---|---|---|
| proFeatureDedicatedControllers | Odblokuj piloty dopasowane do stron | Odblokuj specjalne piloty dla obsługiwanych stron | ‘dopasowane do stron’은 범위가 모호하다(웹페이지 단위로 맞춘 리모컨처럼 읽힘). 앱 메뉴 ‘Obsługiwane strony’와 연결해 ‘지원 사이트용 전용 리모컨’으로 명확히 함 (원칙 6) | no |
| proFeatureAllSpeeds | Wszystkie prędkości odtwarzania | Wybór dowolnej prędkości odtwarzania | 명사 나열이라 혜택이 안 보임. ‘원하는 재생 속도 선택 가능’으로 할 수 있는 일을 씀 (원칙 6) | no |
| proFeatureVoiceBoost | Voice Boost bez limitu | Nielimitowany Voice Boost | 혜택어 ‘bez limitu’가 뒤로 밀림. 폴란드어는 형용사가 명사 앞에 오므로 ‘Nielimitowany’를 앞에 둠 (원칙 5) | no |
| proFeatureFullLoop | Zapętlanie całego wideo bez limitu | Nielimitowane zapętlanie całego wideo | 위와 같음. ‘Nielimitowane’을 앞에 둠 (원칙 5) | no |
| proFeatureAbLoop | A-B Loop bez limitu | Nielimitowana pętla A-B | 위와 같음 + 영어 ‘A-B Loop’를 그대로 둔 직역 대신 폴란드어 앱에서 쓰는 ‘pętla A-B’로 통일(loopStart/loopEnd의 ‘pętli’와 일치) (원칙 1, 5, 9) | no |
| storeUnavailable | Sklep jest teraz niedostępny. Spróbuj ponownie później. | Nie można teraz dokonać zakupu. Spróbuj ponownie później. | ‘Sklep’(스토어)는 사용자가 모르는 내부 용어. ‘지금은 구매할 수 없어요’로 결과를 씀 (원칙 2) | no |
| welcomeToPro | Witaj w {proName} | Aktywowano {proName} | 구매 직후 ‘Witaj w …’(…에 오신 걸 환영) 인사 대신 결과를 알리는 ‘{proName} 활성화됨’. proRestored(‘Przywrócono {proName}’)와 같은 구조 (원칙 3) | no |
| proPreviewEndedSubtitle | Twój podgląd Pro się skończył. Zachowaj wszystkie funkcje Pro z {proName}. | Darmowy dostęp Pro dobiegł końca. Z {proName} zachowasz wszystkie funkcje Pro. | ‘podgląd Pro’(Pro 미리보기)는 폴란드어 앱에 없는 직역어. Pro preview 용어를 ‘Darmowy dostęp Pro’(무료 Pro 이용)로 통일하고, ‘Zachowaj … z’ 직역 어순을 자연스럽게 고침 (원칙 1, 4) | no |
| proPreviewActiveBanner | Twój darmowy podgląd Pro jest aktywny do {date}. Zasubskrybuj przed jego końcem, aby bez przerwy korzystać ze wszystkich funkcji Pro. | Darmowy dostęp Pro jest aktywny do {date}. Zasubskrybuj przed jego końcem, aby bez przerwy korzystać ze wszystkich funkcji Pro. | ‘podgląd Pro’ → ‘Darmowy dostęp Pro’ 용어 통일, 불필요한 ‘Twój’ 삭제 (원칙 1, 4) | no |
| cancelAnytime | Anulujesz w dowolnej chwili na koncie sklepu. | Możesz zrezygnować w dowolnej chwili w ustawieniach subskrypcji. | ‘na koncie sklepu’(스토어 계정)는 사용자가 모르는 말. ‘구독 설정에서 언제든지 해지할 수 있어요’로 할 일을 씀 (원칙 2) | no |
| startFreeTrial | Zacznij za darmo | Rozpocznij okres próbny | ‘Zacznij za darmo’(무료로 시작)는 자동 결제되는 스토어 체험이 완전 무료처럼 읽혀 Pro 무료 이용과 헷갈림. ‘체험 기간 시작’으로 스토어 체험 용어(okres próbny)를 씀 (원칙 4) | yes |
| proPreviewStarted | Korzystaj za darmo ze wszystkich funkcji Zappit Pro przez {days} dni. Bez karty i bez automatycznych opłat. | Korzystaj ze wszystkich funkcji Zappit Pro przez {days} dni. Całkowicie za darmo, bez żadnych automatycznych opłat. | ‘Bez karty’(카드 없음)는 영어권 관용구 직역. ‘완전 무료, 자동 결제 없음’만 간결하게 전함 (원칙 4) | no |
| proPreviewEndsTomorrow | Podgląd Pro kończy się jutro | Darmowy dostęp Pro kończy się jutro | ‘podgląd Pro’ → ‘Darmowy dostęp Pro’ (원칙 1) | no |
| proPreviewEndedTitle | Twój podgląd Pro się skończył | Darmowy dostęp Pro dobiegł końca | ‘podgląd Pro’ → ‘Darmowy dostęp Pro’, ‘Twój … się skończył’ → 자연스러운 ‘dobiegł końca’ (원칙 1) | no |
| proPreviewEndedMessage | Dzięki za wypróbowanie Zappit Pro! Zasubskrybuj, aby dalej bez przerwy korzystać ze wszystkich funkcji Pro. | Jak wrażenia z Zappit Pro? Zasubskrybuj, aby dalej bez przerwy korzystać ze wszystkich funkcji Pro. | ‘Dzięki za wypróbowanie’ 감사 인사 직역 대신 ‘Zappit Pro 어떠셨나요?’로 질문형 (원칙 3, 4) | no |
| learnMore | Więcej | Dowiedz się więcej | ‘Więcej’(더 보기)만으로는 버튼 뜻이 약함. 폴란드어 앱의 관용 버튼 ‘Dowiedz się więcej’ (원칙 6) | yes |
| purchaseNotActivatedMessage | Płatność przeszła, ale Pro nie jest jeszcze aktywne. Spróbuj Przywróć zakupy. | Płatność się powiodła, ale Pro nie jest jeszcze aktywne. Dotknij „Przywróć zakupy”. | ‘Spróbuj Przywróć zakupy’는 비문(버튼 이름을 따옴표 없이 동사 뒤에 붙임), ‘Płatność przeszła’는 구어. ‘결제가 완료됐어요… „Przywróć zakupy”를 누르세요’ (원칙 6, 문법) | no |
| purchaseCancelledMessage | Nic nie zostało pobrane. Możesz spróbować ponownie w każdej chwili. | Nie pobrano żadnej opłaty. Możesz spróbować ponownie w dowolnej chwili. | ‘Nic nie zostało pobrane’는 ‘아무것도 다운로드되지 않음’으로도 읽힘. ‘요금이 청구되지 않았어요’로 결제 의미를 분명히 함 (원칙 4, 6) | no |
| paymentPendingMessage | Pro włączy się, gdy tylko sklep potwierdzi płatność. | Pro włączy się, gdy tylko płatność zostanie potwierdzona. | ‘sklep’(스토어) 삭제, ‘결제가 확인되면 바로 Pro가 켜져요’ (원칙 2) | no |
| nothingToRestoreMessage | Na tym koncie sklepu nie znaleziono aktywnej subskrypcji Zappit Pro. | Na tym koncie nie znaleziono aktywnej subskrypcji Zappit Pro. | ‘koncie sklepu’(스토어 계정) → ‘이 계정’ (원칙 2) | no |
| alreadySubscribed | Masz już tę subskrypcję. Spróbuj Przywróć zakupy. | Masz już tę subskrypcję. Dotknij „Przywróć zakupy”. | ‘Spróbuj Przywróć zakupy’ 비문 → ‘„Przywróć zakupy”를 누르세요’ (문법, 원칙 6) | no |
| storeProblem | W sklepie wystąpił problem. Spróbuj ponownie za chwilę. | Podczas zakupu wystąpił problem. Spróbuj ponownie za chwilę. | ‘W sklepie’(스토어에서) → ‘구매 중 문제가 발생했어요’ (원칙 2) | no |
| trialReminderBody | Twój darmowy okres próbny kończy się jutro. {date} zostanie pobrane {price}. Jeśli nie chcesz kontynuować, anuluj subskrypcję wcześniej. | Twój darmowy okres próbny kończy się jutro. {date} zostanie pobrana opłata {price}. Jeśli nie chcesz kontynuować, anuluj subskrypcję wcześniej. | ‘{date} zostanie pobrane {price}’는 성·격이 맞지 않는 어색한 문장. ‘{date}에 {price} 요금이 청구돼요’ (문법, 원칙 4) | no |
| extensionUpdatedReload | Rozszerzenie Zappit zostało zaktualizowane. Odśwież tę stronę, aby dalej korzystać ze wszystkich przycisków. | Rozszerzenie Zappit zostało zaktualizowane. Odśwież stronę w przeglądarce, aby dalej korzystać ze wszystkich przycisków. | 폰 앱에 보이는 문구라 ‘tę stronę’(이 페이지)가 모호함. ‘브라우저에서 페이지를 새로고침하세요’ (원칙 6) | no |
| turnOffAbFirst | Najpierw wyłącz A-B Loop | Najpierw wyłącz pętlę A-B | ‘A-B Loop’ → ‘pętla A-B’ 용어 통일 (원칙 1, 9) | no |
| abOffForLive | A-B Loop jest wyłączony w transmisjach na żywo | Pętla A-B jest wyłączona w transmisjach na żywo | ‘A-B Loop’ → ‘pętla A-B’ 용어 통일(여성형 일치 ‘wyłączona’) (원칙 1, 9) | no |
| speedTrialOver | Z powrotem 1x. Bez Pro możesz używać tej prędkości przez {count} s. | Prędkość wróciła do 1x. Bez Pro możesz używać tej prędkości przez {count} s. | ‘Z powrotem 1x’는 직역된 어색한 조각. ‘속도가 1x로 돌아갔어요’ (원칙 1) | no |
| offlineMessage | Sprawdź połączenie z internetem. Zappit połączy się ponownie sam. | Sprawdź połączenie z internetem. Zappit połączy się ponownie automatycznie. | 문장 끝 ‘sam’(혼자)은 어색함. ‘자동으로 다시 연결돼요’ (원칙 1) | no |
| pickVideosWithPro | Wybieraj filmy z telefonu z Pro | Wybieraj filmy z telefonu dzięki Pro | ‘z telefonu z Pro’ 전치사 ‘z’ 반복으로 어색함. ‘Pro로(dzięki Pro)’ (원칙 1, 문법) | no |
| proPreviewUntil | Podgląd Pro do {date} | Darmowy dostęp Pro do {date} | ‘Podgląd Pro’ → ‘Darmowy dostęp Pro’ 용어 통일 (원칙 1, 9) | no |
| abLoopCount | Liczba powtórzeń A-B Loop | Liczba powtórzeń pętli A-B | 설정 항목 이름의 ‘A-B Loop’ → ‘pętli A-B’ 용어 통일 (원칙 1, 9) | yes |
| pairPhoneLimit | Z tym komputerem połączone są już 3 telefony. Otwórz Zappit na jednym z pozostałych połączonych telefonów i dotknij „Odłącz ten telefon” w sekcji „Więcej”. Jeśli nie masz już tego telefonu, użyj opcji „Reset” w rozszerzeniu Zappit na komputerze. | Z tym komputerem połączone są już 3 telefony. Otwórz Zappit na jednym z pozostałych połączonych telefonów i dotknij „Odłącz ten telefon” w sekcji „Więcej”. Jeśli nie masz dostępu do żadnego z tych telefonów, kliknij „Reset” w rozszerzeniu Zappit na komputerze. | ‘nie masz już tego telefonu’(그 폰이 더 이상 없다면)는 어느 폰인지 모호. ‘이 폰들 중 어느 것에도 접근할 수 없다면’. 컴퓨터 확장에서는 ‘użyj opcji’ 대신 ‘„Reset”을 클릭’ (원칙 6) | no |
| disconnectPhoneMessage | Ten telefon przestanie sterować komputerem. Aby znów go używać, zeskanuj kod QR na komputerze. | Ten telefon przestanie sterować komputerem. Aby połączyć go ponownie, zeskanuj kod QR na komputerze. | ‘Aby znów go używać’(다시 쓰려면) → ‘다시 연결하려면’, 실제 동작을 씀 (원칙 6) | no |
| browsersDisconnectedBody | Połączył się z nim inny telefon. Aby znów go używać, zeskanuj kod QR na tamtym komputerze. | Połączył się z nim inny telefon. Aby połączyć się ponownie, zeskanuj kod QR na tamtym komputerze. | 위와 같음. ‘다시 연결하려면’ (원칙 6) | no |

## 확인이 필요한 부분

- **Pro preview 용어 ‘Darmowy dostęp Pro’:** 폴란드 앱에서 흔한 ‘darmowy dostęp Premium’ 구조를 따랐다. 스토어 체험(‘okres próbny’)과 구분하려고 ‘okres próbny’는 쓰지 않았다. 웹 번역에서 Pro preview를 다른 말로 썼다면 맞춰야 한다.
- **‘A-B Loop’ → ‘pętla A-B’:** 기존 파일은 영어 이름을 기능 이름처럼 썼지만 브랜드 목록에 없고 loopStart/loopEnd가 이미 ‘pętli’를 쓰고 있어 폴란드어로 통일했다. 웹 가이드가 ‘A-B Loop’를 인용하면 웹도 함께 바꾸거나, 영어 이름 유지로 되돌릴지 결정이 필요하다(abLoopCount는 설정 항목 이름).
- **스토어 체험 칩(freeTrialDays/Weeks/Months/Years ‘Za darmo: {count} …’):** ‘체험’이라는 말 없이 ‘무료’만 있어 Pro 무료 이용과 헷갈릴 여지가 조금 있으나, 바로 아래 약관 문구(trialTerms*)가 ‘그 뒤 {price}/년’을 보여 주고 칩 공간이 좁아 그대로 두었다.
- **siteWeb ‘Sieć’:** 일반 사이트 이름으로 ‘Sieć’(네트워크)는 다소 어색할 수 있다(대안: ‘WWW’, ‘Inne strony’). 화면 표시 위치를 보고 결정이 필요해 바꾸지 않았다.
- **termsOfService ‘Warunki korzystania’:** 폴란드에서는 ‘Regulamin’이 더 흔하지만 틀린 표현은 아니고 웹 페이지 제목과 맞물려 있어 그대로 두었다.
- **cancelAnytime:** 해지 위치를 ‘ustawienia subskrypcji’(구독 설정)로 썼다. iOS·Android 모두 구독 설정에서 해지하므로 맞지만, 한국어(‘구매 페이지’)와 표현이 다르다.
