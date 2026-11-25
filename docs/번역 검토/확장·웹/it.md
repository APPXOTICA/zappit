# 이탈리아어(it) 확장·웹 번역 검토 보고서

웹에서 가장 큰 문제는 FAQ가 Pro preview를 영어 그대로 ‘Pro Preview’라고 부른 점이었습니다. 앱에서 정한 ‘prova gratuita di Pro’로 바꾸고, 결제 오해가 없도록 문장을 다시 썼습니다. 또 가이드가 인용하는 앱 메뉴 이름(Impostazioni del telecomando, A-B Loop)과 데모 문구를 앱 파일과 똑같이 맞췄고, 남성형으로 고정된 표현과 어색한 직역도 고쳤습니다. 확장 문구는 모두 자연스럽고 정확해서 고치지 않았습니다. 앱에서는 확장 버튼 ‘Reset’을 인용한 `pairPhoneLimit` 하나만 확장 번역 ‘Reimposta’로 바꿨습니다. 말투는 앱과 같이 tu입니다.

## 확장

바꾼 문구가 없습니다(0개). 모든 키가 영어 원문과 뜻이 같고 자연스럽습니다. 팝업 그림에 쓰이는 앱 문구(`obAnimConnectPhone`, `obAnimScanCode`, `obAnimRemoteConnected`, `obAnimYourPhones`, `obAnimNewCode`)도 확장의 ‘Collega il telefono’, ‘Scansiona questo codice…’, ‘Telecomando collegato’, ‘I tuoi telefoni’, ‘Nuovo codice tra …’와 똑같습니다. `extDescription`은 64자입니다.

| 키 | 수정 전 | 수정 후 | 문제 (한국어, 가이드 원칙 번호 포함) |
|---|---|---|---|
| (없음) | | | |

## 웹

