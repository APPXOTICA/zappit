# 헝가리어(hu) 확장·웹 번역 검토 결과

웹 FAQ가 Pro preview를 영어 그대로 'Pro Preview'로 쓰고 "Nincs szükség bankkártyára(카드 필요 없음)" 관용구를 직역하고 있어, 앱에서 정한 'ingyenes Pro-próbaidőszak'와 앱 문구로 맞췄다. 웹 가이드가 인용하는 앱 메뉴 이름(Folytatás a telefonon, Távirányító beállításai, Lejátszás az elejéről, Voice Boost 알림 등)을 앱 파일과 정확히 일치시키고, Chrome 권한 문구는 Chromium 공식 헝가리어 번역(generated_resources_hu.xtb)으로 확인해 고쳤다. 확장은 Reset 안내가 '모든 폰과 브라우저를 복원(초기화)한다'로 읽히던 문제를 '연결을 끊는다'로 고쳤고, 앱의 pairPhoneLimit은 영어 'Reset' 대신 확장의 „Beállítások”/„Visszaállítás”를 쓰도록 바꿨다.

변경: 확장 3개, 웹 34개, 앱 교차 참조 2개

## 확장

| 키 | 수정 전 | 수정 후 | 문제 |
|---|---|---|---|
| resetHint | Minden csatlakoztatott telefont és böngészőt visszaállít, nem csak ezt. | Az összes csatlakoztatott telefon és böngésző kapcsolatát megszünteti, nem csak ezét. | '모든 폰과 브라우저를 복원/초기화한다'로 읽혀 폰 자체가 초기화되는 것처럼 오해됨. 실제 결과(모든 연결이 끊김)를 씀 (원칙 6) |
| resetBody | Minden csatlakoztatott telefon és böngésző visszaáll, nem csak ez. … | Az összes csatlakoztatott telefon és böngésző kapcsolata megszűnik, nem csak ezé. … | 위와 같음. 'visszaáll'(되돌아간다)은 무엇이 어떻게 되는지 모호함 (원칙 6) |
| codeError | Nem sikerült kódot kérni. Ellenőrizd az internetkapcsolatot. | Nem sikerült betölteni a QR-kódot. Ellenőrizd az internetkapcsolatot. | '코드를 요청하지 못함'은 내부 동작 표현. 사용자가 보는 결과(QR 코드를 불러오지 못함)로 (원칙 2, 6) |

## 웹

