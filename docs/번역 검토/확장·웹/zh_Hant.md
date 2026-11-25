# 번체 중국어(zh_Hant) 확장·웹 번역 검토 보고서

확장 팝업(zh_TW) 번역은 이미 자연스러운 대만식 표현이었고 앱 용어(連線, 連接, QR 碼, 中斷…的連線)와도 맞아 수정하지 않았다. 웹은 FAQ에 "Pro Preview"가 영어 그대로 남아 있고 "不需要信用卡" 직역이 있었으며, 데모·가이드가 앱과 다른 이름(A-B Loop, 重複播放, 重新播放, 在手機上繼續, 降低/提高音量)을 써서 앱 용어로 통일했다. 앱은 확장의 번역된 버튼 이름(「設定」→「重設」)과 온보딩 애니메이션 속 확장 팝업 문구를 확장 번역에 맞췄다.

## 확장 (`ext/zh_TW.json`)

수정 없음. 모든 문구를 원문·설명과 대조했고, 앱의 메뉴 이름(「設定」, 「中斷這支手機的連線」 패턴과 같은 「中斷這個瀏覽器的連線」, 「重設」)과 일치한다. `extDescription`은 17자.

## 웹 (`web/zh-Hant.json`)

| 키 | 수정 전 | 수정 후 | 문제 (한국어, 가이드 원칙 번호 포함) |
|---|---|---|---|
| landing.title | 放下滑鼠，手機就是遙控器。 | 告別滑鼠。 | 원문에 없는 구절을 덧붙임. 앱 온보딩 애니메이션의 같은 태그라인(obAnimTagline "告別滑鼠。")과 통일 (원칙 9 일관성) |
| landing.ctaDemo | 試用遙控器 | 試試遙控器 | "試用"은 스토어 무료 체험(免費試用) 용어라 결제 체험으로 읽힐 수 있음 (원칙 4) |
| landing.demo.hint3 | 設定 [ ] 循環 | 用 [ 和 ] 設定循環 | 단어 나열이라 무엇을 하라는지 불분명 (원칙 5, 6) |
| landing.snack.speed | {speed} 倍速 | 播放速度 {speed} | {speed}에 "1.5×"가 들어가면 "1.5× 倍速"로 중복됨 (원칙 6) |
| landing.snack.abOn | A-B Loop {a} – {b} | 區段循環 {a} – {b} | 앱은 A-B Loop를 "區段循環"으로 씀. 브랜드가 아닌 기능명을 영어로 둠 (원칙 1, 9) |
| landing.snack.abOff | A-B Loop 已關閉 | 區段循環已關閉 | 위와 같음 (원칙 9) |
| landing.snack.turnOffAbFirst | 請先關閉 A-B Loop | 請先關閉區段循環 | 앱 turnOffAbFirst와 동일하게 (원칙 9) |
| landing.snack.loopOn | 重複播放已開啟 | 循環已開啟 | 앱 loopOn은 "循環"; "重複播放"은 앱에서 재생목록 반복(repeat) 용어라 개념이 섞임 (원칙 9) |
| landing.snack.loopOff | 重複播放已關閉 | 循環已關閉 | 위와 같음 (원칙 9) |
| landing.snack.replay | 重新播放 | 從頭播放 | 앱 replay "從頭播放"과 통일 (원칙 9) |
| landing.a11y.replay | 重新播放 | 從頭播放 | 위와 같음 (원칙 9) |
| landing.a11y.loop | 重複播放 | 循環 | 앱 loop 용어와 통일 (원칙 9) |
| landing.a11y.volumeDown | 降低音量 | 調低音量 | 앱 volumeDown과 통일 (원칙 9) |
| landing.a11y.volumeUp | 提高音量 | 調高音量 | 앱 volumeUp과 통일 (원칙 9) |
| landing.why.oneTitle | 每種影片都有專屬遙控器 | 一支遙控器，搞定所有影片 | "모든 종류의 영상에 전용 리모컨이 있다"로 읽혀, 다른 사이트는 범용 리모컨이라는 본문과 모순 (원칙 6) |
| guide.step1Title | 兩端都安裝 Zappit | 在電腦和手機上都安裝 Zappit | "양쪽"이 무엇인지 모호. 대상을 분명히 (원칙 6) |
| guide.f2Body | …點一下「分享」（Share），… | …點一下「分享」，… | 대만 YouTube·TikTok 앱 버튼은 "分享"뿐이라 영어 병기는 불필요 (원칙 1) |
| guide.f3Body | …點一下遙控器上的「在手機上繼續」。… | …點一下遙控器上的「在手機上繼續觀看」。… | 앱 버튼 이름(playInApp)과 정확히 일치시킴 (원칙 9) |
| guide.f3Tip | 「在手機上繼續」是… | 「在手機上繼續觀看」是… | 위와 같음 (원칙 9) |
| guide.f4Title | 區段循環（A-B Loop） | 區段循環 | 앱에는 "A-B Loop" 표기가 없음. 앱 용어만 사용 (원칙 9) |
| guide.anim.opening | 正在用 Chrome 開啟… | 正在 Chrome 中開啟… | 앱 openingIn "正在 {browser} 中開啟…"과 통일 (원칙 9) |
| faq.q1 | 什麼是 Pro Preview？ | 什麼是 Pro 免費體驗？ | Pro preview를 영어로 남김. 앱 용어 "Pro 免費體驗"으로 (원칙 1, 4, 9) |
| faq.a1 | Pro Preview 讓你…免費使用所有 Pro 功能 7 天。不需要信用卡，結束後也不會收費。… | Pro 免費體驗讓你…7 天內免費使用所有 Pro 功能。完全免費，結束後也不會自動扣款。… | 용어 통일. "不需要信用卡"는 영어권 관용구 직역이라 앱 proPreviewStarted처럼 완전 무료·자동 결제 없음만 전함 (원칙 1, 4, 9) |

