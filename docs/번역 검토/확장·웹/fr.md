# 프랑스어(fr) 확장·웹 번역 검토 결과

확장은 대체로 자연스러웠고, 존댓말(vous) 통일을 위해 1개만 고쳤어요. 웹은 앱 검토에서 정한 용어(‘essai Pro gratuit’, ‘boucle A-B’, ‘Minuteur de veille’)가 반영되지 않아 FAQ·가이드·랜딩 데모에서 앱 메뉴 이름과 어긋난 곳이 많았고, 이를 앱 문구와 똑같이 맞췄어요(29개). 앱은 확장의 ‘Reset’을 영어로 인용하던 `pairPhoneLimit` 1개를 확장 번역 라벨(« Réglages », « Réinitialiser »)로 바꿨어요.

## 확장

| 키 | 수정 전 | 수정 후 | 문제 (한국어, 가이드 원칙 번호 포함) |
|---|---|---|---|
| noAppYet | Pas encore l’app Zappit ? Scannez le code avec l’appareil photo de votre téléphone pour l’obtenir. | Vous n’avez pas encore l’app Zappit ? Scannez le code avec l’appareil photo de votre téléphone pour la télécharger. | 주어를 뺀 구어체가 다른 문구의 vous 존댓말과 어긋남. ‘l’obtenir(얻다)’보다 실제 동작인 ‘내려받다’로 (공통 규칙: 말투, 원칙 6) |

## 웹

| 키 | 수정 전 | 수정 후 | 문제 (한국어, 가이드 원칙 번호 포함) |
|---|---|---|---|
| faq.q1 | Qu’est-ce que Pro Preview ? | Qu’est-ce que l’essai Pro gratuit ? | 영어 ‘Pro Preview’가 그대로 남음. 앱 용어 ‘essai Pro gratuit’와 일치시킴 (원칙 1, 4, 9) |
| faq.a1 | Pro Preview vous permet d’utiliser gratuitement … C’est indépendant de l’essai gratuit de l’abonnement payant : une fois Pro Preview terminé, vous pouvez toujours lancer cet essai depuis l’écran d’achat. | L’essai Pro gratuit vous permet de profiter de toutes les fonctions Pro pendant 7 jours, … Il est distinct de l’essai gratuit de l’abonnement payant : une fois l’essai Pro gratuit terminé, vous pouvez toujours commencer l’essai gratuit de l’abonnement depuis l’écran d’achat. | 용어 통일. ‘essai … gratuitement’ 중복 제거. 두 체험이 나오는 문장에서 ‘cet essai’는 어느 쪽인지 모호해 ‘구독의 무료 체험’으로 명시, 동사는 앱 버튼 ‘Commencer l’essai gratuit’에 맞춤 (원칙 4, 6, 9) |
| guide.f1Tip | Modifiez la vitesse dans les réglages de la télécommande → Vitesse en appui long. | Modifiez la vitesse dans Réglages de la télécommande → Vitesse en appui long. | 앱 화면 이름 ‘Réglages de la télécommande’를 일반 명사처럼 써서 메뉴 이름으로 안 보임. 앱 표기 그대로 (원칙 9) |
| guide.f2Body | … Touchez Partager (Share), choisissez Zappit, … | … Touchez Partager, choisissez Zappit, … | 프랑스어 YouTube·TikTok 앱 버튼은 ‘Partager’라 영어 병기 불필요 (원칙 1) |
| guide.f3Body | … Touchez Continuer sur le téléphone sur la télécommande. … | … Touchez « Continuer sur le téléphone » dans la télécommande. … | 버튼 이름이 문장에 묻히고 ‘sur … sur’ 반복. « »로 버튼 이름 표시 (원칙 6, 문장 부호) |
| guide.f3Tip | Continuer sur le téléphone est le premier bouton … | « Continuer sur le téléphone » est le premier bouton … | 문두의 버튼 이름을 « »로 구분 (문장 부호) |
| guide.f4Title | Boucle A-B (A-B Loop) | Boucle A-B | 영어 병기 제거, 앱 용어 ‘boucle A-B’ (원칙 1, 9) |
| guide.f4Tip | … dans les réglages de la télécommande → Répétitions A-B Loop. | … dans Réglages de la télécommande → Répétitions de la boucle A-B. | 앱 메뉴 이름 ‘Répétitions de la boucle A-B’와 불일치 (원칙 9) |
| guide.f5Tip | … et fait partie de Pro. … | … et fait partie des fonctions Pro. … | ‘Pro의 일부’는 어색. ‘Pro 기능’으로 (원칙 6) |
| guide.f6Body | L’onglet Onglets affiche … | L’onglet « Onglets » affiche … | 앱 하단 탭 이름을 « »로 구분해 ‘탭 탭’처럼 읽히지 않게 (원칙 6) |
| landing.demo.hint3 | Placez [ et ] pour boucler | Placez [ et ] pour répéter un passage | ‘boucler’는 구어/다의어(끝내다). 할 일을 분명히 (원칙 1, 6) |
| landing.demo.hint4 | Pause, puis glissez la règle | Pause, puis faites glisser la règle | 다른 힌트(‘Faites glisser la barre’)와 동사 통일 (원칙 9) |
| landing.snack.abOn | A-B Loop {a} – {b} | Boucle A-B {a} – {b} | 영어 잔존, 앱 용어로 (원칙 1, 9) |
| landing.snack.abOff | A-B Loop désactivé | Boucle A-B désactivée | 용어 통일, 성 일치 (원칙 9, 문법) |
| landing.snack.startAfterEnd | Le début doit être avant la fin | Le point de départ doit être avant le point de fin | 데모 알림을 앱 알림(errorStartAfterEnd)과 같게 (원칙 9) |
| landing.snack.endBeforeStart | La fin doit être après le début | Le point de fin doit être après le point de départ | 앱 errorEndBeforeStart와 같게 (원칙 9) |
| landing.snack.turnOffAbFirst | Désactivez d’abord l’A-B Loop | Désactivez d’abord la boucle A-B | 영어 잔존, 앱 turnOffAbFirst와 같게 (원칙 1, 9) |
| landing.snack.loopOn | Lecture en boucle activée | Boucle activée | 앱 loopOn과 같게 (원칙 9) |
| landing.snack.loopOff | Lecture en boucle désactivée | Boucle désactivée | 앱 loopOff와 같게 (원칙 9) |
| landing.snack.loopStart | Début de boucle {time} | Début de la boucle {time} | 앱 loopStart(‘Début de la boucle’)와 같게 (원칙 9) |
| landing.snack.loopEnd | Fin de boucle {time} | Fin de la boucle {time} | 앱 loopEnd와 같게 (원칙 9) |
| landing.snack.replay | Revoir | Revoir depuis le début | 앱 replay 버튼 이름과 같게 (원칙 9) |
| landing.snack.sleep | Minuterie · {min} min | Minuteur de veille · {min} min | 앱 검토에서 바꾼 ‘Minuteur de veille’ 미반영 (원칙 1, 9) |
| landing.snack.sleepOff | Minuterie désactivée | Minuteur de veille désactivé | 용어 통일, 성 일치 (원칙 9, 문법) |
| landing.a11y.sleep | Minuterie de mise en veille | Minuteur de veille | 앱 sleepTimerLabel과 같게 (원칙 9) |
| landing.a11y.loopStart | Début de boucle | Début de la boucle | 앱 loopStart와 같게 (원칙 9) |
| landing.a11y.loopEnd | Fin de boucle | Fin de la boucle | 앱 loopEnd와 같게 (원칙 9) |
| landing.a11y.replay | Revoir | Revoir depuis le début | 앱 replay와 같게 (원칙 9) |
| faq.a12 | … le navigateur la lance en muet. | … le navigateur la lance sans le son. | ‘en muet’는 구어적이고 어색. 제목(q12 ‘sans le son’)과 통일 (원칙 1, 9) |

