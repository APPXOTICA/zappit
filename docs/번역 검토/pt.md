# 포르투갈어(브라질, pt) 번역 검토 보고서

가장 큰 문제는 Pro preview를 직역한 “prévia do Pro”였다. 브라질 앱에서 쓰지 않는 말이라 스토어 체험(“teste grátis”)과 구분되는 “período grátis do Pro”(Pro 무료 기간)로 통일했다. 그 밖에 결제 문구의 “loja / conta da loja”(스토어) 같은 내부 용어, “Sem cartão de crédito” 관용구, 감사 인사, 문법이 틀린 결제 알림(“cobrado em {price}”), 1일·1주일 때 복수형이 틀리는 체험 문구, 폰 앱에서 모호한 “esta página”, “esse celular” 같은 대상 표현을 고쳤다. 총 39개 키를 수정했다.

| 키 | 수정 전 | 수정 후 | 문제 | menu-name |
|---|---|---|---|---|
| errorNotSupported | Este site não permite isso | Este site não oferece esse recurso | “não permite”는 ‘금지한다’로 읽힘. 사이트에 그 기능이 없다는 뜻으로 수정 (원칙 6) | no |
| errorDuringAd | Não é possível durante um anúncio | Não é possível fazer isso durante um anúncio | 목적어 없는 불완전한 문장. “fazer isso”를 넣어 문법 수정 (원칙 6) | no |
| proFeatureDedicatedControllers | Desbloqueie controles dedicados | Desbloqueie controles exclusivos para sites específicos | “controles dedicados”는 직역 표현이고 범위가 모호함. ‘특정 사이트 전용 리모컨’으로 명확화 (원칙 1, 6) | no |
| proFeatureAllSpeeds | Todas as velocidades de reprodução | Todas as velocidades de reprodução liberadas | 명사 나열만으로는 혜택이 안 보임. “liberadas(잠금 해제됨)”를 붙여 할 수 있게 되는 일을 표시 (원칙 6) | no |
| proFeatureFullLoop | Repetir vídeo inteiro sem limite | Repetição ilimitada do vídeo inteiro | 다른 항목과 형태가 달랐음(동사형+“sem limite”). “ilimitada”를 앞쪽에 두는 명사구로 통일 (원칙 5, 9) | no |
| proFeatureAbLoop | A-B Loop sem limite | A-B Loop ilimitado | “sem limite”를 Voice Boost 항목과 같은 “ilimitado”로 통일 (원칙 5, 체크리스트 9) | no |
| storeUnavailable | A loja não está disponível agora. Tente mais tarde. | Não é possível fazer compras agora. Tente de novo mais tarde. | “A loja(스토어)”는 내부 용어. 사용자가 겪는 결과(지금은 구매할 수 없음)로 수정, “Tente de novo”로 파일 전체 표현 통일 (원칙 2) | no |
| welcomeToPro | Boas-vindas ao {proName} | {proName} ativado! | 구매 직후 인사 “Boas-vindas”보다 결과를 알리는 “ativado!”가 자연스러움 (원칙 3) | no |
| freeTrialDays | Teste grátis: {count} dias | {count, plural, one{{count} dia de teste grátis} other{{count} dias de teste grátis}} | “Teste grátis: N dias” 콜론 나열은 어색하고 1일일 때 복수형이 틀림. 자연스러운 어순 + ICU plural(one/other) (원칙 5, 공통 규칙 복수형) | no |
| freeTrialWeeks | Teste grátis: {count} sem. | {count, plural, one{{count} semana de teste grátis} other{{count} semanas de teste grátis}} | “{count} sem.” 약어는 알아보기 어렵고, 실제 체험이 1주라 “1 sem.”으로 보임. “1 semana de teste grátis”로 수정 + plural (원칙 1, 6) | no |
| freeTrialMonths | Teste grátis: {count} meses | {count, plural, one{{count} mês de teste grátis} other{{count} meses de teste grátis}} | 위와 같은 이유로 어순·복수형 수정 (원칙 5) | no |
| freeTrialYears | Teste grátis: {count} anos | {count, plural, one{{count} ano de teste grátis} other{{count} anos de teste grátis}} | 위와 같은 이유로 어순·복수형 수정 (원칙 5) | no |
| proPreviewEndedSubtitle | Sua prévia do Pro terminou. Mantenha todos os recursos Pro com o {proName}. | Seu período grátis do Pro terminou. Assine o {proName} para continuar com todos os recursos Pro. | “prévia do Pro”는 콘텐츠 미리보기를 뜻하는 직역어로 브라질 앱에서 쓰지 않음. Pro preview 용어를 “período grátis do Pro”(Pro 무료 기간)로 통일, 할 일(구독)을 앞에 둠 (원칙 1, 4) | no |
| proPreviewActiveBanner | Sua prévia grátis do Pro está ativa até {date}. Assine antes que ela termine para continuar com todos os recursos Pro sem interrupção. | Seu período grátis do Pro vai até {date}. Assine antes do fim para continuar com todos os recursos Pro sem interrupção. | “prévia grátis do Pro” → “período grátis do Pro”로 용어 통일 (원칙 1, 4) | no |
| trialTermsDays | Começa com {count} dias de teste grátis, depois {price}/ano. | Começa com {count, plural, one{{count} dia} other{{count} dias}} de teste grátis, depois {price}/ano. | {count}가 1일 때 복수형이 틀림. ICU plural 적용 (공통 규칙 복수형) | no |
| trialTermsMonths | Começa com {count} meses de teste grátis, depois {price}/ano. | Começa com {count, plural, one{{count} mês} other{{count} meses}} de teste grátis, depois {price}/ano. | 위와 동일 (공통 규칙 복수형) | no |
| trialTermsYears | Começa com {count} anos de teste grátis, depois {price}/ano. | Começa com {count, plural, one{{count} ano} other{{count} anos}} de teste grátis, depois {price}/ano. | 위와 동일 (공통 규칙 복수형) | no |
| cancelAnytime | Cancele quando quiser na sua conta da loja. | Cancele quando quiser nas configurações de assinatura do celular. | “conta da loja(스토어 계정)”는 사용자가 이해하기 어려운 말. ‘휴대폰의 구독 설정에서 언제든지 해지’로 수정 (원칙 2) | no |
| proPreviewStarted | Aproveite todos os recursos do Zappit Pro de graça por {days} dias. Sem cartão de crédito e sem cobrança automática. | Aproveite todos os recursos do Zappit Pro por {days} dias. É totalmente grátis, sem cobrança automática. | “Sem cartão de crédito” 관용구 직역 제거, 완전 무료·자동 결제 없음만 간결하게. 중복이던 “de graça”도 정리 (원칙 4) | no |
| proPreviewEndsTomorrow | A prévia do Pro termina amanhã | Seu período grátis do Pro termina amanhã | “prévia do Pro” → “período grátis do Pro” (원칙 1, 4) | no |
| proPreviewEndedTitle | Sua prévia do Pro terminou | Seu período grátis do Pro terminou | 위와 동일 (원칙 1, 4) | no |
| proPreviewEndedMessage | Obrigado por experimentar o Zappit Pro! Assine para continuar aproveitando todos os recursos Pro sem interrupção. | Gostou do Zappit Pro? Assine para continuar aproveitando todos os recursos Pro sem interrupção. | “Obrigado por experimentar”(감사 인사, 남성형)를 “Gostou do Zappit Pro?”(어떠셨나요?)로 바꿔 무료 체험이었음을 자연스럽게 전함 (원칙 3, 4) | no |
| purchaseNotActivatedMessage | O pagamento foi feito, mas o Pro ainda não está ativo. Tente Restaurar compras. | O pagamento foi feito, mas o Pro ainda não está ativo. Toque em “Restaurar compras”. | “Tente Restaurar compras”는 버튼 이름이 문장에 묻혀 어색함. ““Restaurar compras”를 누르세요”로 버튼을 명확히 (원칙 6) | no |
| alreadySubscribed | Você já tem esta assinatura. Tente Restaurar compras. | Você já tem esta assinatura. Toque em “Restaurar compras”. | 위와 같은 이유, 표현 통일 (원칙 6, 체크리스트 9) | no |
| paymentPendingMessage | O Pro é ativado assim que a loja confirmar o pagamento. | O Pro será ativado assim que o pagamento for confirmado. | “a loja(스토어)” 주어 제거, ‘결제가 확인되면 바로 Pro가 켜짐’ (원칙 2) | no |
| nothingToRestoreMessage | Nenhuma assinatura ativa do Zappit Pro foi encontrada nesta conta da loja. | Nenhuma assinatura ativa do Zappit Pro foi encontrada nesta conta. | “conta da loja” → “nesta conta”(이 계정) (원칙 2) | no |
| storeProblem | A loja teve um problema. Tente de novo daqui a pouco. | Ocorreu um problema na compra. Tente de novo daqui a pouco. | “A loja teve um problema” → ‘구매 중 문제가 발생함’ (원칙 2) | no |
| trialReminderTitle | Lembrete do teste | Lembrete do teste grátis | “Lembrete do teste”는 무슨 체험인지 모호. 채널 이름과 같게 “teste grátis”로 (원칙 6, 9) | no |
| trialReminderBody | Seu teste grátis termina amanhã. Você será cobrado em {price} no dia {date}. Se não quiser continuar, cancele a assinatura antes disso. | Seu teste grátis termina amanhã. A cobrança de {price} será feita em {date}. Se não quiser continuar, cancele a assinatura antes disso. | “Você será cobrado em {price}”는 문법 오류(“cobrado em”은 ‘~에서 청구’)이고 남성형. ‘{date}에 {price}가 결제됩니다’로 수정 (원칙 4, 맞춤법) | no |
| extensionUpdatedReload | A extensão do Zappit foi atualizada. Recarregue esta página para continuar usando todos os controles. | A extensão do Zappit foi atualizada. Recarregue a página no navegador do computador para continuar usando todos os controles. | 폰 앱에 보이는 문구라 “esta página(이 페이지)”가 어디인지 모호. ‘컴퓨터 브라우저에서 페이지를 새로고침’으로 명확화 (원칙 6) | no |
| sleepTimer | Timer | Timer para dormir | “Timer”만으로는 무슨 타이머인지 모름. 브라질 앱에서 쓰는 “Timer para dormir”(취침 타이머)로 (원칙 1, 6) | yes |
| sleepTimerLabel | Timer | Timer para dormir | 위와 동일, 접근성 라벨 (원칙 6, 9) | no |
| playVideoFirst | Toque um vídeo no navegador primeiro | Reproduza um vídeo no navegador primeiro | “Toque um vídeo”는 ‘탭하다’와 ‘재생하다’ 둘 다로 읽힘. “Reproduza”로 수정 (원칙 6) | no |
| proPreviewUntil | Prévia do Pro até {date} | Período grátis do Pro até {date} | “Prévia do Pro” → “Período grátis do Pro” (원칙 1, 4) | no |
| cameraDenied | Permita o acesso à câmera nos Ajustes para ler o código. | Permita o acesso à câmera nas configurações do celular para ler o código. | “Ajustes”는 iOS 설정 앱 이름이라 Android에서는 맞지 않음. ‘휴대폰 설정’으로 (원칙 6) | no |
| pairPhoneLimit | Este computador já tem 3 celulares conectados. Abra o Zappit em um dos seus outros celulares conectados e toque em “Desconectar este celular” em “Mais”. Se você não tem mais esse celular, use “Reset” na extensão do Zappit no seu computador. | Este computador já tem 3 celulares conectados. Abra o Zappit em um dos seus outros celulares conectados e toque em “Desconectar este celular” em “Mais”. Se não tiver acesso a nenhum deles, clique em “Reset” na extensão do Zappit no computador. | “esse celular(그 폰)”가 모호. ‘그 폰들 중 어느 것에도 접근할 수 없다면’으로, 컴퓨터 동작이므로 “use” → “clique em” (원칙 6). ‘Reset’은 확장 영어 라벨 유지 | no |
| disconnectPhoneMessage | Este celular vai deixar de controlar o computador. Para usá-lo de novo, leia o código QR no computador. | Este celular vai deixar de controlar o computador. Para conectar de novo, leia o código QR no computador. | “Para usá-lo de novo(다시 쓰려면)” → “Para conectar de novo(다시 연결하려면)” (원칙 6) | no |
| browsersDisconnectedBody | Outro celular se conectou a ele. Para usá-lo de novo, leia o código QR naquele computador. | Outro celular se conectou no lugar deste. Para conectar de novo, leia o código QR no computador. | “a ele”는 브라우저가 여러 개일 때 틀리고 “usá-lo”도 모호. ‘다른 폰이 이 폰 대신 연결됨, 다시 연결하려면 QR 스캔’으로 (원칙 6) | no |
| onboarding2AnimLabel | Clique no ícone do Zappit no navegador e leitura do código QR com o celular | Clicando no ícone do Zappit no navegador e lendo o código QR com o celular | 명령형(Clique)과 명사(leitura)가 섞인 문장. 1단계 라벨처럼 현재분사형으로 통일 (원칙 5, 9) | no |

