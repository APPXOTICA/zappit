# 프랑스어(fr) 번역 검토 결과

가장 큰 문제는 Pro preview를 직역한 ‘aperçu Pro’였어요. 프랑스어 앱에서 쓰지 않는 말이라 ‘essai Pro gratuit’로 통일했고, 스토어 체험(‘essai gratuit’, 구독·자동 결제 쪽)과는 ‘Pro’ 유무로 구분되게 했어요. 그 밖에 ‘boutique(스토어)’ 같은 내부 용어, 폰에서 보이는데 ‘cette page / cet écran’처럼 대상이 모호한 문구, 영어로 남아 있던 ‘A-B Loop’, 비문(‘Plus d’autres onglets’)과 몇몇 직역투 표현을 고쳤어요. 변경한 키는 34개예요.

| 키 | 수정 전 | 수정 후 | 문제 (한국어로, 적용한 가이드 원칙 번호 포함) | menu-name |
|---|---|---|---|---|
| proFeatureDedicatedControllers | Débloquez des télécommandes dédiées | Débloquez les télécommandes dédiées aux sites compatibles | ‘dédiées’만으로는 무엇 전용인지 불분명. 대상(지원 사이트)을 명시 (원칙 6) | no |
| proFeatureAllSpeeds | Toutes les vitesses de lecture | Toutes les vitesses de lecture au choix | 명사 나열이라 혜택이 안 보임. ‘원하는 대로 선택’을 더함 (원칙 6) | no |
| proFeatureAbLoop | A-B Loop illimité | Boucle A-B illimitée | ‘A-B Loop’는 브랜드가 아닌데 영어로 남아 있었음. 프랑스어 앱에서 쓰는 ‘boucle A-B’로 통일 (원칙 1, 9) | no |
| storeUnavailable | La boutique n’est pas disponible pour le moment. Veuillez réessayer plus tard. | L’achat est impossible pour le moment. Veuillez réessayer plus tard. | ‘boutique(스토어)’는 사용자에게 뜻이 없는 내부 용어. 결과(구매할 수 없음)로 씀 (원칙 2) | no |
| proPreviewEndedSubtitle | Votre aperçu Pro est terminé. Gardez toutes les fonctions Pro avec {proName}. | Votre essai Pro gratuit est terminé. Continuez à profiter de toutes les fonctions Pro avec {proName}. | ‘aperçu Pro’는 프랑스어 앱에서 쓰지 않는 직역어. ‘essai Pro gratuit’로 통일, 뒷문장도 자연스럽게 (원칙 1, 4) | no |
| proPreviewActiveBanner | Votre aperçu Pro gratuit est actif jusqu’au {date}. Abonnez-vous avant la fin pour garder toutes les fonctions Pro sans interruption. | Votre essai Pro gratuit est actif jusqu’au {date}. Abonnez-vous avant la fin pour garder toutes les fonctions Pro sans interruption. | ‘aperçu Pro gratuit’ → ‘essai Pro gratuit’ 용어 통일 (원칙 1, 4) | no |
| cancelAnytime | Résiliez à tout moment depuis votre compte de la boutique. | Sans engagement : résiliez à tout moment dans vos abonnements. | ‘compte de la boutique(스토어 계정)’는 이해하기 어려운 말. 프랑스 구독 관용구 ‘Sans engagement’과 ‘내 구독 목록에서 해지’로 (원칙 2, 3) | no |
| proPreviewEndsTomorrow | L’aperçu Pro se termine demain | Votre essai Pro gratuit se termine demain | ‘aperçu Pro’ → ‘essai Pro gratuit’ (원칙 1, 4) | no |
| proPreviewEndedTitle | Votre aperçu Pro est terminé | Votre essai Pro gratuit est terminé | ‘aperçu Pro’ → ‘essai Pro gratuit’ (원칙 1, 4) | no |
| purchaseNotActivatedMessage | Votre paiement a abouti, mais Pro n’est pas encore actif. Essayez Restaurer les achats. | Votre paiement a abouti, mais Pro n’est pas encore actif. Essayez « Restaurer les achats ». | 버튼 이름을 « »로 감싸 다른 문구와 표기 통일 (공통 규칙: 문장 부호, 원칙 6) | no |
| paymentPendingMessage | Pro s’activera dès que la boutique aura confirmé votre paiement. | Pro s’activera dès que votre paiement sera confirmé. | 주어 ‘la boutique’ 삭제. 결제가 확인되면 켜진다는 결과만 (원칙 2) | no |
| nothingToRestoreMessage | Aucun abonnement Zappit Pro actif n’a été trouvé pour ce compte de la boutique. | Aucun abonnement Zappit Pro actif n’a été trouvé pour ce compte. | ‘compte de la boutique’ → ‘ce compte’ (원칙 2) | no |
| alreadySubscribed | Vous avez déjà cet abonnement. Essayez Restaurer les achats. | Vous avez déjà cet abonnement. Essayez « Restaurer les achats ». | 버튼 이름 « » 표기 통일 (공통 규칙) | no |
| storeProblem | La boutique a rencontré un problème. Réessayez dans un instant. | Un problème est survenu lors de l’achat. Réessayez dans un instant. | ‘La boutique a rencontré un problème’ → ‘구매 중 문제가 발생했어요’ (원칙 2) | no |
| trialReminderBody | Votre essai gratuit se termine demain. {price} sera débité le {date}. Si vous ne souhaitez pas continuer, résiliez votre abonnement avant. | Votre essai gratuit se termine demain. {price} sera débité le {date}. Si vous ne souhaitez pas continuer, résiliez votre abonnement avant cette date. | 문장 끝 ‘avant’만으로는 언제 전인지 모호. ‘그 날짜 전에’로 명확히 (원칙 6) | no |
| trialReminderNotificationTitle | L’essai gratuit de Zappit Pro se termine bientôt | L’essai gratuit de votre abonnement Zappit Pro se termine bientôt | ‘L’essai gratuit de Zappit Pro’가 Pro 무료 체험(essai Pro gratuit)과 거의 같은 말이 됨. 자동 결제되는 ‘구독’의 체험임을 드러냄 (원칙 4) | no |
| extensionUpdatedReload | L’extension Zappit a été mise à jour. Rechargez cette page pour continuer à utiliser toutes les commandes. | L’extension Zappit a été mise à jour. Rechargez la page dans votre navigateur pour continuer à utiliser toutes les commandes. | 폰에 보이는 문구라 ‘cette page’가 어느 페이지인지 모름. ‘브라우저의 페이지를 새로고침’으로 (원칙 6) | no |
| sleepTimer | Minuterie | Minuteur de veille | ‘Minuterie’만으로는 무슨 타이머인지 모호. 프랑스어 앱(Spotify 등) 관용어 ‘Minuteur de veille’ (원칙 1) | yes |
| off | Désactivée | Désactivé | ‘Minuteur’(남성)에 맞춰 성 일치 Désactivée → Désactivé (문법) | no |
| turnOffAbFirst | Désactivez d’abord l’A-B Loop | Désactivez d’abord la boucle A-B | ‘l’A-B Loop’ → ‘la boucle A-B’ 용어 통일 (원칙 1, 9) | no |
| abOffForLive | L’A-B Loop est désactivé pour les directs | La boucle A-B n’est pas disponible pour les directs | 용어 통일, ‘est désactivé’(꺼져 있음)보다 ‘이용할 수 없음’이 정확 (원칙 1, 6) | no |
| sleepTimerLabel | Minuterie | Minuteur de veille | sleepTimer와 같은 용어로 통일 (원칙 1, 9) | no |
| linkPanelHint | Collez un lien vidéo et touchez Envoyer. Il s’ouvre dans un nouvel onglet de votre navigateur. | Collez un lien vidéo et touchez « Envoyer ». Il s’ouvre dans un nouvel onglet de votre navigateur. | 버튼 이름 « Envoyer » 표기 통일 (공통 규칙) | no |
| noVideosOnPage | Cette page ne contient aucune vidéo. | La page ouverte dans le navigateur ne contient aucune vidéo. | 폰 화면에서 ‘cette page’는 모호. ‘브라우저에 열린 페이지’로 (원칙 6) | no |
| nothingPlayingMessage | Il n’y a pas de vidéo sur cet écran. Choisissez un autre onglet ou collez un lien vidéo. | Cet onglet ne contient aucune vidéo. Choisissez un autre onglet ou collez un lien vidéo. | ‘cet écran’(이 화면)은 폰 화면으로 읽힘. 실제 대상인 ‘이 탭’으로 (원칙 6) | no |
| noMoreTabs | Plus d’autres onglets | Aucun autre onglet | ‘Plus d’autres onglets’는 비문. ‘Aucun autre onglet’ (문법) | no |
| ytLikedVideos | Vidéos “J’aime” | Vidéos J’aime | YouTube 프랑스어 공식 명칭은 따옴표 없는 ‘Vidéos J’aime’. 영어식 “ ” 제거 | yes |
| proPreviewUntil | Aperçu Pro jusqu’au {date} | Essai Pro gratuit jusqu’au {date} | ‘Aperçu Pro’ → ‘Essai Pro gratuit’ (원칙 1, 4) | yes |
| abLoopCount | Répétitions A-B Loop | Répétitions de la boucle A-B | ‘A-B Loop’ 영어 잔존 → ‘boucle A-B’ 통일 (원칙 1, 9) | yes |
| pairPhoneLimit | Cet ordinateur a déjà 3 téléphones connectés. Ouvrez Zappit sur l’un de vos autres téléphones connectés et touchez « Déconnecter ce téléphone » dans « Plus ». Si vous n’avez plus ce téléphone, utilisez « Reset » dans l’extension Zappit sur votre ordinateur. | Cet ordinateur a déjà 3 téléphones connectés. Ouvrez Zappit sur l’un de vos autres téléphones connectés et touchez « Déconnecter ce téléphone » dans « Plus ». Si vous n’avez plus accès à vos autres téléphones, cliquez sur « Reset » dans l’extension Zappit sur votre ordinateur. | ‘ce téléphone’(그 폰)이 모호 → ‘다른 폰에 접근할 수 없다면’. 컴퓨터 확장이므로 ‘utilisez’ 대신 ‘cliquez sur’ (원칙 6) | no |
| disconnectPhoneMessage | Ce téléphone ne contrôlera plus votre ordinateur. Pour l’utiliser à nouveau, scannez le code QR sur votre ordinateur. | Ce téléphone ne contrôlera plus votre ordinateur. Pour le reconnecter, scannez le code QR sur votre ordinateur. | ‘l’utiliser à nouveau(다시 쓰려면)’ → ‘le reconnecter(다시 연결하려면)’ (원칙 6) | no |
| browsersDisconnectedBody | Un autre téléphone s’y est connecté. Pour l’utiliser à nouveau, scannez le code QR sur cet ordinateur. | Un autre téléphone s’y est connecté. Pour vous y reconnecter, scannez le code QR sur cet ordinateur. | 뭉뚱그린 ‘l’utiliser à nouveau’ → ‘vous y reconnecter’ (원칙 6) | no |
| onboarding1Title | D’abord, ajoutez l’extension Zappit à votre navigateur | Commencez par ajouter l’extension Zappit à votre navigateur | 문두 ‘D’abord,’는 영어 ‘First,’ 직역 느낌. ‘Commencez par ~’가 자연스러움 (원칙 1, 5) | no |
| onboardingWelcomeBody | Contrôlez n’importe quelle vidéo sur votre ordinateur. La configuration prend deux étapes rapides. | Contrôlez n’importe quelle vidéo sur votre ordinateur. La configuration se fait en deux étapes rapides. | ‘prend deux étapes’는 영어 ‘takes two steps’ 직역(비관용). ‘se fait en deux étapes’ (원칙 1) | no |

