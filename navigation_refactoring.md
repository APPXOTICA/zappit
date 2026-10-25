# YouTube Navigation Refactoring


## 목표 : 현재 앱의 YT Controller 화면에서 최상단에 Home 하나만 있는데, 여기에 유튜브 웹의 좌측 사이드메뉴를 추가하여 Navigation을 개편한다. 첨부한 yt_side_menu 이미지 참고.


## 방향 : 
- 유튜브 좌측의 side menu 를 flatten 해서, 앱 상단에 메인 메뉴로 배치하여 유저가 바로 접근 할 수 있도록 한다.
- 기존 상단 메뉴 : Home
- 신규 상단 메뉴 : Home, Shorts, Subscription, You, Explore
- 모든 메뉴 공통으로 상단 아이콘, 그 밑에 작게 메뉴 이름 텍스트 배치


## 메뉴별 구현 : 

### Home
- icon : 기존 동일
- 동작 : 기존 동일

### Shorts
- icon : assets/images/shorts.png
- 동작 : Shorts home(https://www.youtube.com/shorts/some_shorts_id)으로 이동, 곧바로 하나의 쇼츠가 재생된다. 

### Subscription
- icon : Icons.notifications
- 동작 : https://www.youtube.com/feed/subscriptions 으로 이동, 네비게이션 콘트롤로 전환

### You
- icon : Icons.person
- 동작 : 하단에서 Sheet가 열리며 메뉴 선택 유도
- Sheet menu : History, Playlists, Watch Later, Liked Vides, Downloads
- 각 sheet menu는 좌측 아이콘, 우측 텍스트로 배열, 아이콘 이미지는 assets/images에 넣어놓았음
- 각각 탭했을 때, 
https://www.youtube.com/feed/history
https://www.youtube.com/feed/playlists
https://www.youtube.com/playlist?list=WL
https://www.youtube.com/playlist?list=LL
https://www.youtube.com/feed/downloads
이렇게 이동하면 됨. 그 후 영상 재생까지 네비게이션 콘트롤로 전환

### Explore
- icon : Icons.search
- 동작 : 하단에서 Sheet가 열리며 메뉴 선택 유도
- Sheet menu : Music, Hype, Live, Gaming, Courses, Podcasts, Memberships
- 각 sheet menu는 좌측 아이콘, 우측 텍스트로 배열, 아이콘 이미지는 assets/images에 넣어놓았음
- 각각 탭했을 때, 
https://www.youtube.com/channel/UC-9-kyTW8ZkZNDHQJ6FgpwQ
https://www.youtube.com/feed/hype
https://www.youtube.com/channel/UC4R8DWoMoI7CAwX8_LjQHig
https://www.youtube.com/gaming
https://www.youtube.com/feed/courses_destination
https://www.youtube.com/podcasts
https://www.youtube.com/channel_memberships
이렇게 이동하면 됨. 그 후 영상 재생까지 네비게이션 콘트롤로 전환
- memberships 페이지는 구독 권유 카드와 영상 카드를 구분해서 영상만 선택되게 해야 함


## 기타 : 
- 직접 웹을 열어서 적절한 네비게이션 구현하고, 모든 메뉴 영상 재생시까지 네비게이션 유지 및 정상작동 확인할 것
- Playlist가 탐지되는 항목(You-playlist, explore-music, explore-courses)들은 Netflix 에피소드 버튼처럼 Playlist 버튼 만들어서 플레이리스트중에 하나를 선택할 수 있는 Sheet를 띄운다.
- Playlist 버튼(playlists.png) 우측에는 다음 영상 버튼을 만들어서 탭하면 Playlist의 다음 영상 재생
- Netflix와의 차이점은, NextEpisode 우측에 Shuffle Icon button, Loop icon button 만들어서, On/Off 할 수 있게 한다.
- shuffle on : Icons.shuffle_on, off : Icons.shuffle
- loop on : Icons.repeat_on, off : Icons.repeat
- shuffle, loop 버튼을 눌러서 상태가 전환될 때마다, 스낵바를 띄워서 "현재 플레이리스트를 반복합니다" 같은 메시지를 보여준다.
- Netflix는 Episodes, Next Episodes 버튼 두개를 나란이 배치했는데, YT Playlist는 일단 재생속도 조절 같이 rounded box를 full width로 만들고, 그 안에 Icon Button으로 네 개의 버튼을 텍스트 없이 나란히 배치한다(Playlists, Next Video, Suffle, Loop)
- 현재 네비게이션 콘트롤 화면에는 상단에 홈 버튼이 없는데, 썸네일 위쪽 빈공간 상단에 새로만든 버튼 포함해서 5개 버튼 항상 표시한다. 네비게이션 중 언제든 처음으로 돌아갈 수 있게.


