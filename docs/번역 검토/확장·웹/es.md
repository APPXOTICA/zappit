# 스페인어(es) 확장·웹 번역 검토 보고서

웹에서 가장 큰 문제는 앱과 용어가 맞지 않는 것이었다. FAQ가 Pro preview를 영어 "Pro Preview" 그대로, 스토어 체험을 "prueba gratuita"로 써서 앱("acceso gratis a Pro", "prueba gratis")과 달랐고, 가이드가 앱 버튼 "Seguir en el móvil"을 "Continuar en el móvil"로 인용하는 등 메뉴 이름이 앱과 어긋났다. 확장은 대체로 자연스러워서 재연결 문구의 대상만 분명하게 고쳤고, 앱의 `pairPhoneLimit`는 영어 'Reset' 대신 확장의 번역된 이름 «Restablecer»·«Ajustes»를 쓰도록 바꿨다(확장 2개, 웹 22개, 앱 1개 수정).

## 확장

| 키 | 수정 전 | 수정 후 | 문제 |
|---|---|---|---|
| disconnectBrowserBody | … Para volver a conectarte, tendrás que escanear de nuevo el código QR. | … Para volver a conectarlo, tendrás que escanear de nuevo el código QR. | "conectarte"(네가 연결)는 다시 연결하는 대상이 사용자인 것처럼 읽힘. 다시 연결하는 대상인 이 브라우저("lo")로 분명히 함 (원칙 6) |
| resetBody | … Para volver a conectarte, tendrás que escanear de nuevo el código QR. | … Para volver a conectarlos, tendrás que escanear de nuevo el código QR. | 위와 같음. 초기화된 폰·브라우저 전체("los")를 다시 연결한다는 뜻으로 (원칙 6) |

## 웹

| 키 | 수정 전 | 수정 후 | 문제 |
|---|---|---|---|
| meta.getDescription | Convierte tu teléfono en un mando… | Convierte tu móvil en un mando… | 사이트·앱 전체가 "móvil"을 쓰는데 여기만 "teléfono" (원칙 1, 체크리스트 9) |
| landing.title | Deja el ratón. | Olvídate del ratón. | "Deja el ratón"은 "마우스를 내려놓아라"에 가까운 직역. "Kill the mouse"의 뉘앙스(이제 마우스는 필요 없다)는 "Olvídate del ratón"이 스페인어 광고 문구로 자연스러움 (원칙 1) |
| landing.snack.hold | 2× mientras mantienes | 2× mientras mantienes pulsado | "mantienes"만으로는 무엇을 유지하는지 빠진 불완전한 문장 (원칙 6) |
| landing.snack.startAfterEnd | El inicio debe estar antes del final | El punto de inicio debe estar antes del punto final | 데모는 앱 알림을 재현하므로 앱 `errorStartAfterEnd`와 같은 문구로 (체크리스트 9) |
| landing.snack.endBeforeStart | El final debe estar después del inicio | El punto final debe estar después del punto de inicio | 앱 `errorEndBeforeStart`와 통일 (체크리스트 9) |
| landing.snack.replay | Volver a ver | Volver a reproducir | 앱 `replay` 버튼은 "Volver a reproducir". "Volver a ver"는 앱에서 다른 버튼(`watchAgain`)이라 혼동됨 (체크리스트 9) |
| landing.a11y.replay | Volver a ver | Volver a reproducir | 위와 같음 (체크리스트 9) |
| landing.a11y.pause | Pausa | Pausar | 버튼 라벨이므로 앱 `pause`("Pausar")와 같게 (체크리스트 9) |
| landing.a11y.sleep | Temporizador de apagado | Temporizador | 앱 `sleepTimerLabel`·`sleepTimer`는 "Temporizador". 같은 버튼 이름 통일 (체크리스트 9) |
| guide.f1Tip | Cambia la velocidad en los ajustes del mando → Velocidad al mantener pulsado. | Cambia la velocidad en «Ajustes del mando» → «Velocidad al mantener pulsado». | 앱 메뉴 이름 "Ajustes del mando"를 정확히 인용하고, 문장과 구분되게 «» 표시 (체크리스트 9, 원칙 6) |
| guide.f2Body | … Toca Compartir (Share), elige Zappit… | … Toca Compartir, elige Zappit… | 스페인어 YouTube·TikTok 앱의 버튼은 "Compartir". 영어 "(Share)"는 불필요 (원칙 1) |
| guide.f3Body | … Toca Continuar en el móvil en el mando. … | … En el mando, toca «Seguir en el móvil». … | 앱 버튼 이름은 "Seguir en el móvil"(`playInApp`). 또한 "en el móvil en el mando"처럼 "en"이 이어져 읽기 어려움 (체크리스트 9, 원칙 5) |
| guide.f3Tip | Continuar en el móvil es el primer botón… | «Seguir en el móvil» es el primer botón… | 앱 버튼 이름 통일 (체크리스트 9) |
| guide.f4Tip | Elige cuántas veces se repite en los ajustes del mando → Repeticiones del A-B Loop. | Elige cuántas veces se repite en «Ajustes del mando» → «Repeticiones del A-B Loop». | 앱 메뉴 이름 정확히 인용 (체크리스트 9) |
| guide.f6Body | La pestaña Pestañas muestra… | La pestaña «Pestañas» de la app muestra… | "La pestaña Pestañas"는 탭 이름인지 알 수 없어 어색함. 앱 탭 이름임을 «»와 "de la app"로 분명히 함 (원칙 6) |
| guide.helpTitle | ¿Sigues atascado? | ¿Sigues con problemas? | "atascado"는 남성형이라 성별이 정해지고 구어적. 중립 표현으로 (원칙 3) |
| guide.helpCta | Ir a FAQ | Ver las preguntas frecuentes | 관사 없는 "Ir a FAQ"는 문법상 어색함. 앱 메뉴 이름 "Preguntas frecuentes"와 맞춤 (원칙 1, 체크리스트 9) |
| faq.q1 | ¿Qué es Pro Preview? | ¿Qué es el acceso gratis a Pro? | Pro preview를 번역하지 않음. 앱에서 정한 용어 "acceso gratis a Pro"와 통일 (원칙 1, 4, 체크리스트 9) |
| faq.a1 | Pro Preview te permite usar todas las funciones Pro gratis durante 7 días… No necesitas tarjeta y no se cobra nada cuando termina. Es independiente de la prueba gratuita… | Con el acceso gratis a Pro puedes usar todas las funciones Pro durante 7 días… Es totalmente gratis: no se te cobrará nada al terminar. Es independiente de la prueba gratis… cuando termine tu acceso gratis a Pro, aún podrás empezar esa prueba gratis… | Pro preview 용어를 앱과 통일, 스토어 체험도 앱의 "prueba gratis"로 통일. "No necesitas tarjeta"(카드 불필요)는 영어 관용구 직역이라 앱(`proPreviewStarted`)과 같이 "완전 무료, 끝나도 결제 없음"으로 (원칙 4, 체크리스트 9) |
| faq.a7 | … abre **Ajustes** y pulsa el botón rojo **Restablecer**. … puedes volver a conectarte… | … abre **Ajustes** y haz clic en el botón rojo **Restablecer**. … puedes volver a conectarlos… | 컴퓨터 확장의 버튼이라 "pulsa" 대신 다른 문장과 같은 "haz clic en". 다시 연결하는 대상(폰·브라우저)을 분명히 (원칙 6). 확장 라벨 "Ajustes"·"Restablecer"와 일치 확인 |
| faq.a8 | Al instalarla, Chrome avisa… | Al instalar la extensión, Chrome avisa… | 앞 문장의 주어가 Zappit(남성)인데 "-la"가 무엇을 가리키는지 모호함 (원칙 6) |
| faq.a10Steps[1] | En **Puede leer y cambiar los datos del sitio**, elige **En todos los sitios**. | En **Puede leer y cambiar datos de sitios**, elige **En todos los sitios**. | Chrome 스페인어 화면의 실제 메뉴 이름(Google 도움말 기준 "Puede leer y cambiar datos de sitios")과 맞춤 (원칙 1) |

