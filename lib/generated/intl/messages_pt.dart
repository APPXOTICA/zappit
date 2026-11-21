// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pt locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'pt';

  static String m0(site) => "Adicionar ${site} aos Favoritos";

  static String m1(count) => "Voltar ${count} segundos";

  static String m2(browser) =>
      "${browser} não respondeu. Confira se ele está aberto.";

  static String m3(browsers) => "Desconectado de ${browsers}";

  static String m4(name) => "Canal: ${name}";

  static String m5(current, total) => "Capítulo ${current}/${total}";

  static String m6(browser) => "Conectado a ${browser}";

  static String m7(count) => "Avançar ${count} segundos";

  static String m8(count) => "Teste grátis: ${count} dias";

  static String m9(count) => "Teste grátis: ${count} meses";

  static String m10(count) => "Teste grátis: ${count} sem.";

  static String m11(count) => "Teste grátis: ${count} anos";

  static String m12(price) => "Só ${price}/mês";

  static String m13(count) =>
      "${Intl.plural(count, one: '1 minuto', other: '${count} minutos')}";

  static String m14(count) => "${count} min";

  static String m15(time) => "Novo código em ${time}";

  static String m16(url) =>
      "Abra ${url} no navegador do computador para instalar a extensão do Zappit.";

  static String m17(current, total) => "${current} / ${total}";

  static String m18(current, total) => "Etapa ${current} de ${total}";

  static String m19(site) => "Abrir ${site}";

  static String m20(browser) => "Aberto em ${browser}";

  static String m21(browser) => "Abrindo em ${browser}…";

  static String m22(price) => "${price} / mês";

  static String m23(price) => "${price} / ano";

  static String m24(date) =>
      "Sua prévia grátis do Pro está ativa até ${date}. Assine antes que ela termine para continuar com todos os recursos Pro sem interrupção.";

  static String m25(proName) =>
      "Sua prévia do Pro terminou. Mantenha todos os recursos Pro com o ${proName}.";

  static String m26(days) =>
      "Aproveite todos os recursos do Zappit Pro de graça por ${days} dias. Sem cartão de crédito e sem cobrança automática.";

  static String m27(date) => "Prévia do Pro até ${date}";

  static String m28(proName) => "${proName} restaurado";

  static String m29(site) => "Remover ${site} dos Favoritos";

  static String m30(site) => "${site} removido dos Favoritos";

  static String m31(site) => "Reordenar ${site}";

  static String m32(percent) => "Economize ${percent}%";

  static String m33(number) => "Temporada ${number}";

  static String m34(count) => "${count} s";

  static String m35(site) => "Configurações do ${site}";

  static String m36(count) =>
      "De volta a 1x. Sem o Pro, você pode usar esta velocidade por ${count} segundos.";

  static String m37(price, date) =>
      "Seu teste grátis termina amanhã. Você será cobrado em ${price} no dia ${date}. Se não quiser continuar, cancele a assinatura antes disso.";

  static String m38(price) =>
      "Começa com um teste grátis, depois ${price}/ano.";

  static String m39(count, price) =>
      "Começa com ${count} dias de teste grátis, depois ${price}/ano.";

  static String m40(count, price) =>
      "Começa com ${count} meses de teste grátis, depois ${price}/ano.";

  static String m41(count, price) =>
      "Começa com ${count} anos de teste grátis, depois ${price}/ano.";

  static String m42(count) => "A seguir · começa em ${count} s";

  static String m43(count) => "Teste do Voice Boost, faltam ${count} segundos";

  static String m44(count) =>
      "Voice Boost desativado. Sem o Pro, você pode usar o Voice Boost por ${count} segundos.";

  static String m45(proName) => "Boas-vindas ao ${proName}";

  static String m46(number) => "Janela ${number}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "abLoopCount": MessageLookupByLibrary.simpleMessage(
      "Repetições do A-B Loop",
    ),
    "abOffForLive": MessageLookupByLibrary.simpleMessage(
      "O A-B Loop fica desativado em transmissões ao vivo",
    ),
    "account": MessageLookupByLibrary.simpleMessage("Conexão"),
    "adBadge": MessageLookupByLibrary.simpleMessage("ANÚNCIO"),
    "addToFavorites": m0,
    "allCategories": MessageLookupByLibrary.simpleMessage(
      "Todas as categorias",
    ),
    "allSites": MessageLookupByLibrary.simpleMessage("Todos os sites"),
    "alreadySubscribed": MessageLookupByLibrary.simpleMessage(
      "Você já tem esta assinatura. Tente Restaurar compras.",
    ),
    "back": MessageLookupByLibrary.simpleMessage("Voltar"),
    "backSeconds": m1,
    "banned": MessageLookupByLibrary.simpleMessage(
      "Desculpe, o acesso foi bloqueado.",
    ),
    "browserDidNotAnswer": m2,
    "browserNotResponding": MessageLookupByLibrary.simpleMessage(
      "O navegador não está respondendo",
    ),
    "browsers": MessageLookupByLibrary.simpleMessage("Navegadores"),
    "browsersDisconnected": m3,
    "browsersDisconnectedBody": MessageLookupByLibrary.simpleMessage(
      "Outro celular se conectou a ele. Para usá-lo de novo, leia o código QR naquele computador.",
    ),
    "cameraDenied": MessageLookupByLibrary.simpleMessage(
      "Permita o acesso à câmera nos Ajustes para ler o código.",
    ),
    "cameraUnavailable": MessageLookupByLibrary.simpleMessage(
      "A câmera não está disponível agora.",
    ),
    "cancel": MessageLookupByLibrary.simpleMessage("Cancelar"),
    "cancelAnytime": MessageLookupByLibrary.simpleMessage(
      "Cancele quando quiser na sua conta da loja.",
    ),
    "cantLoadPage": MessageLookupByLibrary.simpleMessage(
      "Não foi possível carregar esta página",
    ),
    "cantOpenOnPhone": MessageLookupByLibrary.simpleMessage(
      "Este vídeo não pode ser aberto no celular",
    ),
    "cantReachBrowser": MessageLookupByLibrary.simpleMessage(
      "Nenhum navegador encontrado",
    ),
    "cantSeekVideo": MessageLookupByLibrary.simpleMessage(
      "Não é possível avançar ou voltar neste vídeo",
    ),
    "captionLanguage": MessageLookupByLibrary.simpleMessage(
      "Idioma da legenda",
    ),
    "captions": MessageLookupByLibrary.simpleMessage("Legendas"),
    "captionsOff": MessageLookupByLibrary.simpleMessage("Legendas desativadas"),
    "captionsOn": MessageLookupByLibrary.simpleMessage("Legendas ativadas"),
    "categories": MessageLookupByLibrary.simpleMessage("Categorias"),
    "categoryFavoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "Toque na estrela de uma categoria para adicioná-la aqui.",
    ),
    "channelLabel": m4,
    "chapterPosition": m5,
    "chapters": MessageLookupByLibrary.simpleMessage("Capítulos"),
    "chaptersDuringAd": MessageLookupByLibrary.simpleMessage(
      "Não dá para pular capítulos durante um anúncio",
    ),
    "checkConnection": MessageLookupByLibrary.simpleMessage(
      "Verifique sua conexão com a internet e tente de novo.",
    ),
    "checkConnectionShort": MessageLookupByLibrary.simpleMessage(
      "Verifique sua conexão e tente de novo.",
    ),
    "chooseBrowser": MessageLookupByLibrary.simpleMessage(
      "Escolha um navegador",
    ),
    "chooseNextVideo": MessageLookupByLibrary.simpleMessage(
      "Escolha o próximo vídeo",
    ),
    "clear": MessageLookupByLibrary.simpleMessage("Limpar"),
    "close": MessageLookupByLibrary.simpleMessage("Fechar"),
    "connectBrowser": MessageLookupByLibrary.simpleMessage(
      "Conectar um navegador",
    ),
    "connectBrowserFirst": MessageLookupByLibrary.simpleMessage(
      "Conecte-se a um navegador primeiro",
    ),
    "connected": MessageLookupByLibrary.simpleMessage("Conectado"),
    "connectedTo": m6,
    "contactUs": MessageLookupByLibrary.simpleMessage("Fale conosco"),
    "contactUsKeepInfo": MessageLookupByLibrary.simpleMessage(
      "Não apague as informações abaixo.",
    ),
    "couldNotGetVideoLink": MessageLookupByLibrary.simpleMessage(
      "Não foi possível obter o link do vídeo",
    ),
    "couldNotLoadEpisodes": MessageLookupByLibrary.simpleMessage(
      "Não foi possível carregar os episódios",
    ),
    "couldNotLoadPlaylist": MessageLookupByLibrary.simpleMessage(
      "Não foi possível carregar a playlist",
    ),
    "couldNotOpenLink": MessageLookupByLibrary.simpleMessage(
      "Não foi possível abrir o link",
    ),
    "couldNotReadQuality": MessageLookupByLibrary.simpleMessage(
      "Não foi possível ler as opções de qualidade na página.",
    ),
    "delete": MessageLookupByLibrary.simpleMessage("Excluir"),
    "disconnect": MessageLookupByLibrary.simpleMessage("Desconectar"),
    "disconnectPhone": MessageLookupByLibrary.simpleMessage(
      "Desconectar este celular",
    ),
    "disconnectPhoneMessage": MessageLookupByLibrary.simpleMessage(
      "Este celular vai deixar de controlar o computador. Para usá-lo de novo, leia o código QR no computador.",
    ),
    "down": MessageLookupByLibrary.simpleMessage("Baixo"),
    "endOfVideo": MessageLookupByLibrary.simpleMessage("Fim do vídeo"),
    "enterValidLink": MessageLookupByLibrary.simpleMessage(
      "Digite um link que comece com http ou https",
    ),
    "episodes": MessageLookupByLibrary.simpleMessage("Episódios"),
    "error": MessageLookupByLibrary.simpleMessage("Erro"),
    "errorButtonNotFound": MessageLookupByLibrary.simpleMessage(
      "Não foi possível encontrar esse botão na página",
    ),
    "errorDuringAd": MessageLookupByLibrary.simpleMessage(
      "Não é possível durante um anúncio",
    ),
    "errorEndBeforeStart": MessageLookupByLibrary.simpleMessage(
      "O ponto final precisa vir depois do ponto inicial",
    ),
    "errorGeneric": MessageLookupByLibrary.simpleMessage("Algo deu errado"),
    "errorInvalidUrl": MessageLookupByLibrary.simpleMessage(
      "Não é possível abrir esse link",
    ),
    "errorNoBrowser": MessageLookupByLibrary.simpleMessage(
      "Nenhum navegador selecionado",
    ),
    "errorNoMedia": MessageLookupByLibrary.simpleMessage(
      "Nenhum vídeo está tocando",
    ),
    "errorNotChanged": MessageLookupByLibrary.simpleMessage(
      "O site não fez a alteração",
    ),
    "errorNotSupported": MessageLookupByLibrary.simpleMessage(
      "Este site não permite isso",
    ),
    "errorStartAfterEnd": MessageLookupByLibrary.simpleMessage(
      "O ponto inicial precisa vir antes do ponto final",
    ),
    "errorTabClosed": MessageLookupByLibrary.simpleMessage(
      "Essa aba já foi fechada",
    ),
    "exitFullScreen": MessageLookupByLibrary.simpleMessage(
      "Sair da tela cheia",
    ),
    "extensionUpdatedReload": MessageLookupByLibrary.simpleMessage(
      "A extensão do Zappit foi atualizada. Recarregue esta página para continuar usando todos os controles.",
    ),
    "faq": MessageLookupByLibrary.simpleMessage("Perguntas frequentes"),
    "favorites": MessageLookupByLibrary.simpleMessage("Favoritos"),
    "favoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "Toque na estrela de um site para adicioná-lo aqui.",
    ),
    "forwardSeconds": m7,
    "frameByFrame": MessageLookupByLibrary.simpleMessage("Quadro a quadro"),
    "freeTrial": MessageLookupByLibrary.simpleMessage("Teste grátis"),
    "freeTrialDays": m8,
    "freeTrialMonths": m9,
    "freeTrialWeeks": m10,
    "freeTrialYears": m11,
    "fullPowerUnlocked": MessageLookupByLibrary.simpleMessage(
      "Todos os recursos liberados",
    ),
    "fullScreen": MessageLookupByLibrary.simpleMessage("Tela cheia"),
    "generalSettings": MessageLookupByLibrary.simpleMessage(
      "Configurações gerais",
    ),
    "gotIt": MessageLookupByLibrary.simpleMessage("Entendi"),
    "hideChat": MessageLookupByLibrary.simpleMessage("Ocultar chat"),
    "home": MessageLookupByLibrary.simpleMessage("Início"),
    "justPerMonth": m12,
    "largerCaptions": MessageLookupByLibrary.simpleMessage("Legendas maiores"),
    "lastVideoInPlaylist": MessageLookupByLibrary.simpleMessage(
      "Este é o último vídeo da playlist",
    ),
    "learnMore": MessageLookupByLibrary.simpleMessage("Saiba mais"),
    "left": MessageLookupByLibrary.simpleMessage("Esquerda"),
    "linkPanelHint": MessageLookupByLibrary.simpleMessage(
      "Cole o link de um vídeo e toque em Enviar. Ele abre em uma nova aba do seu navegador.",
    ),
    "liveBadge": MessageLookupByLibrary.simpleMessage("AO VIVO"),
    "liveCantRewind": MessageLookupByLibrary.simpleMessage(
      "Não é possível voltar nesta transmissão ao vivo",
    ),
    "longPressSpeed": MessageLookupByLibrary.simpleMessage(
      "Velocidade ao segurar",
    ),
    "loopEnd": MessageLookupByLibrary.simpleMessage("Fim do loop"),
    "loopOff": MessageLookupByLibrary.simpleMessage("Repetição desativada"),
    "loopOn": MessageLookupByLibrary.simpleMessage("Repetição ativada"),
    "loopStart": MessageLookupByLibrary.simpleMessage("Início do loop"),
    "manageSubscription": MessageLookupByLibrary.simpleMessage(
      "Gerenciar assinatura",
    ),
    "minutesCount": m13,
    "minutesShort": m14,
    "mixCantRepeat": MessageLookupByLibrary.simpleMessage(
      "Esta playlist toca vídeos novos sem parar, então não dá para repeti-la",
    ),
    "mixCantShuffle": MessageLookupByLibrary.simpleMessage(
      "Esta playlist toca vídeos novos sem parar, então não dá para usar o aleatório",
    ),
    "monthly": MessageLookupByLibrary.simpleMessage("Mensal"),
    "multipleBrowsersMessage": MessageLookupByLibrary.simpleMessage(
      "Há vários navegadores online. Escolha o que este controle deve comandar.",
    ),
    "mute": MessageLookupByLibrary.simpleMessage("Silenciar"),
    "nextChapter": MessageLookupByLibrary.simpleMessage("Próximo capítulo"),
    "nextEpisode": MessageLookupByLibrary.simpleMessage("Próximo episódio"),
    "nextTab": MessageLookupByLibrary.simpleMessage("Próxima aba"),
    "nextVideo": MessageLookupByLibrary.simpleMessage("Próximo vídeo"),
    "noBrowser": MessageLookupByLibrary.simpleMessage("Nenhum navegador"),
    "noBrowserConnectedShare": MessageLookupByLibrary.simpleMessage(
      "Nenhum navegador está conectado. Abra seu navegador com a extensão do Zappit e tente de novo.",
    ),
    "noBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "1. Abra no computador o navegador conectado.\n2. Se ele não conectar, clique no ícone do Zappit na barra de ferramentas do navegador.",
    ),
    "noBrowserOnline": MessageLookupByLibrary.simpleMessage(
      "Nenhum navegador está online.",
    ),
    "noBrowserOnlineShort": MessageLookupByLibrary.simpleMessage(
      "Nenhum navegador online",
    ),
    "noBrowserSelected": MessageLookupByLibrary.simpleMessage(
      "Nenhum navegador selecionado",
    ),
    "noCategoriesFound": MessageLookupByLibrary.simpleMessage(
      "Nenhuma categoria encontrada",
    ),
    "noLinkInShare": MessageLookupByLibrary.simpleMessage(
      "Nenhum link encontrado no que você compartilhou",
    ),
    "noMoreTabs": MessageLookupByLibrary.simpleMessage("Não há mais abas"),
    "noNextEpisode": MessageLookupByLibrary.simpleMessage(
      "Não há próximo episódio",
    ),
    "noOpenTabs": MessageLookupByLibrary.simpleMessage("Nenhuma aba aberta"),
    "noPreviousPage": MessageLookupByLibrary.simpleMessage(
      "Não há página anterior para voltar",
    ),
    "noSiteSettings": MessageLookupByLibrary.simpleMessage(
      "Ainda não há configurações para este site.",
    ),
    "noSubtitles": MessageLookupByLibrary.simpleMessage(
      "Este vídeo não tem legendas",
    ),
    "noThanks": MessageLookupByLibrary.simpleMessage("Não, obrigado"),
    "noVideosOnPage": MessageLookupByLibrary.simpleMessage(
      "Não há vídeos nesta página.",
    ),
    "notAvailableDuringAd": MessageLookupByLibrary.simpleMessage(
      "Indisponível durante um anúncio",
    ),
    "notAvailableForLive": MessageLookupByLibrary.simpleMessage(
      "Indisponível ao vivo",
    ),
    "notAvailableForLiveStreams": MessageLookupByLibrary.simpleMessage(
      "Indisponível em transmissões ao vivo",
    ),
    "notAvailableForPhotos": MessageLookupByLibrary.simpleMessage(
      "Indisponível em posts de foto",
    ),
    "notConnected": MessageLookupByLibrary.simpleMessage("Não conectado"),
    "nothingPlaying": MessageLookupByLibrary.simpleMessage(
      "Nenhum vídeo encontrado",
    ),
    "nothingPlayingMessage": MessageLookupByLibrary.simpleMessage(
      "Esta aba não tem vídeo. Escolha outra aba ou cole o link de um vídeo.",
    ),
    "nothingToRestore": MessageLookupByLibrary.simpleMessage(
      "Nada para restaurar",
    ),
    "nothingToRestoreMessage": MessageLookupByLibrary.simpleMessage(
      "Nenhuma assinatura ativa do Zappit Pro foi encontrada nesta conta da loja.",
    ),
    "obAnimAddExtension": MessageLookupByLibrary.simpleMessage(
      "Adicionar extensão",
    ),
    "obAnimAdded": MessageLookupByLibrary.simpleMessage("Adicionada"),
    "obAnimConnectComputer": MessageLookupByLibrary.simpleMessage(
      "Conecte-se ao computador",
    ),
    "obAnimConnectPhone": MessageLookupByLibrary.simpleMessage(
      "Conecte seu celular",
    ),
    "obAnimNewCode": m15,
    "obAnimRemoteConnected": MessageLookupByLibrary.simpleMessage(
      "Controle conectado",
    ),
    "obAnimScanCode": MessageLookupByLibrary.simpleMessage(
      "Leia este código com o app Zappit no celular.",
    ),
    "obAnimTagline": MessageLookupByLibrary.simpleMessage("Esqueça o mouse."),
    "obAnimYourPhones": MessageLookupByLibrary.simpleMessage("Seus celulares"),
    "off": MessageLookupByLibrary.simpleMessage("Desligado"),
    "offline": MessageLookupByLibrary.simpleMessage("Offline"),
    "offlineMessage": MessageLookupByLibrary.simpleMessage(
      "Verifique sua conexão com a internet. O Zappit se reconecta sozinho.",
    ),
    "onboarding0AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Tocar em reproduzir/pausar no app Zappit pausa e retoma o vídeo no notebook",
    ),
    "onboarding1AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Digitando zappit.tv/get no navegador e adicionando a extensão do Zappit",
    ),
    "onboarding1Body": m16,
    "onboarding1Title": MessageLookupByLibrary.simpleMessage(
      "Primeiro, adicione a extensão do Zappit ao navegador",
    ),
    "onboarding2AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Clique no ícone do Zappit no navegador e leitura do código QR com o celular",
    ),
    "onboarding2Body": MessageLookupByLibrary.simpleMessage(
      "Clique no ícone do Zappit na barra de ferramentas do navegador e aponte a câmera para o código QR.",
    ),
    "onboarding2Title": MessageLookupByLibrary.simpleMessage(
      "Leia o código QR",
    ),
    "onboardingGetStarted": MessageLookupByLibrary.simpleMessage("Começar"),
    "onboardingIconHelp": MessageLookupByLibrary.simpleMessage(
      "Não está vendo o ícone do Zappit?",
    ),
    "onboardingIconHelpLabel": MessageLookupByLibrary.simpleMessage(
      "Não está vendo o ícone do Zappit? Abre a resposta nas perguntas frequentes",
    ),
    "onboardingNext": MessageLookupByLibrary.simpleMessage("Avançar"),
    "onboardingOpenQrScanner": MessageLookupByLibrary.simpleMessage(
      "Abrir leitor de QR",
    ),
    "onboardingShareLink": MessageLookupByLibrary.simpleMessage(
      "Enviar link de instalação",
    ),
    "onboardingStepCount": m17,
    "onboardingStepLabel": m18,
    "onboardingWelcomeBody": MessageLookupByLibrary.simpleMessage(
      "Controle qualquer vídeo no computador. A configuração leva só duas etapas rápidas.",
    ),
    "onboardingWelcomeTitle": MessageLookupByLibrary.simpleMessage(
      "Seu celular agora é o controle remoto",
    ),
    "openALink": MessageLookupByLibrary.simpleMessage("Abrir um link"),
    "openBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "Abra seu navegador com a extensão do Zappit para ver as abas dele.",
    ),
    "openLinkInBrowser": MessageLookupByLibrary.simpleMessage(
      "Abrir um link no navegador",
    ),
    "openSite": m19,
    "openedIn": m20,
    "openingIn": m21,
    "pairCodeExpired": MessageLookupByLibrary.simpleMessage(
      "Este código expirou. Leia o novo código no computador.",
    ),
    "pairCodeInvalid": MessageLookupByLibrary.simpleMessage(
      "Este código não é mais válido. Leia o novo código no computador.",
    ),
    "pairCodeUsed": MessageLookupByLibrary.simpleMessage(
      "Este código já foi usado. Leia o novo código no computador.",
    ),
    "pairFailed": MessageLookupByLibrary.simpleMessage(
      "Não foi possível conectar. Verifique sua conexão com a internet e tente de novo.",
    ),
    "pairHowToInstall": MessageLookupByLibrary.simpleMessage(
      "Como instalar a extensão",
    ),
    "pairPhoneLimit": MessageLookupByLibrary.simpleMessage(
      "Este computador já tem 3 celulares conectados. Abra o Zappit em um dos seus outros celulares conectados e toque em “Desconectar este celular” em “Mais”. Se você não tem mais esse celular, use “Reset” na extensão do Zappit no seu computador.",
    ),
    "pairTitle": MessageLookupByLibrary.simpleMessage(
      "Conecte-se à extensão do navegador",
    ),
    "paste": MessageLookupByLibrary.simpleMessage("Colar"),
    "pasteALink": MessageLookupByLibrary.simpleMessage("Colar link"),
    "pasteVideoLink": MessageLookupByLibrary.simpleMessage(
      "Cole o link de um vídeo",
    ),
    "pause": MessageLookupByLibrary.simpleMessage("Pausar"),
    "paymentPending": MessageLookupByLibrary.simpleMessage(
      "Pagamento pendente",
    ),
    "paymentPendingMessage": MessageLookupByLibrary.simpleMessage(
      "O Pro é ativado assim que a loja confirmar o pagamento.",
    ),
    "phoneName": MessageLookupByLibrary.simpleMessage("Nome do celular"),
    "phoneNameEmpty": MessageLookupByLibrary.simpleMessage("Digite um nome."),
    "phoneNameMessage": MessageLookupByLibrary.simpleMessage(
      "Aparece na extensão do Zappit no computador.",
    ),
    "pickATab": MessageLookupByLibrary.simpleMessage("Escolher aba"),
    "pickBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "Escolha o navegador que este controle deve comandar para ver as abas dele.",
    ),
    "pickVideosWithPro": MessageLookupByLibrary.simpleMessage(
      "Escolha vídeos pelo celular com o Pro",
    ),
    "play": MessageLookupByLibrary.simpleMessage("Reproduzir"),
    "playInApp": MessageLookupByLibrary.simpleMessage("Continuar no celular"),
    "playNow": MessageLookupByLibrary.simpleMessage("Tocar agora"),
    "playVideoFirst": MessageLookupByLibrary.simpleMessage(
      "Toque um vídeo no navegador primeiro",
    ),
    "playing": MessageLookupByLibrary.simpleMessage("Tocando"),
    "playlist": MessageLookupByLibrary.simpleMessage("Playlist"),
    "playlistCantRepeat": MessageLookupByLibrary.simpleMessage(
      "Não dá para repetir esta playlist",
    ),
    "playlistCantShuffle": MessageLookupByLibrary.simpleMessage(
      "Não dá para tocar esta playlist em ordem aleatória",
    ),
    "previousChapter": MessageLookupByLibrary.simpleMessage(
      "Capítulo anterior",
    ),
    "previousTab": MessageLookupByLibrary.simpleMessage("Aba anterior"),
    "previousVideo": MessageLookupByLibrary.simpleMessage("Vídeo anterior"),
    "pricePerMonth": m22,
    "pricePerYear": m23,
    "privacyPolicy": MessageLookupByLibrary.simpleMessage(
      "Política de Privacidade",
    ),
    "proBannerSubtitle": MessageLookupByLibrary.simpleMessage(
      "Libere todo o poder do seu controle",
    ),
    "proFeatureAbLoop": MessageLookupByLibrary.simpleMessage(
      "A-B Loop sem limite",
    ),
    "proFeatureAllSpeeds": MessageLookupByLibrary.simpleMessage(
      "Todas as velocidades de reprodução",
    ),
    "proFeatureDedicatedControllers": MessageLookupByLibrary.simpleMessage(
      "Desbloqueie controles dedicados",
    ),
    "proFeatureFullLoop": MessageLookupByLibrary.simpleMessage(
      "Repetir vídeo inteiro sem limite",
    ),
    "proFeatureVoiceBoost": MessageLookupByLibrary.simpleMessage(
      "Voice Boost ilimitado",
    ),
    "proPreviewActiveBanner": m24,
    "proPreviewEndedMessage": MessageLookupByLibrary.simpleMessage(
      "Obrigado por experimentar o Zappit Pro! Assine para continuar aproveitando todos os recursos Pro sem interrupção.",
    ),
    "proPreviewEndedSubtitle": m25,
    "proPreviewEndedTitle": MessageLookupByLibrary.simpleMessage(
      "Sua prévia do Pro terminou",
    ),
    "proPreviewEndsTomorrow": MessageLookupByLibrary.simpleMessage(
      "A prévia do Pro termina amanhã",
    ),
    "proPreviewStarted": m26,
    "proPreviewUntil": m27,
    "proRestored": m28,
    "proSubscriptionEnded": MessageLookupByLibrary.simpleMessage(
      "Sua assinatura Pro terminou",
    ),
    "proSubtitle": MessageLookupByLibrary.simpleMessage(
      "Libere todo o poder do seu controle.",
    ),
    "purchaseCancelled": MessageLookupByLibrary.simpleMessage(
      "Compra cancelada",
    ),
    "purchaseCancelledMessage": MessageLookupByLibrary.simpleMessage(
      "Nada foi cobrado. Você pode tentar de novo quando quiser.",
    ),
    "purchaseFailed": MessageLookupByLibrary.simpleMessage("A compra falhou"),
    "purchaseNotActivated": MessageLookupByLibrary.simpleMessage(
      "Compra não ativada",
    ),
    "purchaseNotActivatedMessage": MessageLookupByLibrary.simpleMessage(
      "O pagamento foi feito, mas o Pro ainda não está ativo. Tente Restaurar compras.",
    ),
    "purchasesNotAllowed": MessageLookupByLibrary.simpleMessage(
      "Compras não são permitidas neste dispositivo ou conta.",
    ),
    "qualityNotChanged": MessageLookupByLibrary.simpleMessage(
      "A qualidade não mudou",
    ),
    "rateZappit": MessageLookupByLibrary.simpleMessage("Avaliar o Zappit"),
    "reload": MessageLookupByLibrary.simpleMessage("Recarregar"),
    "remindMe": MessageLookupByLibrary.simpleMessage("Me avise"),
    "remoteSettings": MessageLookupByLibrary.simpleMessage(
      "Configurações do controle",
    ),
    "removeFromFavorites": m29,
    "removedFromFavorites": m30,
    "reorderHint": MessageLookupByLibrary.simpleMessage(
      "Toque e segure um item, depois arraste para reordenar",
    ),
    "reorderSite": m31,
    "repeatOff": MessageLookupByLibrary.simpleMessage("Repetição desativada"),
    "repeatOffNotice": MessageLookupByLibrary.simpleMessage(
      "Repetição desativada",
    ),
    "repeatOn": MessageLookupByLibrary.simpleMessage("Repetição ativada"),
    "repeatingPlaylist": MessageLookupByLibrary.simpleMessage(
      "Repetindo esta playlist",
    ),
    "replay": MessageLookupByLibrary.simpleMessage("Tocar do início"),
    "restoreFailed": MessageLookupByLibrary.simpleMessage(
      "Não foi possível restaurar",
    ),
    "restorePurchases": MessageLookupByLibrary.simpleMessage(
      "Restaurar compras",
    ),
    "right": MessageLookupByLibrary.simpleMessage("Direita"),
    "save": MessageLookupByLibrary.simpleMessage("Salvar"),
    "savePercent": m32,
    "searchCategories": MessageLookupByLibrary.simpleMessage(
      "Buscar categorias",
    ),
    "seasonNumber": m33,
    "secondsShort": m34,
    "seekInterval": MessageLookupByLibrary.simpleMessage("Intervalo de salto"),
    "select": MessageLookupByLibrary.simpleMessage("Selecionar"),
    "selectVideoInBrowser": MessageLookupByLibrary.simpleMessage(
      "Nada tocando",
    ),
    "selectVideoInBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "Clique em qualquer vídeo no computador para começar a assistir. O controle vai aparecer aqui.",
    ),
    "send": MessageLookupByLibrary.simpleMessage("Enviar"),
    "settings": MessageLookupByLibrary.simpleMessage("Configurações"),
    "showChat": MessageLookupByLibrary.simpleMessage("Mostrar chat"),
    "shuffleOff": MessageLookupByLibrary.simpleMessage("Aleatório desativado"),
    "shuffleOffNotice": MessageLookupByLibrary.simpleMessage(
      "Aleatório desativado",
    ),
    "shuffleOn": MessageLookupByLibrary.simpleMessage("Aleatório ativado"),
    "shufflingPlaylist": MessageLookupByLibrary.simpleMessage(
      "Tocando esta playlist em ordem aleatória",
    ),
    "siteSettings": m35,
    "siteWeb": MessageLookupByLibrary.simpleMessage("Web"),
    "skipAd": MessageLookupByLibrary.simpleMessage("Pular anúncio"),
    "skipIntro": MessageLookupByLibrary.simpleMessage("Pular abertura"),
    "sleepTimer": MessageLookupByLibrary.simpleMessage("Timer"),
    "sleepTimerLabel": MessageLookupByLibrary.simpleMessage("Timer"),
    "smallerCaptions": MessageLookupByLibrary.simpleMessage("Legendas menores"),
    "somethingWrong": MessageLookupByLibrary.simpleMessage(
      "Desculpe, algo deu errado.",
    ),
    "somethingWrongTryAgain": MessageLookupByLibrary.simpleMessage(
      "Desculpe, algo deu errado. Tente de novo.",
    ),
    "soundBlockedMessage": MessageLookupByLibrary.simpleMessage(
      "Toque para ver como ativar o som.",
    ),
    "soundBlockedTitle": MessageLookupByLibrary.simpleMessage(
      "Por que não estou ouvindo nada?",
    ),
    "soundHelpTitle": MessageLookupByLibrary.simpleMessage("Som"),
    "speedTrialOver": m36,
    "startFreeTrial": MessageLookupByLibrary.simpleMessage(
      "Começar teste grátis",
    ),
    "storeProblem": MessageLookupByLibrary.simpleMessage(
      "A loja teve um problema. Tente de novo daqui a pouco.",
    ),
    "storeUnavailable": MessageLookupByLibrary.simpleMessage(
      "A loja não está disponível agora. Tente mais tarde.",
    ),
    "subscribe": MessageLookupByLibrary.simpleMessage("Assinar"),
    "success": MessageLookupByLibrary.simpleMessage("Pronto"),
    "support": MessageLookupByLibrary.simpleMessage("Suporte"),
    "supportedSites": MessageLookupByLibrary.simpleMessage("Sites compatíveis"),
    "supportedSitesIntro": MessageLookupByLibrary.simpleMessage(
      "Estes sites têm um controle feito especialmente para eles. Em qualquer outro site, o Zappit funciona como um controle padrão.",
    ),
    "tabMore": MessageLookupByLibrary.simpleMessage("Mais"),
    "tabRemote": MessageLookupByLibrary.simpleMessage("Controle"),
    "tabTabs": MessageLookupByLibrary.simpleMessage("Abas"),
    "tapToKeepPro": MessageLookupByLibrary.simpleMessage(
      "Toque para manter todos os recursos Pro.",
    ),
    "tellAFriend": MessageLookupByLibrary.simpleMessage(
      "Indicar para um amigo",
    ),
    "termsOfService": MessageLookupByLibrary.simpleMessage("Termos de Serviço"),
    "theaterMode": MessageLookupByLibrary.simpleMessage("Modo teatro"),
    "trialReminderBody": m37,
    "trialReminderChannel": MessageLookupByLibrary.simpleMessage(
      "Lembrete do teste grátis",
    ),
    "trialReminderChannelDescription": MessageLookupByLibrary.simpleMessage(
      "Um lembrete antes do fim do seu teste grátis",
    ),
    "trialReminderMessage": MessageLookupByLibrary.simpleMessage(
      "Quer que a gente avise um dia antes do fim do seu teste grátis, para você não ter nenhuma cobrança surpresa?",
    ),
    "trialReminderNotificationTitle": MessageLookupByLibrary.simpleMessage(
      "O teste grátis do Zappit Pro termina em breve",
    ),
    "trialReminderTitle": MessageLookupByLibrary.simpleMessage(
      "Lembrete do teste",
    ),
    "trialTerms": m38,
    "trialTermsDays": m39,
    "trialTermsMonths": m40,
    "trialTermsYears": m41,
    "tryAgain": MessageLookupByLibrary.simpleMessage("Tentar de novo"),
    "turnOffAbFirst": MessageLookupByLibrary.simpleMessage(
      "Desative o A-B Loop primeiro",
    ),
    "tutorial": MessageLookupByLibrary.simpleMessage("Tutorial"),
    "unavailable": MessageLookupByLibrary.simpleMessage("Indisponível"),
    "undo": MessageLookupByLibrary.simpleMessage("Desfazer"),
    "unmute": MessageLookupByLibrary.simpleMessage("Ativar som"),
    "untitled": MessageLookupByLibrary.simpleMessage("Sem título"),
    "up": MessageLookupByLibrary.simpleMessage("Cima"),
    "upNext": MessageLookupByLibrary.simpleMessage("A seguir"),
    "upNextCountdown": m42,
    "upgrade": MessageLookupByLibrary.simpleMessage("Fazer upgrade"),
    "videoLengthUnknown": MessageLookupByLibrary.simpleMessage(
      "A duração deste vídeo é desconhecida",
    ),
    "videoQuality": MessageLookupByLibrary.simpleMessage("Qualidade do vídeo"),
    "view": MessageLookupByLibrary.simpleMessage("Ver"),
    "voiceBoostDuringAd": MessageLookupByLibrary.simpleMessage(
      "O Voice Boost não está disponível durante um anúncio",
    ),
    "voiceBoostOff": MessageLookupByLibrary.simpleMessage(
      "Voice Boost desativado",
    ),
    "voiceBoostOn": MessageLookupByLibrary.simpleMessage("Voice Boost ativado"),
    "voiceBoostTrialLeft": m43,
    "voiceBoostTrialOver": m44,
    "voiceBoostTurnedOn": MessageLookupByLibrary.simpleMessage(
      "Voice Boost ativado: vozes mais fáceis de ouvir",
    ),
    "voiceBoostUnsupported": MessageLookupByLibrary.simpleMessage(
      "Este vídeo não é compatível com o Voice Boost",
    ),
    "volumeDown": MessageLookupByLibrary.simpleMessage("Diminuir volume"),
    "volumeUp": MessageLookupByLibrary.simpleMessage("Aumentar volume"),
    "waitingForBrowser": MessageLookupByLibrary.simpleMessage(
      "Aguardando seu navegador…",
    ),
    "watchAgain": MessageLookupByLibrary.simpleMessage("Assistir de novo"),
    "watching": MessageLookupByLibrary.simpleMessage("Assistindo"),
    "welcomeToPro": m45,
    "windowNumber": m46,
    "yearly": MessageLookupByLibrary.simpleMessage("Anual"),
    "yourBrowser": MessageLookupByLibrary.simpleMessage("seu navegador"),
    "youreConnected": MessageLookupByLibrary.simpleMessage("Conectado!"),
    "youreOffline": MessageLookupByLibrary.simpleMessage("Você está offline"),
    "youtubeHome": MessageLookupByLibrary.simpleMessage("Início do YouTube"),
    "ytCourses": MessageLookupByLibrary.simpleMessage("Cursos"),
    "ytDownloads": MessageLookupByLibrary.simpleMessage("Downloads"),
    "ytExplore": MessageLookupByLibrary.simpleMessage("Explorar"),
    "ytGaming": MessageLookupByLibrary.simpleMessage("Jogos"),
    "ytHistory": MessageLookupByLibrary.simpleMessage("Histórico"),
    "ytHype": MessageLookupByLibrary.simpleMessage("Hype"),
    "ytLikedVideos": MessageLookupByLibrary.simpleMessage(
      "Vídeos marcados com \"Gostei\"",
    ),
    "ytLive": MessageLookupByLibrary.simpleMessage("Ao vivo"),
    "ytMemberships": MessageLookupByLibrary.simpleMessage(
      "Assinaturas de canais",
    ),
    "ytMusic": MessageLookupByLibrary.simpleMessage("Música"),
    "ytPlaylists": MessageLookupByLibrary.simpleMessage("Playlists"),
    "ytPodcasts": MessageLookupByLibrary.simpleMessage("Podcasts"),
    "ytShorts": MessageLookupByLibrary.simpleMessage("Shorts"),
    "ytSubscriptions": MessageLookupByLibrary.simpleMessage("Inscrições"),
    "ytVideos": MessageLookupByLibrary.simpleMessage("Vídeos"),
    "ytWatchLater": MessageLookupByLibrary.simpleMessage("Assistir mais tarde"),
    "ytYou": MessageLookupByLibrary.simpleMessage("Você"),
  };
}
