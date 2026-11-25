# 체코어(cs) 번역 검토 보고서

주요 문제는 세 가지였습니다. Pro preview를 체코 앱에 없는 말인 ‘ukázka Pro’(샘플·데모)로 직역해, 스토어 체험(‘zkušební verze zdarma’, 버튼 ‘Vyzkoušet zdarma’)과도 겹치지 않는 ‘Období Pro zdarma’(Pro 무료 기간)로 통일했습니다. 결제 문구의 ‘obchod / účet obchodu’(스토어, 스토어 계정)를 사용자가 하는 일 중심으로 바꾸고, ‘No credit card required’ 직역과 ‘zpoplatněni’ 같은 부자연스러운 표현을 고쳤으며, 폰에서 보이는 ‘이 페이지/이 화면/그 폰’ 같은 모호한 지시어와 영어로 남아 있던 ‘A-B Loop’를 정리했습니다. 말투는 원래 파일의 존칭(vykání)을 유지했습니다.

변경 키: 34개

| 키 | 수정 전 | 수정 후 | 문제 (한국어로, 적용한 가이드 원칙 번호 포함) | menu-name |
|---|---|---|---|---|
| proFeatureDedicatedControllers | Odemkněte ovladače na míru webům | Odemkněte ovladače na míru jednotlivým webům | ‘na míru webům’은 어색하고 범위가 흐림. ‘jednotlivým webům’(각 사이트별)으로 특정 사이트 전용임을 분명히 함 (원칙 6) | no |
| proFeatureAllSpeeds | Všechny rychlosti přehrávání | Přehrávání jakoukoli rychlostí | 명사 나열이라 혜택이 안 보임. ‘어떤 속도로든 재생’으로 할 수 있는 일을 씀 (원칙 6) | no |
| proFeatureAbLoop | Neomezený A-B Loop | Neomezená smyčka A-B | 영어 ‘A-B Loop’를 그대로 둠. 체코 앱(VLC 등)의 일반 용어 ‘smyčka A-B’로, 혜택 ‘Neomezená’는 앞에 유지 (원칙 1, 5) | no |
| storeUnavailable | Obchod teď není dostupný. Zkuste to později. | Nákup teď není možný. Zkuste to později. | ‘Obchod’(스토어) 기술 용어. ‘지금은 구매할 수 없어요’로 (원칙 2) | no |
| welcomeToPro | Vítejte v {proName} | {proName} je aktivní! | ‘Vítejte v {proName}’ 직역 인사이고 브랜드 격변화도 어색. 결과를 알리는 ‘{proName} 활성화됨!’으로 (원칙 3) | no |
| proPreviewEndedSubtitle | Vaše ukázka Pro skončila. Ponechte si všechny funkce Pro s {proName}. | Období Pro zdarma skončilo. Předplaťte si {proName} a všechny funkce Pro vám zůstanou. | ‘ukázka Pro’(샘플/데모)는 체코 앱에 없는 말. Pro preview 용어를 ‘Období Pro zdarma’(Pro 무료 기간)로 통일, 직역 ‘Ponechte si … s’ 수정 (원칙 1, 4) | no |
| proPreviewActiveBanner | Vaše bezplatná ukázka Pro platí do {date}. Předplaťte si Pro před jejím koncem a všechny funkce Pro vám zůstanou bez přerušení. | Období Pro zdarma trvá do {date}. Když si Pro předplatíte ještě před jeho koncem, všechny funkce Pro vám zůstanou bez přerušení. | ‘ukázka Pro’ 용어 교체, ‘Vaše’ 직역 제거 (원칙 1, 4) | no |
| yearly | Ročně | Roční | 요금제 이름인데 부사(‘매년’). 체코 앱의 요금제 이름 형용사 ‘Roční’로 (원칙 1) | yes |
| monthly | Měsíčně | Měsíční | 위와 같음, ‘Měsíční’ (원칙 1) | yes |
| cancelAnytime | Kdykoli zrušíte v účtu obchodu. | Předplatné můžete kdykoli zrušit v nastavení předplatných. | ‘účet obchodu’(스토어 계정) 기술 용어. ‘구독 설정에서 언제든 해지할 수 있어요’로 (원칙 2) | no |
| proPreviewStarted | Užívejte si všechny funkce Zappit Pro {days} dní zdarma. Bez karty a bez automatických plateb. | Všechny funkce Zappit Pro teď máte {days} dní zdarma. Po skončení se nic automaticky neplatí. | ‘Bez karty’(No credit card required) 관용구 직역 제거, ‘끝나도 자동 결제되지 않아요’로 완전 무료임만 전달 (원칙 4) | no |
| proPreviewEndsTomorrow | Ukázka Pro zítra končí | Období Pro zdarma zítra končí | ‘ukázka Pro’ 용어 교체 (원칙 1) | no |
| proPreviewEndedTitle | Vaše ukázka Pro skončila | Období Pro zdarma skončilo | ‘ukázka Pro’ 용어 교체, ‘Vaše’ 제거 (원칙 1) | no |
| purchaseNotActivated | Nákup není aktivní | Nákup nebyl aktivován | ‘구매가 활성 상태가 아님’은 부정확. ‘구매가 활성화되지 않았어요’로 (원칙 6) | no |
| purchaseNotActivatedMessage | Platba proběhla, ale Pro ještě není aktivní. Zkuste Obnovit nákupy. | Platba proběhla, ale Pro ještě není aktivní. Zkuste „Obnovit nákupy“. | 문장 속 버튼 이름 ‘Obnovit nákupy’를 따옴표로 구분 (공통 규칙: 따옴표, 원칙 6) | no |
| paymentPendingMessage | Pro se zapne, jakmile obchod potvrdí platbu. | Pro se zapne, jakmile bude platba potvrzena. | ‘obchod potvrdí’(스토어가 확인) 주어 제거, ‘결제가 확인되면’ (원칙 2) | no |
| nothingToRestoreMessage | Pro tento účet obchodu nebylo nalezeno žádné aktivní předplatné Zappit Pro. | Pro tento účet nebylo nalezeno žádné aktivní předplatné Zappit Pro. | ‘účet obchodu’ 제거, ‘이 계정’ (원칙 2) | no |
| alreadySubscribed | Toto předplatné už máte. Zkuste Obnovit nákupy. | Toto předplatné už máte. Zkuste „Obnovit nákupy“. | 버튼 이름을 따옴표로 구분 (공통 규칙) | no |
| storeProblem | V obchodě nastal problém. Zkuste to za chvíli znovu. | Při nákupu nastal problém. Zkuste to za chvíli znovu. | ‘V obchodě’(스토어에서) 제거, ‘구매 중 문제가 발생했어요’ (원칙 2) | no |
| trialReminderMessage | Máme vám den před koncem zkušební verze připomenout, abyste nebyli nečekaně zpoplatněni? | Máme vám den před koncem zkušební verze zdarma připomenout, aby vás platba nepřekvapila? | ‘zpoplatněni’는 사람에게 쓰지 않는 행정 용어(요금 부과 대상이 됨). ‘결제에 놀라지 않도록’으로, 스토어 체험임을 ‘zdarma’로 명확히 (원칙 1, 4) | no |
| trialReminderBody | Vaše zkušební verze zdarma zítra končí. {date} vám bude účtováno {price}. Pokud nechcete pokračovat, zrušte předplatné předtím. | Vaše zkušební verze zdarma zítra končí. Dne {date} vám bude účtováno {price}. Pokud nechcete pokračovat, zrušte předplatné do té doby. | 날짜로 시작하는 문장에 ‘Dne’ 추가, ‘předtím’ → ‘do té doby’(그때까지)로 자연스럽게 (원칙 1) | no |
| extensionUpdatedReload | Rozšíření Zappit bylo aktualizováno. Načtěte tuto stránku znovu, abyste mohli dál používat všechna ovládání. | Rozšíření Zappit bylo aktualizováno. Načtěte znovu stránku v prohlížeči, abyste mohli dál používat všechny funkce ovladače. | 폰에 보이는데 ‘이 페이지’가 모호. ‘브라우저의 페이지를 다시 불러오세요’, 어색한 ‘všechna ovládání’ → ‘리모컨의 모든 기능’ (원칙 6) | no |
| backSeconds | O {count} s zpět | Zpět o {count} s | ‘O 10 s zpět’ 어순이 어색. 체코어 자연 어순 ‘Zpět o 10 s’ (원칙 5) | no |
| forwardSeconds | O {count} s vpřed | Vpřed o {count} s | 위와 같음 (원칙 5) | no |
| turnOffAbFirst | Nejdřív vypněte A-B Loop | Nejdřív vypněte smyčku A-B | 용어 ‘smyčka A-B’로 통일 (원칙 1, 공통 규칙: 용어 일관성) | no |
| abOffForLive | A-B Loop je u živého vysílání vypnutý | Smyčka A-B je u živého vysílání vypnutá | 용어 ‘smyčka A-B’로 통일 (원칙 1) | no |
| noVideosOnPage | Na této stránce nejsou žádná videa. | Na stránce v prohlížeči nejsou žádná videa. | 폰에 보이는데 ‘이 페이지’가 모호. ‘브라우저의 페이지’로 (원칙 6) | no |
| nothingPlayingMessage | Na této obrazovce není žádné video. Vyberte jinou kartu nebo vložte odkaz na video. | Na této kartě prohlížeče není žádné video. Vyberte jinou kartu nebo vložte odkaz na video. | ‘이 화면’이 폰 화면으로 읽힘. ‘이 브라우저 탭’으로 (원칙 6) | no |
| ytWatchLater | Přehrát později | Na později | YouTube 체코어 공식 이름은 ‘Na později’ (원칙 1, description: YouTube 명칭 사용) | yes |
| proPreviewUntil | Ukázka Pro do {date} | Pro zdarma do {date} | ‘ukázka Pro’ 용어 교체. 배너라 짧게 ‘Pro zdarma do {date}’ (원칙 1, 4) | no |
| abLoopCount | Počet opakování A-B Loop | Počet opakování smyčky A-B | 설정 항목 이름, 용어 ‘smyčka A-B’로 통일 (원칙 1) | yes |
| pairPhoneLimit | K tomuto počítači jsou už připojené 3 telefony. Otevřete Zappit na jednom z dalších připojených telefonů a v sekci „Více“ klepněte na „Odpojit tento telefon“. Pokud ten telefon už nemáte, použijte „Reset“ v rozšíření Zappit v počítači. | K tomuto počítači jsou už připojené 3 telefony. Otevřete Zappit na jednom z dalších připojených telefonů a v sekci „Více“ klepněte na „Odpojit tento telefon“. Pokud k ostatním telefonům nemáte přístup, klikněte v rozšíření Zappit v počítači na „Reset“. | ‘ten telefon’(그 폰) 모호 → ‘다른 폰에 접근할 수 없다면’, 확장의 버튼은 컴퓨터에서 클릭하므로 ‘použijte’ → ‘klikněte na „Reset“’ (원칙 6) | no |
| disconnectPhoneMessage | Tento telefon přestane ovládat váš počítač. Chcete-li ho znovu používat, naskenujte QR kód v počítači. | Tento telefon přestane ovládat váš počítač. Chcete-li ho znovu připojit, naskenujte QR kód v počítači. | ‘znovu používat’(다시 쓰려면) → ‘znovu připojit’(다시 연결하려면) (원칙 6) | no |
| browsersDisconnectedBody | Připojil se k němu jiný telefon. Chcete-li ho znovu používat, naskenujte QR kód na tom počítači. | Připojil se k němu jiný telefon. Chcete-li ho znovu připojit, naskenujte QR kód v tomto prohlížeči. | ‘쓰려면’ → ‘연결하려면’, ‘na tom počítači’(그 컴퓨터) 모호 → QR이 있는 ‘이 브라우저에서’ (원칙 6) | no |

