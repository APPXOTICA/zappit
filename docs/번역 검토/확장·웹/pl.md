# 폴란드어(pl) 확장·웹 번역 검토 보고서

확장 문구는 대체로 자연스러워 2개만 고쳤고, 웹은 주로 앱(검토 완료본)과의 용어 불일치를 고쳤다. Pro preview는 앱과 같은 ‘darmowy dostęp Pro’, 스토어 체험은 ‘darmowy okres próbny’로 맞췄고, 웹이 인용하는 앱 메뉴 이름(Ustawienia pilota, Prędkość przy przytrzymaniu, Liczba powtórzeń pętli A-B, Oglądaj dalej na telefonie, Odtwórz od początku)과 ‘pętla A-B’, ‘Dotknij’ 용어를 앱과 똑같이 했다. 앱의 pairPhoneLimit는 확장의 번역된 버튼 이름 ‘Resetuj’를 인용하도록 고쳤다.

수정 수: 확장 2개, 웹 26개, 앱(교차 참조) 1개

## 확장

| 키 | 수정 전 | 수정 후 | 문제 |
|---|---|---|---|
| extDescription | Steruj dowolnym filmem w przeglądarce komputera z telefonu. | Steruj z telefonu dowolnym filmem w przeglądarce na komputerze. | ‘z telefonu’가 문장 끝에 밀려 ‘컴퓨터의 브라우저’와 엉킴. 폴란드어 어순으로 앞에 둠, 63자 (원칙 5) |
| phoneConnected | Połączono | Połączony | 목록의 폰 아래 상태 표시인데 ‘Połączono’는 ‘연결됨(방금 연결했음)’ 알림형. 상태를 나타내는 형용사 ‘Połączony’(telefon, 남성) (원칙 1, 6) |

## 웹

