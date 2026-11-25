# 독일어(de) 번역 검토 보고서

전체 347개 문구 중 33개를 고쳤습니다. 가장 큰 문제는 Pro preview를 직역한 "Pro-Vorschau"(독일어 앱에서 무료 이용 기간을 이렇게 부르지 않음)와, 결제 문구에 남아 있던 "Store", "Store-Konto" 같은 내부 용어였습니다. 그 밖에 기능 목록에서 혜택("unbegrenzt")이 뒤로 밀린 어순, 폰에서 보이는데 "이 페이지"·"이 폰"처럼 대상이 모호한 문구, 그리고 1주 체험이 "1 Wo. gratis testen"처럼 약어로 보이던 체험 배지(복수형 처리 없음)를 고쳤습니다. 말투는 파일 전체가 쓰는 du(친근체)를 그대로 유지했습니다.

| 키 | 수정 전 | 수정 후 | 문제 (한국어로, 적용한 가이드 원칙 번호 포함) | menu-name |
|---|---|---|---|---|
| errorButtonNotFound | Diese Taste wurde auf der Seite nicht gefunden | Diese Schaltfläche wurde auf der Seite nicht gefunden | "Taste"는 키보드·리모컨의 물리 버튼이다. 웹 페이지의 버튼은 "Schaltfläche"라고 부른다. (원칙 1) | no |
| proFeatureDedicatedControllers | Spezielle Fernbedienungen freischalten | Angepasste Fernbedienungen für unterstützte Websites | "특수 리모컨"으로만 읽혀 무엇에 특화됐는지 안 보인다. 지원 사이트 전용임을 밝히고, Supported sites 소개 문구("speziell angepasste Fernbedienung")와 용어를 맞췄다. (원칙 6, 체크 9) | no |
| proFeatureAllSpeeds | Alle Wiedergabegeschwindigkeiten | Alle Wiedergabegeschwindigkeiten verfügbar | 명사만 나열해 혜택이 안 보인다. "모두 사용 가능"을 더했다. (원칙 6) | no |
| proFeatureVoiceBoost | Voice Boost unbegrenzt | Unbegrenzter Voice Boost | 혜택인 "무제한"이 뒤로 밀려 있었다. 독일어도 꾸미는 말이 앞에 온다. (원칙 5) | no |
| proFeatureFullLoop | Ganzes Video wiederholen, unbegrenzt | Unbegrenzte Wiederholung ganzer Videos | 쉼표 뒤에 "무제한"을 붙인 어색한 어순. 혜택을 앞에 두었다. (원칙 5) | no |
| proFeatureAbLoop | A-B-Loop unbegrenzt | Unbegrenzter A-B-Loop | 위와 같음. (원칙 5) | no |
| storeUnavailable | Der Store ist gerade nicht verfügbar. Bitte versuch es später noch einmal. | Käufe sind gerade nicht möglich. Bitte versuch es später noch einmal. | "Store"라는 내부 용어 대신 사용자가 겪는 결과(지금 구매할 수 없음)를 썼다. (원칙 2) | no |
| freeTrialDays | {count} Tage gratis testen | {count, plural, one{{count} Tag gratis testen} other{{count} Tage gratis testen}} | 1일일 때 "1 Tage"가 되는 문법 오류를 막으려고 복수형을 넣었다. (공통 규칙: 복수형) | no |
| freeTrialWeeks | {count} Wo. gratis testen | {count, plural, one{{count} Woche gratis testen} other{{count} Wochen gratis testen}} | 실제 체험은 1주라 배지가 "1 Wo. gratis testen"이라는 약어로 보였다. 약어를 풀고 복수형을 넣었다. (원칙 6, 공통 규칙: 복수형) | no |
| freeTrialMonths | {count} Mon. gratis testen | {count, plural, one{{count} Monat gratis testen} other{{count} Monate gratis testen}} | 위와 같음. (원칙 6, 공통 규칙) | no |
| freeTrialYears | {count} J. gratis testen | {count, plural, one{{count} Jahr gratis testen} other{{count} Jahre gratis testen}} | 위와 같음. (원칙 6, 공통 규칙) | no |
| proPreviewEndedSubtitle | Deine Pro-Vorschau ist abgelaufen. Behalte alle Pro-Funktionen mit {proName}. | Deine kostenlose Pro-Testphase ist abgelaufen. Mit {proName} kannst du alle Pro-Funktionen weiter nutzen. | "Pro-Vorschau"는 직역어로, 독일어 앱에서 무료 이용 기간을 이렇게 부르지 않는다. "Pro-Testphase"로 통일했다. "Behalte … mit"도 직역투라 자연스럽게 바꿨다. (원칙 1, 4) | no |
| proPreviewActiveBanner | Deine kostenlose Pro-Vorschau läuft bis {date}. Abonniere vorher, um alle Pro-Funktionen nahtlos zu behalten. | Deine kostenlose Pro-Testphase läuft bis {date}. Abonniere vorher, damit du alle Pro-Funktionen ohne Unterbrechung weiter nutzen kannst. | 용어 통일. "nahtlos behalten"은 seamlessly를 직역한 말이라 "ohne Unterbrechung weiter nutzen"으로 바꿨다. (원칙 1) | no |
| trialTermsMonths | Beginnt mit {count} Mon. gratis, danach {price}/Jahr. | Beginnt mit {count, plural, one{{count} Monat} other{{count} Monaten}} gratis, danach {price}/Jahr. | 결제 안내에 쓰인 약어를 풀고 복수형을 넣었다. (원칙 4, 6, 공통 규칙) | no |
| trialTermsYears | Beginnt mit {count} J. gratis, danach {price}/Jahr. | Beginnt mit {count, plural, one{{count} Jahr} other{{count} Jahren}} gratis, danach {price}/Jahr. | 위와 같음. (원칙 4, 6, 공통 규칙) | no |
| cancelAnytime | Jederzeit in deinem Store-Konto kündbar. | Jederzeit in deinen Abo-Einstellungen kündbar. | "Store-Konto"는 사용자가 무엇인지 모르는 말이다. 실제로 해지하는 곳(구독 설정)을 썼다. (원칙 2) | no |
| proPreviewStarted | Nutze alle Funktionen von Zappit Pro {days} Tage lang kostenlos. Keine Kreditkarte nötig, keine automatische Abbuchung. | Nutze {days} Tage lang alle Funktionen von Zappit Pro. Komplett kostenlos – danach wird nichts automatisch abgerechnet. | 독일은 신용카드 사용이 적고 결제는 스토어가 처리하므로 "Keine Kreditkarte nötig"는 맞지 않는다. "Abbuchung"(계좌 출금)보다 끝난 뒤 자동 결제가 없다는 사실을 분명히 썼다. (원칙 4) | no |
| proPreviewEndsTomorrow | Pro-Vorschau endet morgen | Pro-Testphase endet morgen | 용어 통일. (원칙 1) | no |
| proPreviewEndedTitle | Deine Pro-Vorschau ist abgelaufen | Deine Pro-Testphase ist abgelaufen | 용어 통일. (원칙 1) | no |
| proPreviewEndedMessage | Danke, dass du Zappit Pro ausprobiert hast! Abonniere, um alle Pro-Funktionen nahtlos weiter zu nutzen. | Danke, dass du Zappit Pro ausprobiert hast! Mit einem Abo kannst du alle Pro-Funktionen weiter nutzen. | 감사 인사와 "ausprobiert"(무료로 써 봄)는 독일어 앱에서 자연스럽고 유료 이용으로 읽히지 않아 그대로 두었다. 이미 끝난 체험에 "nahtlos"(끊김 없이)는 맞지 않아 뺐다. (원칙 1, 3, 4) | no |
| purchaseNotActivatedMessage | Dein Kauf ist durchgegangen, aber Pro ist noch nicht aktiv. Versuch es mit „Käufe wiederherstellen“. | Dein Kauf war erfolgreich, aber Pro ist noch nicht aktiv. Tippe auf „Käufe wiederherstellen“. | "ist durchgegangen"은 went through를 직역한 구어다. 해야 할 동작(버튼 탭)을 분명히 썼다. (원칙 1, 6) | no |
| paymentPendingMessage | Pro wird aktiviert, sobald der Store deine Zahlung bestätigt. | Pro wird aktiviert, sobald deine Zahlung bestätigt ist. | "Store" 주어를 뺐다. (원칙 2) | no |
| nothingToRestoreMessage | Für dieses Store-Konto wurde kein aktives Zappit Pro-Abo gefunden. | Für dieses Konto wurde kein aktives Abo von Zappit Pro gefunden. | "Store-Konto" 제거. "Zappit Pro-Abo"는 독일어 맞춤법상 붙임표가 틀린 형태라(정식은 Zappit-Pro-Abo, 브랜드 표기가 바뀜) "Abo von Zappit Pro"로 풀었다. (원칙 2, 공통 규칙: 맞춤법) | no |
| storeProblem | Im Store ist ein Problem aufgetreten. Bitte versuch es gleich noch einmal. | Beim Kauf ist ein Problem aufgetreten. Bitte versuch es gleich noch einmal. | "Store" 대신 사용자가 하던 일(구매)을 썼다. (원칙 2) | no |
| trialReminderTitle | Erinnerung an den Testzeitraum | Erinnerung an den Gratis-Test | 스토어 체험을 다른 키에서는 모두 "Gratis-Test"라고 부르는데 여기만 "Testzeitraum"이었다. (체크 9) | no |
| trialReminderBody | Dein Gratis-Test endet morgen. Am {date} werden {price} berechnet. Wenn du nicht weitermachen willst, kündige dein Abo vorher. | Dein Gratis-Test endet morgen. Am {date} werden {price} berechnet. Wenn du das Abo nicht behalten willst, kündige es vorher. | "weitermachen"(계속하다)은 continue 직역이라 무엇을 계속하는지 모호하다. 구독을 유지할지로 분명히 했다. (원칙 4, 6) | no |
| extensionUpdatedReload | Die Zappit-Erweiterung wurde aktualisiert. Lade diese Seite neu, um weiter alle Steuerungen zu nutzen. | Die Zappit-Erweiterung wurde aktualisiert. Lade die Seite im Browser neu, um weiter alle Funktionen zu nutzen. | 폰에 보이는 문구라 "diese Seite"가 어느 페이지인지 알 수 없다. "브라우저의 페이지"로 밝혔다. "Steuerungen"(복수)도 어색해 "Funktionen"으로 바꿨다. (원칙 6) | no |
| voiceBoostTrialLeft | Voice Boost-Test, noch {count} Sekunden | Voice Boost zum Testen: noch {count} Sekunden | "Voice Boost-Test"는 맞춤법상 틀린 붙임표다(정식은 Voice-Boost-Test, 기능 이름이 바뀜). 기능 이름을 그대로 두는 구조로 바꿨다. (공통 규칙: 브랜드 이름, 맞춤법) | no |
| proPreviewUntil | Pro-Vorschau bis {date} | Pro-Testphase bis {date} | 용어 통일. (원칙 1) | no |
| noLinkInShare | Im Geteilten wurde kein Link gefunden | In den geteilten Inhalten wurde kein Link gefunden | "Im Geteilten"은 독일어로 어색한 명사화다. (원칙 1) | no |
| pairPhoneLimit | … tippe unter ‚Mehr‘ auf ‚Dieses Handy trennen‘. Wenn du dieses Handy nicht mehr hast, nutze ‚Reset‘ in der Zappit-Erweiterung auf deinem Computer. | … tippe unter „Mehr“ auf „Dieses Handy trennen“. Wenn du keinen Zugriff auf die anderen Handys hast, klicke in der Zappit-Erweiterung auf deinem Computer auf „Reset“. | "dieses Handy"(이 폰)는 지금 보고 있는 폰으로 읽혀 대상이 틀렸다. "다른 폰에 접근할 수 없다면"으로 고쳤다. "nutze 'Reset'"보다 버튼을 누르는 동작(컴퓨터이므로 klicke)을 썼다. 따옴표를 파일의 다른 곳과 같은 „ “로 맞췄다. 메뉴 이름 자체는 바꾸지 않았다. (원칙 6, 공통 규칙: 따옴표) | no |
| disconnectPhoneMessage | … Um es wieder zu nutzen, scanne den QR-Code auf deinem Computer. | … Um es wieder zu verbinden, scanne den QR-Code auf deinem Computer. | QR 스캔이 하는 일은 "연결"이다. 뭉뚱그린 동사 "nutzen" 대신 "verbinden". (원칙 6) | no |
| browsersDisconnectedBody | Ein anderes Handy hat sich damit verbunden. Um es wieder zu nutzen, scanne den QR-Code auf diesem Computer. | Ein anderes Handy hat die Verbindung übernommen. Um die Verbindung wiederherzustellen, scanne den QR-Code auf dem Computer. | "es"는 남성 명사 Browser와 맞지 않고, 브라우저가 여러 개일 수도 있어 대명사가 틀린다. 대명사를 없애고 "연결 복구"라는 실제 동작을 썼다. (원칙 6) | no |