## 확인이 필요한 점

- **Pro preview 용어:** “período grátis do Pro”(Pro 무료 기간)로 정했다. 스토어 체험은 “teste grátis”(무료 체험)로 남겨, 자동 결제가 되는 쪽만 “teste”라는 단어를 쓴다. 웹 번역에 “prévia do Pro”가 있다면 함께 바꿔야 한다.
- **cancelAnytime:** 스토어 이름을 쓰지 않으려고 “nas configurações de assinatura do celular”(휴대폰의 구독 설정)로 썼다. iOS·Android 모두에 맞지만, 플랫폼별로 “App Store” / “Google Play”를 보여 주고 싶다면 키를 나눠야 한다.
- **복수형(ICU plural):** `freeTrialDays/Weeks/Months/Years`, `trialTerms*`에 plural(one/other)을 넣었다. 영어 원문에는 plural이 없지만 `count`가 `int`라 `intl_utils`에서 동작한다. `dart run intl_utils:generate` 후 빌드에서 한 번 확인이 필요하다.
- **sleepTimer(menu-name: yes):** “Timer” → “Timer para dormir”. 웹 가이드가 이 이름을 인용한다면 같이 바꿔야 한다.
- **Voice Boost·A-B Loop의 “무제한” 위치:** 포르투갈어는 형용사가 명사 뒤에 오는 것이 자연스러워 “Voice Boost ilimitado”, “A-B Loop ilimitado” 순서를 유지했다(“Ilimitado Voice Boost”는 비문). 전체 반복은 “Repetição ilimitada do vídeo inteiro”로 혜택을 앞쪽에 두었다.
- **voiceBoostTrialLeft**(“Teste do Voice Boost”)는 앱 안 무료 맛보기인데 “teste”를 쓴다. 접근성 라벨이고 자동 결제와는 관계없어 그대로 두었다.
- **ytMemberships**(“Assinaturas de canais”)는 YouTube 브라질 화면의 실제 이름을 확인하지 못해 그대로 두었다.