| 키 | 수정 전 | 수정 후 | 문제 |
|---|---|---|---|
| landing.title | Odłóż myszkę. | Pożegnaj myszkę. | 같은 태그라인을 앱 온보딩 애니메이션(obAnimTagline)은 ‘Pożegnaj myszkę.’로 씀. 앱과 맞춤 (원칙 9) |
| landing.demo.sub | To pilot Zappit do YouTube. Stukaj, przytrzymuj i przeciągaj, a przeglądarka od razu odpowiada. | To pilot Zappit do YouTube. Dotykaj, przytrzymuj i przeciągaj, a przeglądarka od razu reaguje. | ‘Stukaj’ → 앱과 같은 ‘dotykać’ 계열로 통일, ‘odpowiada’(대답하다)보다 자연스러운 ‘reaguje’(반응하다) (원칙 1, 9) |
| landing.demo.hint4 | Pauza, potem przeciągnij skalę | Zatrzymaj film i przeciągnij skalę | 명사 ‘Pauza’와 명령형을 섞은 조각 문장. ‘영상을 멈추고 눈금을 끄세요’ (원칙 5) |
| landing.snack.abOn | A-B Loop {a} – {b} | Pętla A-B {a} – {b} | 영어 ‘A-B Loop’ 그대로 → 앱 용어 ‘pętla A-B’ (원칙 1, 9) |
| landing.snack.abOff | A-B Loop wyłączony | Pętla A-B wyłączona | 위와 같음, 여성형 ‘wyłączona’로 일치 (원칙 9, 문법) |
| landing.snack.startAfterEnd | Początek musi być przed końcem | Punkt początkowy musi być przed punktem końcowym | 앱 errorStartAfterEnd 문구와 다름. 앱과 동일하게 (원칙 9) |
| landing.snack.endBeforeStart | Koniec musi być po początku | Punkt końcowy musi być po punkcie początkowym | 앱 errorEndBeforeStart 문구와 다름. 앱과 동일하게 (원칙 9) |
| landing.snack.turnOffAbFirst | Najpierw wyłącz A-B Loop | Najpierw wyłącz pętlę A-B | ‘A-B Loop’ → 앱 turnOffAbFirst와 동일한 ‘pętlę A-B’ (원칙 9) |
| landing.snack.replay | Obejrzyj ponownie | Odtwórz od początku | 앱 replay ‘Odtwórz od początku’와 다름 (원칙 9) |
| landing.a11y.replay | Obejrzyj ponownie | Odtwórz od początku | 위와 같음 (원칙 9) |
| landing.why.oneBody | YouTube, Netflix, TikTok, Shorts i Reels mają własnego, dedykowanego pilota. Na każdej innej stronie z wideo Zappit działa jak pilot uniwersalny. | YouTube, Netflix, TikTok, Shorts i Reels mają własne, specjalne piloty. Na każdej innej stronie z wideo Zappit działa jak pilot uniwersalny. | ‘dedykowany’는 영어 dedicated의 직역 칼크. 앱(proFeatureDedicatedControllers)처럼 ‘specjalne piloty’ (원칙 1, 9) |
| landing.why.threeBody | Wyślij film z telefonu na komputer jednym stuknięciem albo zabierz go z powrotem na telefon, gdy wychodzisz z pokoju. | Wyślij film z telefonu na komputer jednym dotknięciem albo zabierz go z powrotem na telefon, gdy wychodzisz z pokoju. | ‘stuknięciem’ → 앱 용어 ‘dotknięciem’ (원칙 9) |
| guide.step2Body | Kliknij ikonę Zappit na pasku narzędzi przeglądarki i zeskanuj kod QR aplikacją. Pilot połączy się sam i zmieni kolor na zielony. | Kliknij ikonę Zappit na pasku narzędzi przeglądarki i zeskanuj kod QR aplikacją. Pilot połączy się automatycznie i zaświeci się na zielono. | ‘połączy się sam’(혼자 연결)는 어색함. 앱 offlineMessage처럼 ‘automatycznie’ (원칙 1, 9) |
| guide.f1Body | Dotknij i przytrzymaj przycisk odtwarzania. Film leci w tempie 2×, dopóki trzymasz, i wraca do normalnej prędkości, gdy puścisz. | Dotknij i przytrzymaj przycisk odtwarzania. Film jest odtwarzany z prędkością 2×, dopóki trzymasz przycisk, i wraca do normalnej prędkości, gdy go puścisz. | 구어 ‘Film leci’ → ‘재생된다’, 무엇을 누르고 있는지 ‘przycisk’로 명시 (원칙 6, 말투) |
| guide.f1Tip | Prędkość zmienisz w ustawieniach pilota → Prędkość przy przytrzymaniu. | Prędkość zmienisz tutaj: Ustawienia pilota → Prędkość przy przytrzymaniu. | 메뉴 이름을 소문자·격변화로 써 앱 화면 이름 ‘Ustawienia pilota’와 달라짐. 앱 표기 그대로 인용 (원칙 9) |
| guide.f2Body | Oglądasz w aplikacji YouTube lub TikTok? Stuknij Udostępnij (Share), wybierz Zappit, a film otworzy się w przeglądarce na komputerze. | Oglądasz w aplikacji YouTube lub TikTok? Dotknij Udostępnij, wybierz Zappit, a film otworzy się w przeglądarce na komputerze. | ‘Stuknij’ → ‘Dotknij’, 폴란드어 YouTube·TikTok 앱 버튼은 ‘Udostępnij’이므로 영어 ‘(Share)’ 삭제 (원칙 1, 9) |
| guide.f3Body | Odchodzisz od biurka? Stuknij Kontynuuj na telefonie na pilocie. Przeglądarka się zatrzyma, a film otworzy się w aplikacji na telefonie dokładnie tam, gdzie skończyłeś. | Odchodzisz od biurka? Dotknij „Oglądaj dalej na telefonie” na pilocie. Przeglądarka wstrzyma odtwarzanie, a film otworzy się w aplikacji na telefonie dokładnie w miejscu, w którym przerwano oglądanie. | 버튼 이름 ‘Kontynuuj na telefonie’가 앱 playInApp ‘Oglądaj dalej na telefonie’와 다름. 남성형 ‘skończyłeś’도 중립 표현으로 (원칙 9, 6) |
| guide.f3Tip | Kontynuuj na telefonie to pierwszy przycisk w prawym górnym rogu pilota: ikona telefonu ze strzałką w dół. | „Oglądaj dalej na telefonie” to pierwszy przycisk w prawym górnym rogu pilota: ikona telefonu ze strzałką w dół. | 위와 같음, 앱 버튼 이름으로 (원칙 9) |
| guide.f4Title | Pętla fragmentu (A-B Loop) | Pętla A-B | ‘Pętla fragmentu (A-B Loop)’ → 앱 용어 ‘Pętla A-B’ (원칙 1, 9) |
| guide.f4Body | Stuknij [ tam, gdzie zaczyna się wybrany fragment, i ] tam, gdzie się kończy. Ten fragment będzie odtwarzany w kółko. Stuknij ponownie [ lub ], aby usunąć ten punkt i zatrzymać pętlę. | Dotknij [ tam, gdzie zaczyna się wybrany fragment, i ] tam, gdzie się kończy. Ten fragment będzie odtwarzany w kółko. Dotknij ponownie [ lub ], aby usunąć ten punkt i zatrzymać pętlę. | ‘Stuknij’ → 앱 용어 ‘Dotknij’ (원칙 9) |
| guide.f4Tip | Liczbę powtórzeń ustawisz w ustawieniach pilota → Liczba powtórzeń A-B Loop. | Liczbę powtórzeń ustawisz tutaj: Ustawienia pilota → Liczba powtórzeń pętli A-B. | 설정 항목 이름 ‘Liczba powtórzeń A-B Loop’가 앱 abLoopCount ‘Liczba powtórzeń pętli A-B’와 다름 (원칙 9) |
| guide.f6Body | Sekcja Karty pokazuje wszystkie karty otwarte w przeglądarce. Stuknij jedną, aby do niej przejść, albo użyj strzałek na pilocie, by przejść do następnej. | Sekcja „Karty” pokazuje wszystkie karty otwarte w przeglądarce. Dotknij jednej, aby do niej przejść, albo użyj strzałek na pilocie, by przejść do następnej karty. | 탭 이름을 따옴표로 구분, ‘Stuknij jedną’ → 문법상 생격 ‘Dotknij jednej’, 대상 ‘karty’ 명시 (원칙 6, 9, 문법) |
| faq.q1 | Czym jest Pro Preview? | Czym jest darmowy dostęp Pro? | 영어 ‘Pro Preview’ 그대로. 앱 용어 ‘darmowy dostęp Pro’ (원칙 1, 9) |
| faq.a1 | Pro Preview pozwala przez 7 dni bezpłatnie korzystać ze wszystkich funkcji Pro, licząc od pierwszego połączenia telefonu z przeglądarką. Nie potrzebujesz karty, a po zakończeniu nic nie zostanie pobrane. To coś innego niż bezpłatny okres próbny płatnej subskrypcji: po zakończeniu Pro Preview nadal możesz rozpocząć ten okres na ekranie zakupu. | Darmowy dostęp Pro pozwala przez 7 dni korzystać ze wszystkich funkcji Pro, licząc od pierwszego połączenia telefonu z przeglądarką. Jest całkowicie bezpłatny, a po jego zakończeniu nie zostanie pobrana żadna opłata. To coś innego niż darmowy okres próbny płatnej subskrypcji: po zakończeniu darmowego dostępu Pro nadal możesz rozpocząć okres próbny na ekranie zakupu. | Pro preview 용어 통일, ‘Nie potrzebujesz karty’ 관용구 직역 삭제하고 ‘완전 무료’로, 다운로드로도 읽히는 ‘nic nie zostanie pobrane’ → ‘요금이 청구되지 않음’, 스토어 체험은 앱과 같은 ‘darmowy okres próbny’ (원칙 1, 4, 9) |
| faq.a4 | Tak. Z jednym komputerem można połączyć do 3 telefonów, a jeden telefon może sterować kilkoma przeglądarkami. Jeśli masz Pro, najpierw połącz telefon, na którym je kupiłeś, i nie rozłączaj go (albo przywróć na nim zakup), zanim dodasz kolejne telefony. Dzięki temu Pro zadziała na wszystkich połączonych urządzeniach. | Tak. Z jednym komputerem można połączyć do 3 telefonów, a jeden telefon może sterować kilkoma przeglądarkami. Jeśli masz Pro, najpierw połącz telefon, na którym kupiono subskrypcję, i nie rozłączaj go (albo przywróć na nim zakup), zanim dodasz kolejne telefony. Dzięki temu Pro zadziała na wszystkich połączonych urządzeniach. | 남성형 ‘kupiłeś’ → 성별 중립 ‘kupiono subskrypcję’, 무엇을 샀는지 명시 (원칙 6) |
| get.nextBody | Kliknij ikonę Zappit na pasku przeglądarki i zeskanuj kod QR aplikacją. | Kliknij ikonę Zappit na pasku narzędzi przeglądarki i zeskanuj kod QR aplikacją. | ‘na pasku przeglądarki’ → 앱·가이드와 같은 ‘na pasku narzędzi przeglądarki’ (원칙 9) |

