앱에 사용된 아이콘들은 디자인 시안과 동일한 아이콘을 사용한다. 단, 아래 "지정 아이콘" 항목들은 지정된 아이콘을 사용하라. 시안의 모양은 `docs/design/screens/*.png`, 마크업은 `docs/design/boards/*.dc.html`에서 확인한다.

이미지 파일은 모두 프로젝트에 들어 있다. 경로는 `assets/images/...`로 쓴다(`pubspec.yaml`에 `assets/images/` 등록됨). 이미지 아이콘은 흰색 단색이고 256×256 정사각형이다. 24dp로 줄여 쓰고, 터치 영역은 48dp 이상으로 둔다.

# 지정 아이콘

## 자막 보이기/숨기기 버튼
- 켜짐: `Icons.closed_caption`
- 꺼짐: `Icons.closed_caption_off_outlined`
- 자막이 없는 영상: 꺼짐 아이콘을 회색(disabled)으로 표시한다.

## 앱에서 재생 버튼 (브라우저에서 재생 중인 영상을 폰 앱에서 재생)
- `assets/images/import.svg`
- 헤더 우측 상단 두 버튼 중 왼쪽. 사이트별 앱(YouTube, Netflix, TikTok, Instagram)이 달라도 같은 아이콘이다.

## 브라우저로 링크 보내기 버튼 (폰 → 브라우저)
- `assets/images/export.svg`
- 헤더 우측 상단 두 버튼 중 오른쪽.

## Voice Boost 버튼
- 켜짐: `Icons.record_voice_over_rounded`
- 꺼짐: `Icons.record_voice_over_outlined`
- 사용 불가(disabled): `Icons.record_voice_over_outlined`를 회색으로 표시한다.

## 현재 영상 무한 반복 버튼
- 켜짐: `Icons.repeat_one_on_rounded`
- 꺼짐: `Icons.repeat_one`
- 회색(disabled) 상태가 없다.

## Sleep Timer 버튼
- `Icons.snooze`

## Replay 버튼
- `Icons.refresh`

## Chat 버튼
- 켜짐: `Icons.chat_rounded`
- 꺼짐: `Icons.chat_outlined`

## Theater mode 버튼
- 켜짐: `assets/images/theater_mode_on.png`
- 꺼짐: `assets/images/theater_mode_off.png`

## Seek 버튼
이미지 파일의 화살표 방향이 파일명과 반대로 저장되어 있다(`backward_*.png`는 화살표가 오른쪽, `forward_*.png`는 왼쪽). 시안은 눈에 보이는 방향을 기준으로 뒤로 가기에 `forward_*.png`, 앞으로 가기에 `backward_*.png`를 썼다. 파일명을 방향에 맞게 바꾸면 이 표의 두 열도 같은 이름으로 맞춘다. 시안의 기본값은 10초다.

| 시간 | 뒤로 가기 버튼 | 앞으로 가기 버튼 |
|---|---|---|
| 3초 | `assets/images/forward_3s.png` | `assets/images/backward_3s.png` |
| 5초 | `assets/images/forward_5s.png` | `assets/images/backward_5s.png` |
| 10초 | `assets/images/forward_10s.png` | `assets/images/backward_10s.png` |
| 15초 | `assets/images/forward_15s.png` | `assets/images/backward_15s.png` |
| 20초 | `assets/images/forward_20s.png` | `assets/images/backward_20s.png` |
| 30초 | `assets/images/forward_30s.png` | `assets/images/backward_30s.png` |

비활성 상태(광고 재생 중)는 이미지의 투명도를 약 43%로 낮춘다.

# 그 외 시안에서 사용한 아이콘

위 지정 목록에 없는 아이콘은 시안과 같은 모양으로 쓴다. 모두 24×24 격자에 맞춘 단색(채움) 아이콘이며, 모양은 시안 마크업의 SVG 또는 DS Icon 이름으로 확인한다. Flutter에서는 같은 모양의 `Icons.*_rounded`를 쓰고, 같은 모양이 없으면 시안의 SVG를 `assets/images/`에 추가해서 쓴다.

| 용도 | 시안의 아이콘 | 사용 화면 |
|---|---|---|
| 하단 탭: Remote(선택 / 비선택) | DS `remote` / `remote-outline` | 모든 앱 화면 |
| 하단 탭: Tabs, More | 직접 그린 SVG (탭 겹침, 점 세 개) | 모든 앱 화면 |
| 사이트별 리모콘 설정 | 직접 그린 슬라이더 SVG | 헤더 좌측 (YouTube, Netflix, Shorts, TikTok, Reels, Web) |
| 연결 상태 펼침 | DS `down` | 헤더 아래 연결 상태 버튼 |
| 홈 | DS `home` | YouTube·Netflix 홈 버튼 |
| 챕터 목록 | 목록 SVG (`format_list_bulleted` 모양) | YouTube 챕터 블록 |
| 이전 챕터 / 다음 챕터 | `skip_previous` 모양 SVG / DS `skip-next` | YouTube 챕터 블록 |
| 자막 크기 줄이기 / 키우기 | DS `text-smaller` / `text-larger` | 자막 행 |
| 자막 언어 | `translate` 모양 SVG | 자막 행 |
| 재생속도 | 아이콘 없이 텍스트 선택(0.5×…3×) | 속도 블록 |
| 볼륨 | DS `volume` (음소거 시 `mute`) | 볼륨 블록 |
| 볼륨 크게 / 작게 | DS `add` / `remove` | 볼륨 블록 |
| 구간 반복 시작 / 끝 | 직접 그린 대괄호 `[` `]` SVG | 재생 진행 막대 양옆 |
| 재생 / 일시정지 | DS `play` / `pause` | 재생 컨트롤 |
| 전체 화면 / 전체 화면 해제 | DS `fullscreen` / `fullscreen-exit` | 재생 컨트롤 |
| 다음 영상 이동 (숏폼) | DS `up` / `down` | Shorts, TikTok, Reels |
| 방향 패드 | DS `up`, `down`, `left`, `right` | 홈 화면 탐색 |
| 광고·인트로 건너뛰기 | DS `skip-next` (글자 오른쪽) | Skip Ad, Skip Intro 버튼 |
| 닫기 / 뒤로 | DS `close`, `left` | 시트·화면 상단 |
| 확인 표시 | DS `check` | Zappit Pro 기능 목록 |
| Zappit Pro 안내 | DS `link`, `paste` 등 | 링크 붙여넣기 |
| 재생 없음 | DS `playing` | Nothing 화면 |
| 에피소드 목록 | 비디오 라이브러리 모양 SVG | Netflix 리모콘 |
| 브라우저 선택 | 모니터 모양 SVG | 브라우저 미선택 화면 |
| 연결 끊김 | 링크 끊김 모양 SVG | Not connected 화면 |
| 경고 | 경고 삼각형 SVG | 상단 스낵바 |
| Voice Control 도움말 | 물음표 원 SVG | Voice Control 안내 |