## 확인이 필요한 점

- **Pro preview 용어:** ‘essai Pro gratuit’로 정했어요. 프랑스어로 더 ‘선물’ 느낌을 주는 대안은 ‘accès Pro offert’(제공된 Pro 이용권)인데, 자동 결제가 없다는 점은 더 잘 드러나지만 앱에서 체험 기간을 부르는 일반적인 말은 ‘essai gratuit’라서 이쪽을 택했어요. 바꾸고 싶으시면 proPreview* 5개 키를 함께 바꾸면 돼요.
- **그대로 둔 키(일부러 바꾸지 않음):** `welcomeToPro`(‘Bienvenue dans {proName}’)는 프랑스어 구독 앱(예: ‘Bienvenue dans Premium’)에서 실제로 쓰는 표현이라 유지했어요. `proPreviewEndedMessage`의 ‘Merci d’avoir essayé’는 ‘써 봐 주셔서’라는 무료 체험 뉘앙스라 유료 오해가 없어 유지했어요. `proPreviewStarted`의 ‘Sans carte bancaire’는 프랑스에서 무료 혜택에 흔히 붙는 관용구라 유지했어요. `learnMore`(‘En savoir plus’)는 표준 버튼 이름이에요. `proFeatureVoiceBoost`·`proFeatureFullLoop`는 프랑스어에서 ‘illimité’가 명사 뒤에 오는 것이 자연스러운 어순(예: ‘Stockage illimité’)이라 그대로 뒀어요.
- **menu-name: yes인 키:** `sleepTimer`(Minuteur de veille), `abLoopCount`, `ytLikedVideos`, `proPreviewUntil`. 웹 가이드·FAQ 프랑스어 번역(`zappit_web/src/lib/i18n/messages/`)에 예전 이름(‘Minuterie’, ‘A-B Loop’, ‘aperçu Pro’)이 있으면 함께 고쳐야 해요. 웹 번역 파일은 이번 작업 폴더에 없어 확인하지 못했어요.
- **ytMemberships:** ‘Abonnements payants’로 두었는데, YouTube 프랑스어 화면의 실제 명칭은 확인하지 못했어요(‘Souscriptions’일 수 있음).
- **검증 스크립트:** `minutesCount`가 placeholder 불일치로 나오지만 오탐이에요. 영어의 `one{1 minute}`에서 ‘1’을 placeholder로 읽어서예요. 프랑스어는 0과 1이 모두 ‘one’에 해당해서 `one{{count} minute}`가 맞고(‘0 minute’), 이 키는 원본에서 바꾸지 않았어요.
- 기간 표시(`freeTrialDays` 등 ‘Essai gratuit : {count} j’, ‘an(s)’)는 복수형 ICU 구조 없이 숫자가 1일 때도 맞도록 약어를 쓴 것이라 그대로 뒀어요. 띄어쓰기는 파일에 쓰인 대로 : ? ! 앞에 일반 공백을 썼어요.