| 키 | 수정 전 | 수정 후 | 문제 |
|---|---|---|---|
| meta.getTitle / get.title | A Zappit beszerzése | Zappit letöltése | 'Get'의 직역 'beszerzés(조달)'는 앱·사이트에서 쓰지 않는 말. '다운로드'로 (원칙 1) |
| common.footer.trademark | …, és nem ők támogatják. | …, és nem rendelkezik a jóváhagyásukkal. | '지원하는 건 그들이 아니다'로 읽히는 어색한 문장. 상표 고지 관용 표현으로 (원칙 1) |
| landing.title | Tedd le az egeret. | Búcsú az egértől. | 같은 슬로건 "Kill the mouse."가 앱 온보딩(obAnimTagline)과 달랐음. 앱과 통일 (원칙 9) |
| landing.sub | …és szó szerint bármilyen videót… | …és tényleg bármilyen videót… | 'literally'를 'szó szerint'로 직역한 영어식 강조 (원칙 1) |
| landing.ctaDemo | Próbáld ki | Próbáld ki a távirányítót | 무엇을 써 보라는지 목적어가 없음 (원칙 6) |
| landing.demo.hint1 | Tartsd ▶ a 2×-hez | Tartsd nyomva a ▶ gombot: 2× | 'nyomva'가 빠진 비문('▶을 2×에 들고 있어라') (문법, 원칙 6) |
| landing.snack.voiceBoostOn | Voice Boost be: jobban hallani a hangokat | Voice Boost be: a beszéd jobban érthető | 앱 voiceBoostTurnedOn과 다름. 앱 문구로 통일 (원칙 9) |
| landing.snack.loopStart | Ismétlés eleje: {time} | Ismétlés kezdete: {time} | 앱 loopStart('Ismétlés kezdete')와 통일 (원칙 9) |
| landing.a11y.loopStart | Ismétlés eleje | Ismétlés kezdete | 위와 같음 (원칙 9) |
| landing.snack.replay | Újra | Lejátszás az elejéről | 앱 replay와 다름. 'Újra'는 앱에서 '다시 시도' 버튼 이름이라 혼동 (원칙 9) |
| landing.a11y.replay | Újra | Lejátszás az elejéről | 위와 같음 (원칙 9) |
| landing.a11y.smaller | Kisebb feliratok | Kisebb felirat | 앱 smallerCaptions와 통일 (원칙 9) |
| landing.a11y.larger | Nagyobb feliratok | Nagyobb felirat | 앱 largerCaptions와 통일 (원칙 9) |
| landing.why.twoTitle | Csatlakozás egy szkenneléssel | Csatlakozás egyetlen beolvasással | 'szkennelés'은 영어 차용어. 앱·확장이 QR에 쓰는 'beolvasás'로 통일 (원칙 1, 9) |
| guide.step1Body | …iPhone-ra vagy Android telefonra. | …az iPhone-odra vagy androidos telefonodra. | 'Android telefon'은 헝가리어 맞춤법 오류(형용사형 'androidos'), 다른 문장과 달리 소유형이 빠짐 (맞춤법) |
| guide.f1Tip | A sebességet a távirányító beállításaiban módosíthatod → Sebesség hosszú nyomásnál. | A sebességet itt módosíthatod: Távirányító beállításai → Sebesség hosszú nyomásnál. | 앱 메뉴 이름 'Távirányító beállításai'를 그대로 인용하지 않았고 화살표 경로가 문장 뒤에 붙어 어색함 (원칙 9, 5) |
| guide.f4Tip | Az ismétlések számát a távirányító beállításaiban adhatod meg → A-B Loop ismétlések. | Az ismétlések számát itt adhatod meg: Távirányító beállításai → A-B Loop ismétlések. | 위와 같음 (원칙 9, 5) |
| guide.f2Body | Koppints a Megosztás (Share) gombra… | Koppints a Megosztás gombra… | 헝가리어 YouTube·TikTok 앱에는 'Megosztás'만 보임. 영어 병기 불필요 (원칙 9) |
| guide.f3Body | …a Folytatás telefonon gombra. A böngésző megáll, … | …a „Folytatás a telefonon” gombra. A böngészőben megáll a lejátszás, … | 앱 버튼 이름(playInApp 'Folytatás a telefonon')과 다름. '브라우저가 멈춘다'는 브라우저가 멈추는 것처럼 읽힘 (원칙 9, 6) |
| guide.f3Tip | A Folytatás telefonon … a lefelé mutató nyilas telefon ikon. | A „Folytatás a telefonon” … a lefelé mutató nyilas telefonikon. | 앱 버튼 이름 불일치, 'telefon ikon'은 합성어 띄어쓰기 오류 (원칙 9, 맞춤법) |
| guide.f6Body | A Lapok részben… | A Lapok fülön… | 'Lapok'는 하단 탭. '부분'보다 '탭(fül)에서'가 위치를 정확히 알려 줌 (원칙 6) |
| guide.helpBody | …a GYIK-ban található. | …a GYIK-ben található. | 앱(onboardingIconHelpLabel 'GYIK-ben')과 어미 통일 (원칙 9) |
| guide.helpCta | Ugrás a GYIK-hoz | Ugrás a GYIK-hez | 위와 같음 (원칙 9) |
| guide.anim.opening | Megnyitás Chrome-ban… | Megnyitás: Chrome… | 애니메이션이 그리는 앱 알림(openingIn 'Megnyitás: {browser}…')과 통일 (원칙 9) |
| guide.anim.opened | Megnyitva Chrome-ban | Megnyitva: Chrome | 앱 openedIn과 통일 (원칙 9) |
| faq.q1 | Mi az a Pro Preview? | Mi az az ingyenes Pro-próbaidőszak? | 앱에서 정한 Pro preview 용어('ingyenes Pro-próbaidőszak')와 다름, 영어 그대로 노출 (원칙 1, 4, 9) |
| faq.a1 | A Pro Preview-val … Nincs szükség bankkártyára, és a végén semmit sem számlázunk. … | Az ingyenes Pro-próbaidőszak alatt … Teljesen ingyenes, a végén sincs automatikus fizetés. … | 용어 통일. 'No credit card is needed' 관용구 직역을 앱 proPreviewStarted와 같은 문장으로 (원칙 4, 9) |
| faq.a2 | …ami éppen megy… | …ami éppen fut… | 'megy'는 '작동하다'로도 읽혀 앱 검토 때 피한 표현. a8의 'futó'와 통일 (원칙 6, 9) |
| faq.a7 | …nyisd meg a **Beállításokat**, … Minden csatlakoztatott telefon és böngésző visszaáll, … | …nyisd meg a **Beállítások** menüt, … Az összes csatlakoztatott telefon és böngésző kapcsolata megszűnik, … | 확장 라벨을 어미 없이 그대로 인용, 결과 설명을 확장 resetBody와 통일 (원칙 9, 6) |
| faq.a8 | …a Zappit képes **Az összes adat olvasása és módosítása minden webhelyen** műveletre… | …a Zappit ezt kéri: **Az Ön összes adatának olvasása és módosítása az összes webhelyen**… | Chrome 실제 경고 문구와 다르고 문장이 비문. Chromium 공식 헝가리어 번역으로 교체 (원칙 9, 문법) |
| faq.a10Steps[1] | …válaszd a **Minden webhelyen** lehetőséget. | …válaszd **Az összes webhelyen** lehetőséget. | Chrome 실제 메뉴 이름은 'Az összes webhelyen'(Chromium hu.xtb 확인) (원칙 9) |
| faq.a10Note | …**Minden webhelyen** értékre… | …**Az összes webhelyen** értékre… | 위와 같음 (원칙 9) |
| faq.contactTitle | Még mindig segítség kell? | További segítségre van szükséged? | 직역 어순이라 어색함. 자연스러운 안내 문구로 (원칙 1) |

