# 독일어(de) 확장·웹 번역 검토 보고서

확장 3개, 웹 30개, 앱 교차 참조 1개를 고쳤습니다. 가장 큰 문제는 웹 FAQ가 Pro preview를 영어 그대로 "Pro Preview"라고 쓰고, 스토어 체험을 앱의 Pro preview 용어와 겹치는 "kostenlose Testphase"라고 부른 점이었습니다(앱은 Pro preview = "kostenlose Pro-Testphase", 스토어 체험 = "Gratis-Test"). 그 밖에 웹 데모·가이드가 인용하는 버튼·알림 이름(„Am Handy weiterschauen“, "Loop-Anfang", "Von vorn abspielen", "A-B-Loop" 등)을 앱 파일과 똑같이 맞췄고, 앱의 `pairPhoneLimit`은 번역된 확장 라벨 „Einstellungen“ → „Zurücksetzen“을 쓰도록 고쳤습니다. 말투는 앱과 같은 du(친근체)입니다.

## 확장

| 키 | 수정 전 | 수정 후 | 문제 |
|---|---|---|---|
| disconnectBrowserBody | … Um dich wieder zu verbinden, musst du den QR-Code erneut scannen. | … Um ihn wieder zu verbinden, musst du den QR-Code erneut scannen. | "dich"(너 자신을) 연결한다는 말이 되어 무엇을 다시 연결하는지 흐렸다. 다시 연결할 대상은 이 브라우저다. (원칙 6) |
| resetBody | … Um dich wieder zu verbinden, musst du den QR-Code erneut scannen. | … Um sie wieder zu verbinden, musst du den QR-Code erneut scannen. | 위와 같음. 대상은 초기화된 폰·브라우저들이다. (원칙 6) |
| noAppYet | … um sie zu holen. | … um sie herunterzuladen. | "holen"(가져오다)은 구어적이고 앱 설치를 가리키는 말로 쓰지 않는다. (원칙 1) |

## 웹

| 키 | 수정 전 | 수정 후 | 문제 |
|---|---|---|---|
| meta.getTitle, get.title | Zappit holen | Hol dir Zappit | "Zappit holen"은 어색한 직역 제목. 독일어 다운로드 페이지에서 흔한 표현으로 바꿨다. (원칙 1) |
| common.launch | Start Anfang Dezember 2026 | Erscheint Anfang Dezember 2026 | "Start"는 같은 페이지의 메뉴 "Start"(홈)와 겹쳐 뜻이 모호하다. "출시된다"로 분명히 했다. (원칙 6) |
| landing.demo.title | Drück irgendwas. Es reagiert sofort. | Drück irgendwas – und sieh, was passiert. | "Es"가 무엇인지 불분명하고, 바로 아래 문구("der Browser reagiert sofort")와 중복된다. (원칙 6) |
| landing.demo.hint3 | [ und ] für Schleife | [ und ] für den A-B-Loop | 앱은 이 기능을 "A-B-Loop"라고 부르며 "Schleife"는 어디에도 없다. (체크 9) |
| landing.snack.play, landing.a11y.play | Wiedergabe | Abspielen | 앱의 Play 버튼 이름(`play`)과 맞췄다. (체크 9) |
| landing.snack.mute | Stumm | Ton aus | 짝이 되는 "Ton an"(unmute)과 맞춰 알림으로 자연스럽게. (원칙 1) |
| landing.snack.loopStart / loopEnd | Schleifenstart {time} / Schleifenende {time} | Loop-Anfang {time} / Loop-Ende {time} | 앱 라벨 `loopStart`·`loopEnd`와 맞췄다. (체크 9) |
| landing.a11y.loopStart / loopEnd | Schleifenstart / Schleifenende | Loop-Anfang / Loop-Ende | 위와 같음. (체크 9) |
| landing.snack.abOn | A-B Loop {a} – {b} | A-B-Loop {a} – {b} | 독일어 복합어는 붙임표로 잇는다. 앱 표기 "A-B-Loop"와 통일. (공통 규칙: 맞춤법, 체크 9) |
| landing.snack.abOff | A-B Loop aus | A-B-Loop aus | 위와 같음. |
| landing.snack.turnOffAbFirst | Schalte zuerst den A-B Loop aus | Schalte zuerst den A-B-Loop aus | 앱 `turnOffAbFirst`와 똑같이. (체크 9) |
| landing.snack.startAfterEnd | Der Start muss vor dem Ende liegen | Der Startpunkt muss vor dem Endpunkt liegen | 앱 `errorStartAfterEnd`와 맞췄고, "Start/Ende"보다 지점(구간 시작·끝)이 분명하다. (원칙 6, 체크 9) |
| landing.snack.endBeforeStart | Das Ende muss nach dem Start liegen | Der Endpunkt muss nach dem Startpunkt liegen | 위와 같음. |
| landing.snack.replay, landing.a11y.replay | Nochmal | Von vorn abspielen | 앱 `replay`와 맞췄다. "Nochmal"은 맞춤법상 "noch mal"이기도 하다. (체크 9, 맞춤법) |
| landing.snack.framePause | Pausiere das Video, um Bild für Bild zu gehen | Pausiere das Video, um Bild für Bild weiterzuschalten | "Bild für Bild gehen"은 go를 직역한 말로 독일어에서 쓰지 않는다. (원칙 1) |
| guide.f2Body | Tippe auf Teilen (Share), … | Tippe auf Teilen, … | 독일어 폰 화면에는 "Teilen"만 보인다. 괄호 속 영어는 불필요하다. (원칙 1) |
| guide.f3Body | … auf „Auf dem Handy weiterschauen“. … | … auf „Am Handy weiterschauen“. … | 앱 버튼 이름(`playInApp`)과 다르다. 인용하는 이름은 앱과 똑같아야 한다. (체크 9) |
| guide.f3Tip | „Auf dem Handy weiterschauen“ ist … | „Am Handy weiterschauen“ ist … | 위와 같음. (체크 9) |
| guide.f4Title | Abschnitt wiederholen (A-B Loop) | Abschnitt wiederholen (A-B-Loop) | 앱 표기와 통일. (체크 9) |
| faq.q1 | Was ist Pro Preview? | Was ist die kostenlose Pro-Testphase? | 영어 그대로 둔 용어. 앱이 정한 Pro preview 용어 "kostenlose Pro-Testphase"로 맞췄다. (원칙 1, 4, 체크 9) |
| faq.a1 | Mit Pro Preview kannst du … Du brauchst keine Kreditkarte, und am Ende wird nichts berechnet. Pro Preview ist unabhängig von der kostenlosen Testphase des Abos: Auch nach Pro Preview kannst du diese Testphase noch im Kaufbildschirm starten. | In der kostenlosen Pro-Testphase kannst du … Sie ist komplett kostenlos, und danach wird nichts automatisch abgerechnet. Die Pro-Testphase ist unabhängig vom Gratis-Test des Abos: Auch nach dem Ende der Pro-Testphase kannst du den Gratis-Test noch auf dem Kaufbildschirm starten. | 스토어 체험을 "kostenlose Testphase"라고 불러 Pro preview("Pro-Testphase")와 같은 말이 되었다. 앱의 스토어 체험 용어 "Gratis-Test"로 구분했다. "Keine Kreditkarte"는 앱과 같이 빼고 자동 결제가 없다는 사실만 썼다. "im Kaufbildschirm" → "auf dem"(전치사 오류). (원칙 4, 체크 5·9, 문법) |
| faq.a2 | … wird nur in Echtzeit synchronisiert, … | … wird nur in Echtzeit übertragen, … | "synchronisiert"(동기화)는 기술 용어다. 실제 일어나는 일(전송)로 썼다. (원칙 2) |
| faq.a7 | … klicke auf die rote Taste **Zurücksetzen**. … und du kannst dich mit einem neuen QR-Code wieder verbinden. | … klicke auf die rote Schaltfläche **Zurücksetzen**. … Mit einem neuen QR-Code kannst du sie danach wieder verbinden. | 화면의 버튼은 "Taste"(물리 키)가 아니라 "Schaltfläche"(앱 검토와 같은 기준). "dich verbinden"은 다시 연결할 대상(폰·브라우저)을 흐렸다. 라벨 „Einstellungen“·„Zurücksetzen“은 확장 파일과 일치. (원칙 1, 6, 체크 9) |
| faq.a8 | … Es synchronisiert nur in Echtzeit, … | … Es überträgt nur in Echtzeit, … | a2와 같음. (원칙 2) |
| faq.a12 | … und es in einem neuen Tab öffnet, … | … und es sich in einem neuen Tab öffnet, … | 재귀대명사 "sich" 누락 문법 오류("탭을 연다"가 아니라 "탭에서 열린다"). (문법) |