## 앱 (교차 참조 수정, `l10n/intl_zh_Hant.arb`)

| 키 | 수정 전 | 수정 후 | 문제 (한국어, 가이드 원칙 번호 포함) |
|---|---|---|---|
| pairPhoneLimit | …請在電腦上的 Zappit 擴充功能中點選「Reset」。 | …請在電腦上的 Zappit 擴充功能中開啟「設定」，點選「重設」。 | 확장이 번역되어 버튼 이름은 「重設」. 그 버튼이 「設定」 안에 있다는 것도 알려 찾기 쉽게 함 (원칙 6, 9) |
| obAnimConnectPhone | 連接你的手機 | 連接手機 | 애니메이션 속 확장 팝업 제목. 확장 connectPhoneTitle과 동일하게 (원칙 9) |
| obAnimScanCode | 用手機上的 Zappit App 掃描此代碼。 | 請用手機上的 Zappit App 掃描這個 QR 碼。 | 확장 connectPhoneBody와 동일하게 (원칙 9) |
| obAnimNewCode | {time} 後更新代碼 | {time} 後更新 QR 碼 | 확장 newCodeIn과 동일하게 (원칙 9) |

browsersDisconnectedBody는 확장 버튼 이름을 인용하지 않아 그대로 두었다.

## 확인이 필요한 사항

- **obAnim* 3개 키:** 사용자 안내 문구는 아니고 애니메이션에 그려진 확장 팝업이지만, 실제 팝업과 글자가 같아야 한다고 보고 교차 참조로 함께 고쳤다. 원치 않으면 되돌려 주세요.
- **landing.snack.speed:** 웹 소스 코드가 없어 {speed} 형식("1.5×"인지 "1.5"인지)을 확인하지 못했다. 숫자만 들어간다면 "{speed} 倍速"가 더 자연스럽다.
- **Safari·Chrome 화면 이름(faq.a8–a10, a13):** "瀏覽其他網站時", "在所有網站上一律允許", Chrome 경고 문구(Chrome zh-TW는 "您"을 쓸 수 있음)는 실제 macOS·Chrome 대만어 화면에서 직접 확인하지 못해 그대로 두었다. 출시 전 확인을 권장한다.
- **guide.title "使用指南" vs 앱 tutorial "使用教學":** 영어도 Guide/Tutorial로 달라 그대로 두었다. 앱 More의 같은 페이지 이름을 맞추고 싶다면 한쪽으로 통일이 필요하다.
