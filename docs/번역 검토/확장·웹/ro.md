# 루마니아어(ro) 확장·웹 번역 검토 보고서

확장 번역은 대체로 자연스러워 4개만 고쳤고, 웹은 Pro preview를 영어 그대로 'Pro Preview'로 둔 FAQ, 'sincronizează'(동기화) 같은 내부 용어, 앱과 다른 메뉴·알림 문구, 직역 표현을 중심으로 29개를 고쳤습니다. 웹이 인용하는 앱 메뉴 이름(„Setările telecomenzii”, „Viteză la apăsare lungă”, „Repetări A-B Loop”, „Continuă pe telefon”, „File”, „Mai multe” → „Contactează-ne”)과 확장 라벨(**Setări**, **Resetează**)은 모두 실제 파일 문구와 일치하도록 맞췄고, 앱의 pairPhoneLimit도 확장의 번역된 라벨 „Resetează”를 쓰도록 바꿨습니다.

## 확장

| 키 | 수정 전 | 수정 후 | 문제 (한국어, 가이드 원칙 번호 포함) |
|---|---|---|---|
| extDescription | Controlează de pe telefon orice video din browserul computerului. | Controlează de pe telefon orice videoclip din browserul computerului. | 앱 전체가 'videoclip'을 쓰므로 용어 통일 (체크리스트 9). 132자 이내 |
| newCodeIn | Cod nou în $TIME$ | Cod nou peste $TIME$ | 남은 시간 뒤를 뜻할 때 루마니아어는 'peste'를 씀. 'în 4:30'은 '4시 30분에'로 읽힐 수 있음 (원칙 1, 6) |
| resetHint | …conectate, nu doar acesta. | …conectate, nu doar acest browser. | 'acesta'(이것)가 폰인지 브라우저인지 모호 (원칙 6) |
| resetBody | …vor fi resetate, nu doar acesta. … | …vor fi resetate, nu doar acest browser. … | 위와 같음 (원칙 6) |

## 웹

| 키 | 수정 전 | 수정 후 | 문제 (한국어, 가이드 원칙 번호 포함) |
|---|---|---|---|
| faq.q1 | Ce este Pro Preview? | Ce este accesul gratuit la Pro? | Pro preview 용어를 앱과 같은 'accesul gratuit la Pro'로 (원칙 1, 4, 체크리스트 9) |
| faq.a1 | Pro Preview îți permite să folosești gratuit … Nu ai nevoie de card și nu se percepe nimic la final. Este separat de … după ce se încheie Pro Preview, poți începe în continuare acea perioadă de probă … | Accesul gratuit la Pro îți permite să folosești toate funcțiile Pro … Este complet gratuit și la final nu se face nicio plată automată. Este diferit de perioada de probă gratuită … după ce accesul gratuit la Pro se încheie, poți începe în continuare acea perioadă de probă gratuită … | 용어 통일. 'Nu ai nevoie de card'(카드 불필요) 관용구 대신 앱 proPreviewStarted처럼 '완전 무료, 자동 결제 없음'으로. 스토어 체험은 앱 용어 'perioadă de probă gratuită' 그대로 (원칙 1, 4) |
| faq.a2 | …sincronizează în timp real… | …transmite în timp real… | 'sync'는 내부 용어. '실시간으로 전달'로 (원칙 2) |
| faq.a8 | …Sincronizează în timp real… | …Transmite în timp real… | 위와 같음 (원칙 2) |
| faq.a4 | …telefonul de pe care l-ai cumpărat … (sau restaurează achiziția pe el)… | …telefonul de pe care ai cumpărat Pro … (sau restabilește achizițiile pe el)… | 'l-ai'(그것을)이 모호. 앱 버튼 „Restabilește achizițiile”와 같은 동사로 (원칙 6, 체크리스트 9) |
| faq.a7 | …și apasă butonul roșu **Resetează**. …sunt resetate, iar te poți reconecta… | …și dă clic pe butonul roșu **Resetează**. …sunt resetate și te poți reconecta… | 컴퓨터 동작은 'dă clic'. 'iar te poți'는 어색한 어순 (원칙 5, 6). 라벨 Setări·Resetează는 확장과 일치 |
| guide.f1Tip | Schimbă viteza din setările telecomenzii → Viteză la apăsare lungă. | Schimbă viteza din „Setările telecomenzii” → „Viteză la apăsare lungă”. | 앱 화면 이름(remoteSettings)을 정확히 인용하고 따옴표로 메뉴임을 표시 (체크리스트 9) |
| guide.f4Tip | …din setările telecomenzii → Repetări A-B Loop. | …din „Setările telecomenzii” → „Repetări A-B Loop”. | 위와 같음 (체크리스트 9) |
| guide.f3Body | Atinge Continuă pe telefon pe telecomandă. Browserul se oprește, iar videoclipul se deschide… | Atinge „Continuă pe telefon” în telecomandă. Videoclipul se pune pe pauză în browser și se deschide… | 버튼 이름이 문장에 섞여 'pe … pe'로 읽기 어려움. '브라우저가 멈춘다'는 브라우저가 꺼지는 것처럼 읽힘 (원칙 6) |
| guide.f3Tip | Continuă pe telefon este primul buton… | „Continuă pe telefon” este primul buton… | 버튼 이름 인용 부호 (공통 규칙: 문장 부호) |
| guide.f6Body | Secțiunea File afișează… | Secțiunea „File” afișează… | 'File'(탭 이름)이 일반 명사 '파일/탭'과 구분되지 않음 (원칙 6) |
| guide.f2Body | Atinge Distribuie (Share), … | Atinge Distribuie, … | YouTube·TikTok 루마니아어 앱 버튼은 'Distribuie'. 영어 병기 불필요 (원칙 1) |
| guide.step1Title | Instalează Zappit pe ambele părți | Instalează Zappit pe computer și pe telefon | 'both sides' 직역으로 뜻이 흐림 (원칙 1, 6) |
| meta.getTitle | Obține Zappit | Descarcă Zappit | 'Get' 직역. 루마니아어 다운로드 페이지는 'Descarcă' (원칙 1) |
| get.title | Obține Zappit | Descarcă Zappit | 위와 같음 (원칙 1) |
| common.launch | Lansare la începutul lui decembrie 2026 | Lansare la începutul lunii decembrie 2026 | 표준 문어체 표현 (문법) |
| landing.why.oneBody | …au fiecare telecomanda lor dedicată… | …au fiecare o telecomandă proprie… | 'fiecare … lor dedicată' 어색한 직역 (원칙 1, 5) |
| landing.why.twoTitle | Conectare dintr-o scanare | Conectare cu o singură scanare | 더 자연스러운 표현 (원칙 1) |
| landing.demo.hint2 | Trage cronologia | Trage bara de progres | 'cronologie'(연대표)는 timeline 직역. 플레이어에서는 'bara de progres' (원칙 1) |
| landing.a11y.timeline | Cronologie | Bara de progres | 위와 같음 (원칙 1) |
| landing.demo.hint3 | Pune [ și ] pentru buclă | Setează [ și ] pentru buclă | 'Pune'(놓다)는 어색. 지점을 '설정'하는 동작 (원칙 6) |
| landing.demo.hint4 | Pauză, apoi trage rigla | Pune pauză, apoi trage rigla | 명사만 있어 할 일이 안 보임 (원칙 6) |
| landing.snack.startAfterEnd | Începutul trebuie să fie înainte de sfârșit | Punctul de început trebuie să fie înaintea punctului de final | 데모 알림을 앱 errorStartAfterEnd와 같게 (체크리스트 9) |
| landing.snack.endBeforeStart | Sfârșitul trebuie să fie după început | Punctul de final trebuie să fie după punctul de început | 앱 errorEndBeforeStart와 같게 (체크리스트 9) |
| landing.snack.turnOffAbFirst | Dezactivează mai întâi A-B Loop | Oprește mai întâi A-B Loop | 앱 turnOffAbFirst와 같게 (체크리스트 9) |
| landing.snack.replay | Vezi din nou | Redă de la început | 앱 replay와 같게 (체크리스트 9) |
| landing.a11y.replay | Vezi din nou | Redă de la început | 위와 같음 |
| landing.snack.exitFullScreen | Ieși din ecranul complet | Ieși din ecran complet | 앱 exitFullScreen과 같게 (체크리스트 9) |
| landing.a11y.mute | Oprește sunetul | Dezactivează sunetul | 앱 mute와 같게 (체크리스트 9) |