## 앱(교차 참조 수정)

| 키 | 수정 전 | 수정 후 | 문제 (한국어, 가이드 원칙 번호 포함) |
|---|---|---|---|
| pairPhoneLimit | … Si vous n’avez plus accès à vos autres téléphones, cliquez sur « Reset » dans l’extension Zappit sur votre ordinateur. | … Si vous n’avez plus accès à vos autres téléphones, ouvrez « Réglages » dans l’extension Zappit sur votre ordinateur et cliquez sur « Réinitialiser ». | 확장이 번역되어 버튼이 ‘Réinitialiser’로 보임. 영어 ‘Reset’은 화면에 없는 이름. 버튼이 Réglages 안에 있어 경로도 함께 안내 (원칙 6, 9) |

`browsersDisconnectedBody`, `disconnectPhoneMessage`, `phoneNameMessage`, `obAnim*`(확장 팝업 그림 문구)도 확인했어요. 앞의 세 개는 확장 라벨을 인용하지 않고, `obAnim*`는 이미 확장 번역(« Connectez votre téléphone », « Télécommande connectée », « Vos téléphones », « Nouveau code dans … »)과 같아서 그대로 뒀어요.

## 교정 패스(별도 검토)에서 확인한 점

- 고친 문구를 모두 역번역해 원문 의미와 같은지 확인했어요. `faq.a1`은 처음 고칠 때 ‘lancer cet essai’를 그대로 두면 두 체험 중 어느 쪽인지 모호해서 ‘l’essai gratuit de l’abonnement’로 다시 고쳤어요.
- 웹 인용 라벨 재대조: 앱 ‘Aucun navigateur joignable’(faq.q5), ‘Plus → Nous contacter’(faq.contactBody), ‘Réglages de la télécommande’, ‘Vitesse en appui long’, ‘Répétitions de la boucle A-B’, ‘Continuer sur le téléphone’, ‘Onglets’ 모두 일치해요. 확장 ‘Réglages’, ‘Réinitialiser’(faq.a7)도 일치해요.
- 웹에 ‘Preview’, ‘A-B Loop’, ‘Minuterie’, ‘boutique/store’가 남아 있지 않은지 검색으로 확인했어요. placeholder·키·배열 길이는 검증 스크립트로 이상 없음을 확인했어요(`extDescription`은 91자).

## 결정이 필요한 점

- **브라우저·OS 화면 문구(faq.a9~a11):** 사용자가 실제로 보는 Safari·Chrome·Android 메뉴 이름이라 원본을 보고 확인해야 하는데, 이번에는 확인하지 못해 그대로 뒀어요. 특히 Safari ‘Lors de la consultation d’autres sites web’, Chrome ‘Peut lire et modifier les données du site’(실제로는 ‘Cette extension peut lire et modifier…’일 수 있음), Android ‘Autoriser seulement pendant l’utilisation de l’appli’는 프랑스어 설정 화면에서 한 번 확인해 주세요.
- **faq.a1의 ‘Aucune carte bancaire n’est demandée’:** 앱의 ‘Sans carte bancaire’와 마찬가지로 프랑스에서 흔히 쓰는 표현이라 유지했어요.
- **`browsersDisconnectedBody`:** 영어 원문대로 ‘이 컴퓨터의 QR 코드를 스캔하세요’로 두었어요. 실제로는 확장 팝업에서 « Connecter un nouveau téléphone »을 눌러야 QR이 나오는 경우가 있다면, 영어 원문부터 그 단계를 넣는 것을 검토해 주세요.
