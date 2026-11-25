# 포르투갈어(pt) 확장·웹 번역 검토 보고서

pt_PT 확장 파일이 pt_BR과 글자 하나까지 똑같은 브라질 포르투갈어여서, 유럽 포르투갈어(telemóvel, Definições, Repor, ligação, a app, câmara, “A carregar…”)로 다시 썼다. 웹은 “Pro Preview”를 번역하지 않고 둔 FAQ를 앱 용어 “período grátis do Pro”로 바꾸고, 데모·가이드에서 인용한 앱 메뉴·문구(Timer para dormir, Configurações do controle, Tocar do início, Leia o código QR 등)를 앱 파일과 똑같이 맞췄다. 확장 pt_BR은 앱과 같은 동사 “ler”(QR 읽기)로 통일했고, 앱 `pairPhoneLimit`의 “Reset”을 확장 라벨 “Redefinir”로 바꿨다.

수정 수: 확장 pt_BR 5개, 확장 pt_PT 25개, 웹 31개, 앱 1개.

## 확장 (pt_BR)

| 키 | 수정 전 | 수정 후 | 문제 |
|---|---|---|---|
| disconnectBrowserBody | Este navegador será removido da sua lista de dispositivos conectados. Para conectar de novo, você precisará escanear o código QR outra vez. | Este navegador será removido da sua lista de dispositivos conectados. Para conectar de novo, você precisará ler o código QR. | “de novo … outra vez” 중복, “escanear”를 앱 용어 “ler”(QR 읽기)로 통일 (원칙 1, 체크리스트 9) |
| resetBody | Todos os celulares e navegadores conectados serão redefinidos, não só este. Para conectar de novo, você precisará escanear o código QR outra vez. | Todos os celulares e navegadores conectados serão redefinidos, não só este. Para conectar de novo, você precisará ler o código QR. | 위와 같음: 중복 제거, 앱과 같은 동사 “ler” (원칙 1, 9) |
| connectPhoneBody | Escaneie este código com o app Zappit no seu celular. | Leia este código com o app Zappit no celular. | 앱 온보딩 애니메이션이 그린 팝업 문구(obAnimScanCode “Leia este código…”)와 똑같이 맞춤 (체크리스트 9) |
| codeError | Não foi possível obter um código. Verifique sua conexão com a internet. | Não foi possível carregar o código. Verifique sua conexão com a internet. | “obter um código”는 직역 느낌. 실제로 일어나는 일(코드를 불러오지 못함)로 (원칙 1, 6) |
| noAppYet | Ainda não tem o app Zappit? Escaneie o código com a câmera do celular para baixá-lo. | Ainda não tem o app Zappit? Leia o código com a câmera do celular para baixá-lo. | “Escaneie”를 앱·웹과 같은 “Leia”로 통일 (체크리스트 9) |

## 확장 (pt_PT)