## 앱(교차 참조 수정)

| 키 | 수정 전 | 수정 후 | 문제 (한국어, 가이드 원칙 번호 포함) |
|---|---|---|---|
| pairPhoneLimit | …dă clic pe „Reset” în extensia Zappit de pe computer. | …dă clic pe „Resetează” în extensia Zappit de pe computer. | 확장이 번역되어 Settings의 버튼이 'Resetează'로 보이므로 그 라벨로 (체크리스트 9) |

browsersDisconnectedBody 등 다른 앱 키에는 확장 라벨 인용이 없어 바꾸지 않았습니다.

## 확인이 필요한 부분

- **브라우저·OS 화면 문구(faq.a8~a13):** Chrome 경고 **Să citească și să modifice toate datele tale de pe toate site-urile**, Chrome의 **Poate citi și modifica datele site-urilor**·**Pe toate site-urile**·**Acces la site-uri**·**Detalii**, Safari/iOS의 **Configurări**·**Editează site-urile web…**·**Când vizitezi alte site-uri web**·**Permite întotdeauna pe toate site-urile web**는 루마니아어 Chrome·macOS 실제 화면과 같은지 1차 자료로 확인하지 못해 그대로 두었습니다. 특히 Chrome 경고는 문장 중간에서 대문자 'Să'로 시작해 실제 문구와 다를 가능성이 있으니, 루마니아어 Chrome에서 확장 설치 대화상자를 한 번 확인해 주세요. Apple 문구는 2인칭 존칭형(Editați …)일 수도 있습니다.
- **Android 설정 이름(faq.a11Points[1]):** iPhone은 'Configurări', Android는 'Setări'로 서로 다르게 썼는데, 이는 각 OS의 실제 루마니아어 명칭이라 의도된 차이로 보고 유지했습니다.
- **'video' vs 'videoclip':** 랜딩 마케팅 문구(landing.sub, oneTitle, anyWeb 등)의 'video'는 루마니아어에서 자연스러운 표현이라 그대로 두었습니다. 앱처럼 모두 'videoclip'으로 통일할지 결정해 주세요.