## 앱(교차 참조 수정)

| 키 | 수정 전 | 수정 후 | 문제 |
|---|---|---|---|
| pairPhoneLimit | …kattints a „Reset” gombra a számítógépen, a Zappit bővítményben. | …a számítógépen nyisd meg a Zappit bővítmény „Beállítások” menüjét, és kattints a „Visszaállítás” gombra. | 확장이 헝가리어로 번역되어 'Reset' 버튼이 더는 없음. 확장 라벨과 위치(Beállítások)를 그대로 씀 (원칙 9, 6) |
| obAnimScanCode | Olvasd be ezt a kódot a telefonodon a Zappit alkalmazással. | Olvasd be ezt a kódot a telefonodon lévő Zappit alkalmazással. | 온보딩 애니메이션이 그리는 확장 팝업 문구(connectPhoneBody)와 한 단어 달랐음 (원칙 9) |

`browsersDisconnectedBody`는 확장 라벨을 인용하지 않아 바꾸지 않았다. 나머지 obAnim 키(Csatlakoztasd a telefonod, Új kód {time} múlva, Távirányító csatlakoztatva, Telefonjaid)는 이미 확장과 같다.

## 확인이 필요한 부분

- **Reset = 'Visszaállítás':** Apple 헝가리어(iOS '…visszaállítása')와 같은 말이라 유지했다. 앱의 'Vásárlások visszaállítása'(구매 복원)와 같은 동사지만 위치가 달라 혼동은 적다고 봤다. 더 분명하게 하려면 'Alaphelyzetbe állítás'가 대안이다(앱·확장·웹을 함께 바꿔야 함).
- **'Kill the mouse.' 슬로건:** 웹을 앱의 'Búcsú az egértől.'로 맞췄다. 웹의 원래 'Tedd le az egeret.'를 선호하면 앱 obAnimTagline을 대신 바꿔야 한다.
- **Safari·Android 설정 이름(faq.a9·a9Note·a11Points):** 공식 헝가리어 원본을 확인하지 못해 그대로 두었다('Webhelyek szerkesztése…', 'Mindig engedélyezés minden webhelyen' 등). 실제 macOS/Android 헝가리어 화면에서 확인을 권한다. Chrome 문구는 Chromium 번역 파일로 확인했고, 'Webhely-hozzáférés'(chrome://extensions 상세)만 직접 확인하지 못했다.
- **GYIK 어미:** 앱의 'GYIK-ben'에 맞춰 웹을 '-ben/-hez'로 바꿨다. 'GYIK-ban'도 쓰이므로 다른 쪽으로 통일하려면 앱도 함께 고친다.
