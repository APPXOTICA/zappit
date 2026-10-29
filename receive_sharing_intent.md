# receive_sharing_intent 구현

### 목표: 
https://pub.dev/packages/receive_sharing_intent 
위 패키지를 이용해 모바일 네이티브 앱에서 보던 영상을 웹에서 바로 볼 수 있게 하는 기능을 완성한다. 예) YouTube 모바일 앱에서 영상 공유를 누르면 Zappit이 뜨고, Zappit을 선택하면 
Zappit에서 (익스텐션과 연결 후)이 URL을 익스텐션에 보내서 익스텐션이 곧바로 열 수 있도록 함.


### 현재까지 완료된 작업 (네이티브 설정)
iOS 설정:

ShareExtension 타깃(tv.zappit.ShareExtension) 및 유저 노출 Display Name(Zappit) 설정 완료

Runner와 ShareExtension 양쪽에 App Groups(group.tv.zappit) 연동 및 entitlements 반영 완료

ShareExtension/Info.plist: URL 및 Plain Text 수신 Activation Rule 등록 완료

Runner/Info.plist: ZappitUrlScheme 커스텀 URL 스킴 등록 완료

ShareViewController.swift: 공유된 데이터를 UserDefaults(suiteName: "group.tv.zappit")에 담고 ZappitUrlScheme://를 실행해 앱을 전면으로 호출하는 경량 네이티브 코드 적용 완료

Android 설정:

AndroidManifest.xml에 receive_sharing_intent 가이드에 맞춘 텍스트/URL 수신용 <intent-filter> (SEND / SEND_MULTIPLE 등) 설정 완료

### Flutter / Dart 작업 요청 사항

ReceiveSharingIntent 리스너 및 초기화 구현

Warm Start (앱이 켜져 있거나 백그라운드 상태일 때): ReceiveSharingIntent.instance.getMediaStream()을 구독하여 공유 이벤트 실시간 수신

Cold Start (앱이 완전히 꺼져 있을 때 공유로 실행된 경우): ReceiveSharingIntent.instance.getInitialMedia()를 호출해 인입된 공유 데이터 획득

데이터 처리 완료 후 중복 인입 방지를 위해 ReceiveSharingIntent.instance.reset() 호출 처리

URL 파싱 및 정제 유틸리티 추가

유튜브 앱, 틱톡, 릴스 등에서 공유 시 텍스트 전체(예: "이 영상 봐봐: [https://youtu.be/](https://youtu.be/)...")가 들어오는 경우가 많으므로, 정규식을 사용해 문자열 안에서 실제 웹 링크(http:// 또는 https://)만 깔끔하게 추출하는 파싱 로직 포함

브라우저 전송 연동 (Ably Payload)

파싱된 URL이 확인되면, 현재 연결된 Mac의 Ably 세션 채널로 해당 URL을 즉시 오픈하라는 명령 페이로드 전송

엡 화면에는 사용자에게 "Mac으로 전송 중..." 혹은 완료 토스트/스낵바 피드백 노출



### 기타
위 <Flutter / Dart 작업 요청 사항> 은 Gemini가 작성한 것으로 얼마든지 수정 가능. 프로젝트 상태를 바탕으로 최선의 방법으로 개발할 것

receive_sharing_intent가 정상적으로 작동하는 picktok 프로젝트 폴더를 추가해놓았으니, 필요시 참고할 것.