| 키 | 수정 전 | 수정 후 | 문제 |
|---|---|---|---|
| extDescription | Controle qualquer vídeo no navegador do computador pelo celular. | Controle qualquer vídeo no navegador do computador a partir do telemóvel. | 원본이 브라질식(“pelo celular”)이었음. 유럽 포르투갈어 “a partir do telemóvel” (로캘 규칙) |
| settings | Configurações | Definições | 브라질식 “Configurações” → 포르투갈 Chrome·Android 용어 “Definições” (원칙 1) |
| loading | Carregando… | A carregar… | 포르투갈어는 현재진행을 “a + 부정사”로 씀: “A carregar…” (원칙 5) |
| save | Salvar | Guardar | 브라질식 “Salvar” → 포르투갈 표준 “Guardar” (원칙 1) |
| connection | Conexão | Ligação | 포르투갈에서 연결은 “Ligação” (원칙 1) |
| disconnectBrowser | Desconectar este navegador | Desligar este navegador | 브라질식 “Desconectar” → 포르투갈 “Desligar” (원칙 1) |
| disconnectBrowserHint | Remove este navegador da sua lista de dispositivos conectados. | Remove este navegador da sua lista de dispositivos ligados. | “conectados” → “ligados” (원칙 1, 9) |
| reset | Redefinir | Repor | 브라질식 “Redefinir” → 포르투갈 “Repor” (원칙 1) |
| resetHint | Redefine todos os celulares e navegadores conectados, não só este. | Repõe todos os telemóveis e navegadores ligados, não apenas este. | “Repor”·“telemóveis”·“ligados”·“não apenas”로 유럽식 통일 (원칙 1, 9) |
| disconnectBrowserTitle | Desconectar este navegador? | Desligar este navegador? | “Desligar”로 통일 (원칙 9) |
| disconnectBrowserBody | Este navegador será removido da sua lista de dispositivos conectados. Para conectar de novo, você precisará escanear o código QR outra vez. | Este navegador será removido da sua lista de dispositivos ligados. Para voltar a ligá-lo, terá de ler novamente o código QR. | 브라질식 “você precisará escanear … de novo … outra vez” → 유럽식 경어 “terá de ler novamente” (원칙 1, 맞춤법·말투) |
| resetTitle | Redefinir todas as conexões? | Repor todas as ligações? | “Repor”·“ligações” (원칙 1, 9) |
| resetBody | Todos os celulares e navegadores conectados serão redefinidos, não só este. Para conectar de novo, você precisará escanear o código QR outra vez. | Todos os telemóveis e navegadores ligados serão repostos, não apenas este. Para voltar a ligar, terá de ler novamente o código QR. | “repostos”·“terá de ler novamente” 유럽식 (원칙 1) |
| disconnect | Desconectar | Desligar | “Desligar” (원칙 1, 9) |
| connectPhoneTitle | Conecte seu celular | Ligue o seu telemóvel a este navegador | “celular” → “telemóvel”. “Ligue o seu telemóvel”만 쓰면 ‘폰을 켜세요/전화하세요’로 읽혀 “a este navegador”로 대상 명확화 (원칙 1, 6) |
| connectPhoneBody | Escaneie este código com o app Zappit no seu celular. | Leia este código com a app Zappit no seu telemóvel. | “o app/celular” → “a app/telemóvel”(포르투갈에서 app은 여성형), “escanear” → “ler” (원칙 1) |
| codeError | Não foi possível obter um código. Verifique sua conexão com a internet. | Não foi possível carregar o código. Verifique a sua ligação à Internet. | “carregar o código”, 소유격 “a sua ligação à Internet” (원칙 1, 6) |
| tryAgain | Tentar de novo | Tentar novamente | “de novo” → 포르투갈 UI 관용 “novamente” (원칙 6 버튼 관용 표현) |
| noAppYet | Ainda não tem o app Zappit? Escaneie o código com a câmera do celular para baixá-lo. | Ainda não tem a app Zappit? Leia o código com a câmara do telemóvel para a obter. | “a app”, “câmara”(포르투갈 철자), “baixá-lo” → “obter” (원칙 1) |
| updateRequired | O app Zappit é mais novo que esta extensão. Atualize a extensão. | A app Zappit é mais recente do que esta extensão. Atualize a extensão. | “O app … mais novo” → “A app … mais recente do que” (원칙 1, 문법) |
| remoteConnected | Controle conectado | Comando ligado | 포르투갈에서 리모컨은 “comando”: “Comando ligado” (원칙 1) |
| waitingForConnection | Aguardando conexão… | A aguardar ligação… | “A aguardar ligação…” 유럽식 진행형 (원칙 1, 5) |
| yourPhones | Seus celulares | Os seus telemóveis | “Seus celulares” → 정관사를 붙이는 유럽식 “Os seus telemóveis” (원칙 1, 5) |
| phoneConnected | Conectado | Ligado | “Ligado” (원칙 1, 9) |
| connectNewPhone | Conectar um novo celular | Ligar um novo telemóvel | “Ligar um novo telemóvel” (원칙 1, 9) |