| 키 | 수정 전 | 수정 후 | 문제 (한국어, 가이드 원칙 번호 포함) |
|---|---|---|---|
| common.footer.trademark | … Zappit non è affiliato né approvato da loro. | … Zappit non è affiliato a loro né da loro approvato. | ‘affiliato’ 뒤에 필요한 전치사 ‘a’가 빠져 문법이 틀림 (공통 규칙: 맞춤법) |
| landing.title | Addio al mouse. | Addio mouse. | 같은 원문 ‘Kill the mouse.’의 앱 번역(`obAnimTagline`)과 맞춤 (체크리스트 9) |
| landing.snack.loopStart | Inizio ripetizione {time} | Inizio del loop {time} | 데모는 앱 리모컨을 그대로 보여 주므로 앱 `loopStart`(‘Inizio del loop’)와 맞춤 (체크리스트 9) |
| landing.snack.loopEnd | Fine ripetizione {time} | Fine del loop {time} | 앱 `loopEnd`와 맞춤 (체크리스트 9) |
| landing.snack.startAfterEnd | L’inizio deve precedere la fine | Il punto di inizio deve precedere il punto di fine | 앱 `errorStartAfterEnd`와 같은 문구로 (체크리스트 9) |
| landing.snack.endBeforeStart | La fine deve seguire l’inizio | Il punto di fine deve seguire il punto di inizio | 앱 `errorEndBeforeStart`와 같은 문구로 (체크리스트 9) |
| landing.snack.replay | Guarda di nuovo | Riproduci dall’inizio | 앱 `replay`와 맞춤 (체크리스트 9) |
| landing.a11y.loopStart | Inizio ripetizione | Inizio del loop | 앱 `loopStart`와 맞춤 (체크리스트 9) |
| landing.a11y.loopEnd | Fine ripetizione | Fine del loop | 앱 `loopEnd`와 맞춤 (체크리스트 9) |
| landing.a11y.replay | Guarda di nuovo | Riproduci dall’inizio | 앱 `replay`와 맞춤 (체크리스트 9) |
| landing.why.twoTitle | Connesso con una scansione | Basta una scansione per collegarti | 주어 없는 남성형 ‘Connesso’는 무엇이 연결되는지 모호하고 성별이 고정됨. 앱 보고서에서 ‘Connesso!’를 고친 것과 같은 이유. 용어도 앱의 ‘collegare’로 (원칙 6, 체크리스트 9) |
| landing.why.threeTitle | Dal telefono al PC, e ritorno | Dal telefono al PC e viceversa | ‘e ritorno’는 영어 ‘and back’ 직역이라 어색함. ‘그 반대로도’를 뜻하는 관용구로 (원칙 1) |
| guide.step1Title | Installa Zappit su entrambi i lati | Installa Zappit su entrambi i dispositivi | ‘양쪽(lati)’은 직역이라 무엇의 양쪽인지 알 수 없음. ‘두 기기 모두’로 (원칙 1, 6) |
| guide.step2Body | … Il telecomando si connette da solo e diventa verde. | … Il telecomando si collega da solo e diventa verde. | 앱 전체 용어 ‘collegare’로 통일 (체크리스트 9) |
| guide.f1Body | … finché tieni premuto e torna normale quando lasci. | … finché lo tieni premuto e torna alla velocità normale quando lo rilasci. | ‘lasci’에 목적어가 없어 비문이고 ‘torna normale’도 어색함. ‘버튼에서 손을 떼면 보통 속도로 돌아감’으로 (공통 규칙: 문법, 원칙 6) |
| guide.f1Tip | Cambia la velocità nelle impostazioni del telecomando → Velocità con pressione prolungata. | Cambia la velocità in Impostazioni del telecomando → Velocità con pressione prolungata. | 앱 메뉴 이름 ‘Impostazioni del telecomando’(`remoteSettings`)를 소문자 일반 명사로 써서 메뉴 이름으로 보이지 않음. 앱과 똑같은 표기로 (체크리스트 9) |
| guide.f2Body | … Tocca Condividi (Share), scegli Zappit … | … Tocca Condividi, scegli Zappit … | 이탈리아어 YouTube·TikTok 앱의 버튼은 ‘Condividi’이므로 영어 ‘(Share)’는 불필요 (원칙 1) |
| guide.f3Body | Ti alzi dalla scrivania? Tocca Continua sul telefono sul telecomando. … proprio da dove eri rimasto. | Ti alzi dalla scrivania? Sul telecomando, tocca Continua sul telefono. … dal punto in cui l’avevi lasciato. | ‘sul telefono sul telecomando’로 ‘sul’가 겹쳐 버튼 이름 경계가 흐려짐. 어순을 바꿔 버튼 이름을 분리. ‘eri rimasto’는 남성형이라 성별 중립인 ‘영상을 멈춘 지점부터’로 (원칙 5, 6) |
| guide.f4Title | Ripetizione A-B (A-B Loop) | A-B Loop | 앱이 기능 이름을 ‘A-B Loop’로 쓰므로(`proFeatureAbLoop`, `abLoopCount`) 같은 이름 하나로 (체크리스트 9) |
| guide.f4Tip | Imposta quante volte ripetere nelle impostazioni del telecomando → Ripetizioni A-B Loop. | Scegli quante volte si ripete in Impostazioni del telecomando → Ripetizioni A-B Loop. | 메뉴 이름을 앱 표기대로. ‘Imposta quante volte ripetere’는 어색해서 ‘몇 번 반복할지 고르세요’로 (체크리스트 9, 원칙 5) |
| guide.helpTitle | Ancora bloccato? | Hai ancora problemi? | ‘bloccato’는 남성형이라 성별이 고정됨. 성별 중립 표현으로 (원칙 3) |
| faq.q1 | Che cos’è Pro Preview? | Che cos’è la prova gratuita di Pro? | ‘Pro Preview’를 번역하지 않아 앱의 ‘prova gratuita di Pro’와 다른 이름이 됨 (원칙 1, 4, 체크리스트 9) |
| faq.a1 | Pro Preview ti permette di usare gratis … Non serve la carta di credito e alla fine non viene addebitato nulla. È separato dalla prova gratuita dell’abbonamento a pagamento: terminato Pro Preview, … | La prova gratuita di Pro ti permette di usare tutte le funzioni Pro per 7 giorni, … È completamente gratis: non devi inserire nessun metodo di pagamento e alla fine non ti viene addebitato nulla. Non va confusa con la prova gratuita dell’abbonamento a pagamento: quando la prova gratuita di Pro finisce, … | 용어를 앱과 통일. ‘Non serve la carta di credito’는 앱 `proPreviewStarted`에서 뺀 영어 관용구라 ‘완전 무료, 결제 수단 입력 없음, 자동 결제 없음’으로. 두 체험이 다르다는 점은 ‘헷갈리지 마세요’로 분명히 (원칙 4, 체크리스트 9) |
| faq.a3 | No. Zappit si connette tramite cloud … | No. Zappit si collega tramite il cloud … | ‘tramite cloud’에 관사가 빠짐. 용어도 ‘collegare’로 (공통 규칙: 문법, 체크리스트 9) |
| faq.a5 | … Se ancora non si connette, … | … Se ancora non si collega, … | 앱 `noBrowserMessage`(‘Se non si collega’)와 같은 동사로 (체크리스트 9) |
| get.sub | Zappit è fatto di due parti: … | Zappit è composto da due parti: … | ‘è fatto di’는 재료를 말할 때 쓰는 표현이라 어색함. ‘두 부분으로 이루어짐’으로 (원칙 1) |
| get.nextBody | Fai clic sull’icona di Zappit nella barra del browser … | Fai clic sull’icona di Zappit nella barra degli strumenti del browser … | 다른 문구(앱 `onboarding2Body`, 가이드, FAQ)는 모두 ‘barra degli strumenti’. ‘barra del browser’만 쓰면 주소창으로도 읽힘 (원칙 6, 체크리스트 9) |