## 확인이 필요한 사항

- **Pro preview 용어:** ‘Období Pro zdarma’(Pro 무료 기간)를 골랐습니다. ‘vyzkoušení’(체험)을 쓰면 스토어 체험 버튼 ‘Vyzkoušet zdarma’와 같은 어근이 되어 맛보기 중인 사용자가 헷갈릴 수 있어서입니다. 배너(`proPreviewUntil`)만 공간 때문에 ‘Pro zdarma do {date}’로 줄였습니다.
- **A-B Loop 용어:** 영어 ‘A-B Loop’ 대신 ‘smyčka A-B’(VLC 체코어 등에서 쓰는 말)로 바꿨습니다. 앱 버튼이나 웹 가이드가 ‘A-B Loop’를 기능 고유명처럼 인용한다면 되돌려야 합니다(`abLoopCount`는 설정 항목 이름이라 웹 동기화 필요).
- **일 수 복수형:** `proPreviewStarted`, `freeTrialDays`, `trialTermsDays`는 영어가 단순 placeholder라 ICU plural을 쓰지 않고 ‘dní’(5 이상 형태)를 유지했습니다. 7일에는 맞지만, 스토어 체험이 2~4일(예: 3일)로 설정되면 ‘3 dny’가 맞으므로 그런 기간을 쓸 경우 영어 원문을 plural로 바꾸는 것을 권합니다.
- **Netflix 시즌 이름:** `seasonNumber`의 ‘Série’는 그대로 두었습니다. 체코 방송은 ‘řada’도 많이 쓰므로 Netflix 체코어 화면의 실제 표기를 확인하면 좋습니다.
- **요금제 이름:** `yearly`/`monthly`를 ‘Roční’/‘Měsíční’로 바꿨으므로 웹 가이드·FAQ에서 인용하고 있다면 함께 맞춰야 합니다. `ytWatchLater`도 마찬가지입니다.