## 웹 (pt)

| 키 | 수정 전 | 수정 후 | 문제 |
|---|---|---|---|
| common.launch | Chega no início de dezembro de 2026 | Lançamento no início de dezembro de 2026 | 주어 없는 “Chega…”는 배지로 어색함. “Lançamento no início de dezembro de 2026” (원칙 6) |
| landing.demo.title | Aperte qualquer coisa. Veja a reação. | Aperte qualquer botão e veja o resultado na hora. | “Aperte qualquer coisa. Veja a reação.”는 직역이라 누구의 반응인지 모호. ‘아무 버튼이나 누르고 결과를 바로 보세요’ (원칙 1, 6) |
| landing.snack.loopStart | Início da repetição {time} | Início do loop {time} | 데모 알림을 앱 문구(loopStart “Início do loop”)와 일치 (체크리스트 9) |
| landing.snack.loopEnd | Fim da repetição {time} | Fim do loop {time} | 앱 loopEnd “Fim do loop”와 일치 (9) |
| landing.snack.startAfterEnd | O início precisa vir antes do fim | O ponto inicial precisa vir antes do ponto final | 앱 errorStartAfterEnd와 같은 문장으로 (9) |
| landing.snack.endBeforeStart | O fim precisa vir depois do início | O ponto final precisa vir depois do ponto inicial | 앱 errorEndBeforeStart와 같은 문장으로 (9) |
| landing.snack.replay | Assistir de novo | Tocar do início | “Assistir de novo”는 앱의 Watch again 버튼 이름. Replay는 앱 replay “Tocar do início” (9) |
| landing.snack.sleep | Timer · {min} min | Timer para dormir · {min} min | “Timer”만으로는 무슨 타이머인지 모름. 앱 메뉴 이름 “Timer para dormir” (원칙 6, 9) |
| landing.snack.sleepOff | Timer desativado | Timer para dormir desativado | 위와 같음 (9) |
| landing.a11y.sleep | Timer de desligamento | Timer para dormir | “Timer de desligamento” → 앱 이름 “Timer para dormir” (9) |
| landing.a11y.loopStart | Início da repetição | Início do loop | 앱 “Início do loop” (9) |
| landing.a11y.loopEnd | Fim da repetição | Fim do loop | 앱 “Fim do loop” (9) |
| landing.a11y.replay | Assistir de novo | Tocar do início | 앱 replay “Tocar do início” (9) |
| landing.why.oneBody | YouTube, Netflix, TikTok, Shorts e Reels têm cada um seu controle dedicado. Em qualquer outro site de vídeo, o Zappit funciona como controle universal. | YouTube, Netflix, TikTok, Shorts e Reels têm cada um o seu próprio controle exclusivo. Em qualquer outro site de vídeo, o Zappit funciona como um controle universal. | “controle dedicado”는 직역(앱 리뷰에서 “exclusivo”로 고친 표현). 앱과 같은 “controle exclusivo” (원칙 1, 9) |
| landing.why.twoTitle | Conecte com um scan | Conecte em segundos com um código QR | “com um scan”은 영어 차용어. ‘QR 코드로 몇 초 만에 연결’ (원칙 1) |
| landing.why.twoBody | Sem conta, sem senha, sem configurar rede. É só escanear o código QR no navegador e começar a controlar na hora. | Sem conta, sem senha, sem configurar rede. É só ler o código QR no navegador e começar a controlar na hora. | “escanear” → 앱 용어 “ler o código QR” (9) |
| landing.why.threeTitle | Do celular para o PC, e de volta | Do celular para o PC e de volta | “e” 앞 불필요한 쉼표 제거 (문장 부호) |
| guide.sub | Configure em dois passos e aprenda os truques que deixam o Zappit tão rápido. | Configure em duas etapas e aprenda os truques que deixam o Zappit tão rápido. | 앱(onboardingWelcomeBody “duas etapas”)과 같은 단어 “etapas” (9) |
| guide.step | Passo {n} | Etapa {n} | “Passo” → 앱 onboardingStepLabel의 “Etapa” (9) |
| guide.step2Title | Escaneie o código QR | Leia o código QR | 앱 onboarding2Title “Leia o código QR”와 일치 (9) |
| guide.step2Body | Clique no ícone do Zappit na barra de ferramentas do navegador e escaneie o código QR com o app. O controle se conecta sozinho e fica verde. | Clique no ícone do Zappit na barra de ferramentas do navegador e leia o código QR com o app. O controle se conecta sozinho e fica verde. | “escaneie” → “leia” (9) |
| guide.f1Tip | Mude a velocidade nas configurações do controle → Velocidade ao segurar. | Mude a velocidade em Configurações do controle → Velocidade ao segurar. | 인용한 메뉴 이름을 앱 remoteSettings “Configurações do controle” 그대로(대문자) 표기 (9) |
| guide.f2Body | Está assistindo no app do YouTube ou do TikTok? Toque em Compartilhar (Share), escolha Zappit, e o vídeo abre no navegador do computador. | Está assistindo no app do YouTube ou do TikTok? Toque em Compartilhar, escolha Zappit e o vídeo abre no navegador do computador. | “Compartilhar (Share)”의 영어 병기 불필요, “e” 앞 쉼표 제거 (원칙 1, 문장 부호) |
| guide.f3Body | Vai sair da mesa? Toque em Continuar no celular no controle. O navegador pausa e o vídeo abre no app do celular exatamente de onde você parou. | Vai sair da mesa? No controle, toque em Continuar no celular. O navegador pausa e o vídeo abre no app do celular exatamente de onde você parou. | “Continuar no celular no controle”는 “no”가 겹쳐 버튼 이름 경계가 흐림. “No controle, toque em Continuar no celular.” (원칙 5, 6) |
| guide.f4Tip | Defina quantas vezes repetir nas configurações do controle → Repetições do A-B Loop. | Defina quantas vezes o trecho se repete em Configurações do controle → Repetições do A-B Loop. | 메뉴 이름 “Configurações do controle → Repetições do A-B Loop” 정확히 인용, 무엇이 반복되는지 명확화 (원칙 6, 9) |
| guide.helpCta | Ir para o FAQ | Ir para as perguntas frequentes | 본문·앱 메뉴(“Perguntas frequentes”)와 같은 말로, “o FAQ” 혼용 제거 (9) |
| faq.q1 | O que é o Pro Preview? | O que é o período grátis do Pro? | “Pro Preview”를 번역하지 않고 둠. 앱 용어 “período grátis do Pro”로 (원칙 1, 4, 9) |
| faq.a1 | O Pro Preview permite usar todos os recursos Pro de graça por 7 dias, a partir da primeira vez que seu celular e seu navegador se conectam. Não precisa de cartão de crédito, e nada é cobrado quando termina. Ele é separado do teste grátis da assinatura paga: depois que o Pro Preview acabar, você ainda pode iniciar esse teste na tela de compra. | O período grátis do Pro permite usar todos os recursos Pro por 7 dias, a partir da primeira vez que seu celular e seu navegador se conectam. É totalmente grátis: nada é cobrado quando ele termina. Ele é diferente do teste grátis da assinatura paga: depois que o período grátis do Pro terminar, você ainda pode começar esse teste grátis na tela de compra. | Pro preview 용어 통일, “Não precisa de cartão de crédito” 관용구 대신 앱과 같이 ‘완전 무료, 끝나도 결제 없음’, 스토어 체험은 “teste grátis”로 구분 (원칙 1, 4, 9) |
| faq.a7 | Clique no ícone do Zappit no navegador, abra **Configurações** e clique no botão vermelho **Redefinir**. Todos os celulares e navegadores conectados são redefinidos, e você pode conectar de novo escaneando um novo código QR. | Clique no ícone do Zappit no navegador, abra **Configurações** e clique no botão vermelho **Redefinir**. Todos os celulares e navegadores conectados são redefinidos, e você pode conectar de novo lendo um novo código QR. | “escaneando” → “lendo” (9). 확장 라벨 “Configurações”·“Redefinir”는 확장 pt_BR과 일치 확인 |
| get.getSafari | Baixar para Safari no Mac | Baixar para o Safari no Mac | 정관사 “o Safari” 추가 (문법) |
| get.nextBody | Clique no ícone do Zappit na barra do navegador e escaneie o código QR com o app. | Clique no ícone do Zappit na barra de ferramentas do navegador e leia o código QR com o app. | “barra do navegador” → 앱·가이드와 같은 “barra de ferramentas do navegador”, “escaneie” → “leia” (9) |