## 앱(교차 참조 수정)

| 키 | 수정 전 | 수정 후 | 문제 (한국어, 가이드 원칙 번호 포함) |
|---|---|---|---|
| pairPhoneLimit | … Se non hai accesso agli altri telefoni, fai clic su «Reset» nell’estensione Zappit sul computer. | … Se non hai accesso agli altri telefoni, fai clic su «Reimposta» nelle «Impostazioni» dell’estensione Zappit sul computer. | 확장 버튼 이름은 이제 ‘Reimposta’로 번역되어 있어서, 영어 ‘Reset’으로는 버튼을 찾을 수 없음. 버튼이 Settings 화면 안에 있으므로 FAQ `a7`처럼 ‘Impostazioni’도 넣어 어디서 누르는지 알려 줌 (원칙 6, 체크리스트 9) |

`browsersDisconnectedBody`에는 확장 메뉴 이름이 없어서(‘이 컴퓨터의 QR 코드를 스캔하세요’뿐) 바꾸지 않았습니다. 앱에서 확장 이름 ‘Reset’·‘Settings’·‘Disconnect this browser’를 인용하는 다른 키는 없습니다.

## 교정 단계(2차 검토)에서 확인한 것

- 바꾼 문구를 모두 영어로 다시 옮겨 원문과 뜻이 같은지 확인했습니다. placeholder(`{time}` 등), 키, 배열 길이는 원본과 같습니다. `validate2.py`와 `validate.py` 모두 누락·추가 키와 placeholder 오류가 없습니다.
- 인용된 이름을 다시 대조했습니다. 앱: ‘Nessun browser raggiungibile’(`cantReachBrowser`), ‘Continua sul telefono’(`playInApp`), ‘Schede’(`tabTabs`), ‘Altro → Contattaci’, ‘Impostazioni del telecomando → Velocità con pressione prolungata / Ripetizioni A-B Loop’, ‘Condividi’. 확장: ‘Impostazioni’, ‘Reimposta’. 모두 일치합니다.
- 웹 원본 파일의 키 순서는 그대로 두었습니다. `guide.step1BodyEmbed`가 영어 파일과 달리 `guide`의 맨 끝에 있지만, 지시대로 원본 구조를 유지했습니다.

## 결정이 필요한 점

- **Safari·Chrome 화면 문구(FAQ a9·a10·a11·a13):** ‘Modifica siti web…’, ‘Consenti sempre su tutti i siti web’, ‘Può leggere e modificare i dati dei siti’, ‘Su tutti i siti’ 같은 브라우저 메뉴 이름은 원본 번역을 그대로 두었습니다. 실제 이탈리아어 Safari·Chrome 화면과 똑같은지 이번에는 1차 자료로 확인하지 않았습니다. 이탈리아어로 설정한 Mac에서 한 번 확인해 주세요. 특히 Safari 툴바 메뉴의 ‘Always Allow on Every Website’ 번역이 의심됩니다.
- **‘loop’와 ‘ripetizione’이 섞여 있음:** 앱이 전체 반복은 ‘Ripetizione attiva’, 구간 반복은 ‘A-B Loop’·‘Inizio del loop’로 씁니다. 웹은 앱에 맞췄습니다. 이름을 하나로 통일하려면(예: ‘Ripetizione A-B’) 앱과 웹을 같이 바꿔야 합니다(앱 보고서에도 같은 내용이 있습니다).
- **따옴표:** 앱은 «», 웹은 “”를 씁니다. 둘 다 이탈리아어에서 쓰는 표기라 그대로 두었습니다. 통일하려면 웹 FAQ q5와 get.appOnComputer만 바꾸면 됩니다.