## 앱(교차 참조 수정)

| 키 | 수정 전 | 수정 후 | 문제 |
|---|---|---|---|
| pairPhoneLimit | … kliknij „Reset” w rozszerzeniu Zappit na komputerze. | … kliknij „Resetuj” w rozszerzeniu Zappit na komputerze. | 확장이 번역되어 버튼 이름이 ‘Resetuj’가 됨. 사용자가 보는 이름과 일치 (원칙 9) |

browsersDisconnectedBody 등 다른 교차 참조 키는 확장 라벨을 인용하지 않거나(QR 스캔 안내만) 이미 확장과 같아(obAnim* 팝업 문구) 수정하지 않았다.

## 확인이 필요한 부분

- **Tutorial/Guide 이름 불일치:** 앱 More의 tutorial은 ‘Poradnik’, 웹 페이지 제목·메뉴는 ‘Przewodnik’이다. 앱 메뉴를 눌러 열리는 웹뷰 제목이 달라 보인다. 앱 키는 이번 수정 범위(확장 교차 참조)가 아니라 그대로 두었다. 한쪽으로 통일할지 결정이 필요하다(제안: 앱을 ‘Przewodnik’으로).
- **FAQ 이름:** 앱 메뉴는 ‘Częste pytania’, 웹 제목·내비는 ‘FAQ’. 폴란드에서 ‘FAQ’도 널리 쓰여 그대로 두었지만 통일을 원하면 웹 faq.title을 ‘Częste pytania’로 바꿀 수 있다.
- **‘Dotknij’ 통일:** 웹은 ‘Stuknij’(Apple 폴란드어 용어), 앱은 ‘Dotknij’(Google 용어)를 써서 웹뷰에서 섞여 보였다. 앱에 맞춰 가이드 안내 문구를 ‘Dotknij’로 바꿨다.
- **Chrome·Safari·Android 시스템 문구 인용(faq.a8, a9Steps, a10Steps, a11Points):** 브라우저·OS의 실제 폴란드어 화면 문구와 한 글자까지 같은지 실제 기기에서 확인하지 못해 바꾸지 않았다(예: Chrome ‘Na wszystkich stronach’ vs ‘Na wszystkich witrynach’).
- **waitingForConnection ‘Czekam na połączenie…’:** 1인칭 표현이다. 표준 UI 표현은 ‘Oczekiwanie na połączenie…’이지만 앱 waitingForBrowser(‘Czekam na przeglądarkę…’)와 같은 말투라 그대로 두었다.