## 앱(교차 참조 수정)

| 키 | 수정 전 | 수정 후 | 문제 |
|---|---|---|---|
| pairPhoneLimit | … klicke in der Zappit-Erweiterung auf deinem Computer auf „Reset“. | … öffne in der Zappit-Erweiterung auf deinem Computer die „Einstellungen“ und klicke auf „Zurücksetzen“. | 확장이 번역되어 버튼 이름이 „Zurücksetzen“이 되었다. 영어 라벨 „Reset“은 화면에 없다. 버튼이 Settings 안에 있으므로 경로도 밝혔다. (원칙 6, 체크 9) |

`browsersDisconnectedBody` 등 다른 교차 참조 키는 확장 라벨을 인용하지 않거나(QR 코드 스캔 안내만) 이미 일치해(`obAnimYourPhones` „Deine Handys“, `obAnimRemoteConnected` „Fernbedienung verbunden“, `obAnimScanCode`) 그대로 두었습니다.

## 확인이 필요한 부분

- **브라우저·OS 공식 문구(검증 못 함):** FAQ가 인용하는 Chrome 경고(„Alle Ihre Daten auf allen Websites lesen und ändern“), Chrome 메뉴(„Kann Websitedaten lesen und ändern“, „Auf allen Websites“, „Websitezugriff“), Safari 메뉴, Android 권한 옵션(„Nur während der App-Nutzung zulassen“)은 원래 번역을 그대로 두었습니다. 검토 중 웹 확인이 막혀 실제 화면 문구와 대조하지 못했습니다. 특히 Android는 공식 문구가 „Nur während der Nutzung der App zulassen“일 가능성이 높으니 독일어 기기에서 확인해 주세요.
- **„Taste“ 유지:** guide.f3Tip, f1Body의 "Taste"는 리모컨(앱) 버튼을 가리키는 비유라 그대로 두었습니다(FAQ a7의 확장 화면 버튼만 "Schaltfläche"로 바꿈).
- **a13Points[0] „Pinnnadel“:** 오타처럼 보이지만 신정서법상 올바른 표기(Pinn + Nadel)라 고치지 않았습니다.
- **guide.f1Tip „Einstellungen der Fernbedienung“:** 앱에서는 아이콘 버튼의 접근성 라벨(`remoteSettings`)이라 화면에 글자로 보이지 않습니다. 앱 라벨과 똑같이 맞춰 두었습니다.