## 앱 (교차 참조 수정)

| 키 | 수정 전 | 수정 후 | 문제 |
|---|---|---|---|
| pairPhoneLimit | Este computador já tem 3 celulares conectados. Abra o Zappit em um dos seus outros celulares conectados e toque em “Desconectar este celular” em “Mais”. Se não tiver acesso a nenhum deles, clique em “Reset” na extensão do Zappit no computador. | Este computador já tem 3 celulares conectados. Abra o Zappit em um dos seus outros celulares conectados e toque em “Desconectar este celular” em “Mais”. Se não tiver acesso a nenhum deles, clique em “Redefinir” na extensão do Zappit no computador. | 확장이 번역되었으므로 영어 라벨 “Reset”을 확장 pt_BR 라벨 “Redefinir”로 (체크리스트 9). 웹 FAQ a7도 “Redefinir” |

교차 참조 확인: 앱의 obAnimConnectPhone·obAnimScanCode·obAnimNewCode·obAnimRemoteConnected·obAnimYourPhones는 확장 pt_BR(connectPhoneTitle·connectPhoneBody·newCodeIn·remoteConnected·yourPhones)과 모두 같다. 웹 FAQ a7의 **Configurações**·**Redefinir**는 확장 pt_BR, q5 “Nenhum navegador encontrado”·Abas·Continuar no celular·Velocidade ao segurar·Repetições do A-B Loop·Mais → Fale conosco는 앱 파일과 같다.