## 앱(교차 참조 수정)

| 키 | 수정 전 | 수정 후 | 문제 |
|---|---|---|---|
| pairPhoneLimit | … haz clic en «Reset» en la extensión de Zappit de tu ordenador. | … haz clic en «Restablecer» en los «Ajustes» de la extensión de Zappit de tu ordenador. | 확장이 번역되었으므로 화면에 보이는 확장 라벨 "Restablecer"·"Ajustes"로 바꾸고, 버튼이 있는 위치(Ajustes)도 알려 줌 (원칙 6, 체크리스트 9) |

## 확인이 필요한 사항

- **Chrome 권한 경고 문구(`faq.a8`):** "**Leer y cambiar todos tus datos en todos los sitios web**"를 그대로 두었다. 실제 Chrome 스페인어 화면에서 "cambiar" 대신 "modificar"일 수 있는데, 검색 중 사용량 한도에 걸려 원문 화면으로 확인하지 못했다. 실제 Chrome(es) 설치 화면에서 한 번 확인 후 굵은 글씨 부분만 맞추면 된다.
- **Safari 메뉴 이름:** 스페인(es-ES) macOS는 "Ajustes", 중남미 Apple 문서는 "Configuración"을 쓴다. 이 파일은 스페인식 어휘("ordenador", "móvil")를 일관되게 쓰므로 "Ajustes"를 유지했다. 앱 보고서에서 제기한 지역 어휘(스페인식/중남미식) 결정이 나면 웹도 함께 바꿔야 한다.
- **상단 메뉴 `common.nav.faq`:** 공간 때문에 "FAQ"를 유지했다. 앱 메뉴와 완전히 맞추려면 "Preguntas frecuentes"로 바꿀 수 있지만 헤더에서 길어진다.
- **`guide.f4Title`:** "Repetición por tramos (A-B Loop)"는 설명을 덧붙인 제목이라 그대로 두었다. 앱은 기능 이름을 "A-B Loop"로만 쓴다.