## 확인이 필요한 부분

- **Pro preview 용어:** "Pro-Vorschau"를 "(kostenlose) Pro-Testphase"로 바꿨습니다. 스토어 체험은 기존대로 "Gratis-Test"/"gratis testen"이고, 둘은 "Pro-"가 붙었는지로 구분됩니다(가이드 원칙 4). 웹 FAQ·가이드(`zappit_web/src/lib/i18n/messages/`)의 독일어 문구에 "Pro-Vorschau"가 있다면 같은 용어로 맞춰야 합니다.
- **복수형(ICU plural) 추가:** `freeTrialDays/Weeks/Months/Years`, `trialTermsMonths/Years`는 영어 원문에 plural이 없지만 독일어 문법(1 Woche / 2 Wochen) 때문에 plural을 넣었습니다(placeholder 집합은 원문과 같음, `count`는 int). `dart run intl_utils:generate` 후 빌드에 문제가 없는지 확인해 주세요. 문제가 있으면 약어 없이 "Gratis-Test: {count} Woche(n)" 같은 형태로 되돌릴 수 있습니다.
- **welcomeToPro("Willkommen bei {proName}")는 그대로 두었습니다.** 독일어 앱에서는 구매 직후 "Willkommen bei …"가 흔하고 자연스러워, 한국어와 달리 바꿀 이유가 없다고 판단했습니다. 결과를 알려 주는 말을 원하시면 "{proName} ist jetzt aktiv"를 제안합니다.
- **learnMore("Mehr erfahren")도 독일어 표준 버튼 표현이라 유지했습니다.**
- **ytLikedVideos("Videos mit „Mag ich“"):** YouTube 독일어 공식 이름은 "Videos mit „Mag ich“-Bewertung"일 수 있습니다. 실제 YouTube 독일어 화면에서 확인하지 못해 바꾸지 않았습니다.
- **adBadge("WERBUNG"):** YouTube 독일어는 광고 표시에 "Anzeige"를 씁니다. 파일 전체가 "Werbung"으로 통일돼 있어 그대로 두었습니다.