## 결정이 필요한 점

- **pt_PT의 connect = “ligar”:** 포르투갈 UI 표준(“Ligado”, “ligação à Internet”)을 따랐지만 “ligar o telemóvel”은 ‘폰을 켜다/전화하다’로도 읽힌다. 제목은 “Ligue o seu telemóvel a este navegador”로 대상을 붙였고, 버튼 “Ligar um novo telemóvel”과 상태 “Comando ligado”는 맥락상 통한다고 보고 그대로 두었다. “conectar/desconectar”(포르투갈에서도 쓰지만 덜 자연스러움)를 원하면 바꿔야 한다.
- **pt_PT의 browser = “navegador”:** Google·Chrome 포르투갈어판 용어를 따랐다. 포르투갈에서는 구어로 “browser”도 흔하다.
- **앱·웹은 pt-BR 하나:** 포르투갈 사용자는 앱·웹에서 브라질 용어(celular, Configurações)를 보고 확장에서는 유럽 용어(telemóvel, Definições)를 본다. 웹·앱이 확장의 Settings·Reset을 pt-BR 라벨(“Configurações”·“Redefinir”)로 인용하므로, pt_PT 사용자에게는 “Definições”·“Repor”와 어긋난다. pt-PT 앱·웹 로캘을 따로 둘지 결정이 필요하다.
- **Safari·Chrome 화면 인용(FAQ a9·a10):** “Editar Sites…”, “Ao visitar outros sites”, “Pode ler e alterar dados do site”는 실제 macOS·Chrome pt-BR 화면에서 확인하지 못해 그대로 두었다. 출시 전 실제 화면과 대조가 필요하다.
