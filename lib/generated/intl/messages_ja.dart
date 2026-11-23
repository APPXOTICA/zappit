// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ja locale. All the
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
  String get localeName => 'ja';

  static String m0(site) => "${site} をお気に入りに追加";

  static String m1(count) => "${count}秒戻る";

  static String m2(browser) => "${browser} から応答がありません。ブラウザが開いているか確認してください。";

  static String m3(browsers) => "${browsers} との接続が解除されました";

  static String m4(name) => "チャンネル：${name}";

  static String m5(current, total) => "チャプター ${current}/${total}";

  static String m6(browser) => "${browser} に接続しました";

  static String m7(count) => "${count}秒進む";

  static String m8(count) => "${count}日間の無料トライアル";

  static String m9(count) => "${count}か月の無料トライアル";

  static String m10(count) => "${count}週間の無料トライアル";

  static String m11(count) => "${count}年間の無料トライアル";

  static String m12(price) => "月あたりわずか ${price}";

  static String m13(count) => "${Intl.plural(count, other: '${count}分')}";

  static String m14(count) => "${count}分";

  static String m15(time) => "${time} 後に新しいコード";

  static String m16(url) => "パソコンのブラウザで ${url} を開いて、Zappit 拡張機能をインストールしてください。";

  static String m17(current, total) => "${current} / ${total}";

  static String m18(current, total) => "ステップ ${current}/${total}";

  static String m19(site) => "${site} を開く";

  static String m20(browser) => "${browser} で開きました";

  static String m21(browser) => "${browser} で開いています…";

  static String m22(price) => "${price} / 月";

  static String m23(price) => "${price} / 年";

  static String m24(date) =>
      "無料の Pro お試しは ${date} まで有効です。終了前に登録すると、すべての Pro 機能をそのまま使い続けられます。";

  static String m25(proName) =>
      "Pro のお試し期間が終了しました。${proName} ですべての Pro 機能を使い続けましょう。";

  static String m26(days) =>
      "Zappit Pro のすべての機能を ${days} 日間無料でお試しいただけます。クレジットカード不要、自動課金もありません。";

  static String m27(date) => "${date} まで Pro お試し中";

  static String m28(proName) => "${proName} を復元しました";

  static String m29(site) => "${site} をお気に入りから外す";

  static String m30(site) => "${site} をお気に入りから外しました";

  static String m31(site) => "${site} を並べ替え";

  static String m32(percent) => "${percent}% お得";

  static String m33(number) => "シーズン ${number}";

  static String m34(count) => "${count}秒";

  static String m35(site) => "${site} の設定";

  static String m36(count) => "1倍速に戻りました。無料ユーザーはこの速度を ${count} 秒間使えます。";

  static String m37(price, date) =>
      "無料トライアルは明日終了します。${date} に ${price} が請求されます。続ける予定がない場合は、それまでにサブスクリプションを解約してください。";

  static String m38(price) => "無料トライアル後、年額 ${price} です。";

  static String m39(count, price) => "${count}日間の無料トライアル後、年額 ${price} です。";

  static String m40(count, price) => "${count}か月の無料トライアル後、年額 ${price} です。";

  static String m41(count, price) => "${count}年間の無料トライアル後、年額 ${price} です。";

  static String m42(count) => "次の動画 · ${count} 秒後に再生";

  static String m43(count) => "Voice Boost お試し中、残り ${count} 秒";

  static String m44(count) =>
      "Voice Boost がオフになりました。無料ユーザーは Voice Boost を ${count} 秒間使えます。";

  static String m45(proName) => "${proName} へようこそ";

  static String m46(number) => "ウインドウ ${number}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "abLoopCount": MessageLookupByLibrary.simpleMessage("区間リピート回数"),
    "abOffForLive": MessageLookupByLibrary.simpleMessage(
      "ライブ配信では区間リピートを使用できません",
    ),
    "account": MessageLookupByLibrary.simpleMessage("接続"),
    "adBadge": MessageLookupByLibrary.simpleMessage("広告"),
    "addToFavorites": m0,
    "allCategories": MessageLookupByLibrary.simpleMessage("すべてのカテゴリ"),
    "allSites": MessageLookupByLibrary.simpleMessage("すべてのサイト"),
    "alreadySubscribed": MessageLookupByLibrary.simpleMessage(
      "すでにこのサブスクリプションをお持ちです。「購入を復元」をお試しください。",
    ),
    "back": MessageLookupByLibrary.simpleMessage("戻る"),
    "backSeconds": m1,
    "banned": MessageLookupByLibrary.simpleMessage("申し訳ありません。ご利用が制限されています。"),
    "browserDidNotAnswer": m2,
    "browserNotResponding": MessageLookupByLibrary.simpleMessage("ブラウザが応答しません"),
    "browsers": MessageLookupByLibrary.simpleMessage("ブラウザ"),
    "browsersDisconnected": m3,
    "browsersDisconnectedBody": MessageLookupByLibrary.simpleMessage(
      "別のスマホが接続しました。再び使うには、そのパソコンの QR コードを読み取ってください。",
    ),
    "cameraDenied": MessageLookupByLibrary.simpleMessage(
      "コードを読み取るには、設定でカメラへのアクセスを許可してください。",
    ),
    "cameraUnavailable": MessageLookupByLibrary.simpleMessage("現在カメラを使用できません。"),
    "cancel": MessageLookupByLibrary.simpleMessage("キャンセル"),
    "cancelAnytime": MessageLookupByLibrary.simpleMessage(
      "ストアのアカウントからいつでも解約できます。",
    ),
    "cantLoadPage": MessageLookupByLibrary.simpleMessage("ページを読み込めません"),
    "cantOpenOnPhone": MessageLookupByLibrary.simpleMessage("この動画はスマホで開けません"),
    "cantReachBrowser": MessageLookupByLibrary.simpleMessage("ブラウザに接続できません"),
    "cantSeekVideo": MessageLookupByLibrary.simpleMessage("この動画はシークできません"),
    "captionLanguage": MessageLookupByLibrary.simpleMessage("字幕の言語"),
    "captions": MessageLookupByLibrary.simpleMessage("字幕"),
    "captionsOff": MessageLookupByLibrary.simpleMessage("字幕 オフ"),
    "captionsOn": MessageLookupByLibrary.simpleMessage("字幕 オン"),
    "categories": MessageLookupByLibrary.simpleMessage("カテゴリ"),
    "categoryFavoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "カテゴリの星をタップするとここに追加されます。",
    ),
    "channelLabel": m4,
    "chapterPosition": m5,
    "chapters": MessageLookupByLibrary.simpleMessage("チャプター"),
    "chaptersDuringAd": MessageLookupByLibrary.simpleMessage(
      "広告中はチャプターを移動できません",
    ),
    "checkConnection": MessageLookupByLibrary.simpleMessage(
      "インターネット接続を確認して、もう一度お試しください。",
    ),
    "checkConnectionShort": MessageLookupByLibrary.simpleMessage(
      "接続を確認して、もう一度お試しください。",
    ),
    "chooseBrowser": MessageLookupByLibrary.simpleMessage("ブラウザを選択"),
    "chooseNextVideo": MessageLookupByLibrary.simpleMessage("次の動画を選ぶ"),
    "clear": MessageLookupByLibrary.simpleMessage("消去"),
    "close": MessageLookupByLibrary.simpleMessage("閉じる"),
    "connectBrowser": MessageLookupByLibrary.simpleMessage("ブラウザを接続"),
    "connectBrowserFirst": MessageLookupByLibrary.simpleMessage(
      "先にブラウザに接続してください",
    ),
    "connected": MessageLookupByLibrary.simpleMessage("接続済み"),
    "connectedTo": m6,
    "contactUs": MessageLookupByLibrary.simpleMessage("お問い合わせ"),
    "contactUsKeepInfo": MessageLookupByLibrary.simpleMessage(
      "以下の情報は削除しないでください。",
    ),
    "couldNotGetVideoLink": MessageLookupByLibrary.simpleMessage(
      "動画のリンクを取得できませんでした",
    ),
    "couldNotLoadEpisodes": MessageLookupByLibrary.simpleMessage(
      "エピソードを読み込めませんでした",
    ),
    "couldNotLoadPlaylist": MessageLookupByLibrary.simpleMessage(
      "再生リストを読み込めませんでした",
    ),
    "couldNotOpenLink": MessageLookupByLibrary.simpleMessage("リンクを開けませんでした"),
    "couldNotReadQuality": MessageLookupByLibrary.simpleMessage(
      "ページから画質の選択肢を読み取れませんでした。",
    ),
    "delete": MessageLookupByLibrary.simpleMessage("削除"),
    "disconnect": MessageLookupByLibrary.simpleMessage("接続を解除"),
    "disconnectPhone": MessageLookupByLibrary.simpleMessage("このスマホの接続を解除"),
    "disconnectPhoneMessage": MessageLookupByLibrary.simpleMessage(
      "このスマホではパソコンを操作できなくなります。再び使うには、パソコンの QR コードを読み取ってください。",
    ),
    "down": MessageLookupByLibrary.simpleMessage("下"),
    "endOfVideo": MessageLookupByLibrary.simpleMessage("動画の終わり"),
    "enterValidLink": MessageLookupByLibrary.simpleMessage(
      "http または https で始まるリンクを入力してください",
    ),
    "episodes": MessageLookupByLibrary.simpleMessage("エピソード"),
    "error": MessageLookupByLibrary.simpleMessage("エラー"),
    "errorButtonNotFound": MessageLookupByLibrary.simpleMessage(
      "ページ上でそのボタンが見つかりませんでした",
    ),
    "errorDuringAd": MessageLookupByLibrary.simpleMessage("広告中はこの操作ができません"),
    "errorEndBeforeStart": MessageLookupByLibrary.simpleMessage(
      "終了位置は開始位置より後にしてください",
    ),
    "errorGeneric": MessageLookupByLibrary.simpleMessage("問題が発生しました"),
    "errorInvalidUrl": MessageLookupByLibrary.simpleMessage("このリンクは開けません"),
    "errorNoBrowser": MessageLookupByLibrary.simpleMessage("ブラウザが選択されていません"),
    "errorNoMedia": MessageLookupByLibrary.simpleMessage("再生中の動画がありません"),
    "errorNotChanged": MessageLookupByLibrary.simpleMessage("サイト側で変更されませんでした"),
    "errorNotSupported": MessageLookupByLibrary.simpleMessage(
      "このサイトはその操作に対応していません",
    ),
    "errorStartAfterEnd": MessageLookupByLibrary.simpleMessage(
      "開始位置は終了位置より前にしてください",
    ),
    "errorTabClosed": MessageLookupByLibrary.simpleMessage("そのタブはすでに閉じられています"),
    "exitFullScreen": MessageLookupByLibrary.simpleMessage("全画面表示を終了"),
    "extensionUpdatedReload": MessageLookupByLibrary.simpleMessage(
      "Zappit 拡張機能が更新されました。すべての操作を使い続けるには、このページを再読み込みしてください。",
    ),
    "faq": MessageLookupByLibrary.simpleMessage("よくある質問"),
    "favorites": MessageLookupByLibrary.simpleMessage("お気に入り"),
    "favoritesEmptyHint": MessageLookupByLibrary.simpleMessage(
      "サイトの星をタップするとここに追加されます。",
    ),
    "forwardSeconds": m7,
    "frameByFrame": MessageLookupByLibrary.simpleMessage("コマ送り"),
    "freeTrial": MessageLookupByLibrary.simpleMessage("無料トライアル"),
    "freeTrialDays": m8,
    "freeTrialMonths": m9,
    "freeTrialWeeks": m10,
    "freeTrialYears": m11,
    "fullPowerUnlocked": MessageLookupByLibrary.simpleMessage(
      "すべての機能が解放されています",
    ),
    "fullScreen": MessageLookupByLibrary.simpleMessage("全画面表示"),
    "generalSettings": MessageLookupByLibrary.simpleMessage("一般設定"),
    "gotIt": MessageLookupByLibrary.simpleMessage("OK"),
    "hideChat": MessageLookupByLibrary.simpleMessage("チャットを非表示"),
    "home": MessageLookupByLibrary.simpleMessage("ホーム"),
    "justPerMonth": m12,
    "largerCaptions": MessageLookupByLibrary.simpleMessage("字幕を大きく"),
    "lastVideoInPlaylist": MessageLookupByLibrary.simpleMessage(
      "再生リストの最後の動画です",
    ),
    "learnMore": MessageLookupByLibrary.simpleMessage("詳しく見る"),
    "left": MessageLookupByLibrary.simpleMessage("左"),
    "linkPanelHint": MessageLookupByLibrary.simpleMessage(
      "動画のリンクを貼り付けて「送信」をタップすると、ブラウザの新しいタブで開きます。",
    ),
    "liveBadge": MessageLookupByLibrary.simpleMessage("ライブ"),
    "liveCantRewind": MessageLookupByLibrary.simpleMessage("このライブ配信は巻き戻せません"),
    "longPressSpeed": MessageLookupByLibrary.simpleMessage("長押し速度"),
    "loopEnd": MessageLookupByLibrary.simpleMessage("リピート終了位置"),
    "loopOff": MessageLookupByLibrary.simpleMessage("リピート オフ"),
    "loopOn": MessageLookupByLibrary.simpleMessage("リピート オン"),
    "loopStart": MessageLookupByLibrary.simpleMessage("リピート開始位置"),
    "manageSubscription": MessageLookupByLibrary.simpleMessage("サブスクリプションを管理"),
    "minutesCount": m13,
    "minutesShort": m14,
    "mixCantRepeat": MessageLookupByLibrary.simpleMessage(
      "この再生リストは新しい動画が延々と続くため、リピートできません",
    ),
    "mixCantShuffle": MessageLookupByLibrary.simpleMessage(
      "この再生リストは新しい動画が延々と続くため、シャッフルできません",
    ),
    "monthly": MessageLookupByLibrary.simpleMessage("月額"),
    "multipleBrowsersMessage": MessageLookupByLibrary.simpleMessage(
      "複数のブラウザがオンラインです。このリモコンで操作するブラウザを選んでください。",
    ),
    "mute": MessageLookupByLibrary.simpleMessage("ミュート"),
    "nextChapter": MessageLookupByLibrary.simpleMessage("次のチャプター"),
    "nextEpisode": MessageLookupByLibrary.simpleMessage("次のエピソード"),
    "nextTab": MessageLookupByLibrary.simpleMessage("次のタブ"),
    "nextVideo": MessageLookupByLibrary.simpleMessage("次の動画"),
    "noBrowser": MessageLookupByLibrary.simpleMessage("ブラウザなし"),
    "noBrowserConnectedShare": MessageLookupByLibrary.simpleMessage(
      "接続中のブラウザがありません。Zappit 拡張機能の入ったブラウザを開いて、もう一度お試しください。",
    ),
    "noBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "1. パソコンで接続済みのブラウザを開いてください。\n2. 接続されない場合は、ブラウザ上部のツールバーにある Zappit アイコンをクリックしてください。",
    ),
    "noBrowserOnline": MessageLookupByLibrary.simpleMessage(
      "オンラインのブラウザがありません。",
    ),
    "noBrowserOnlineShort": MessageLookupByLibrary.simpleMessage(
      "オンラインのブラウザなし",
    ),
    "noBrowserSelected": MessageLookupByLibrary.simpleMessage("ブラウザ未選択"),
    "noCategoriesFound": MessageLookupByLibrary.simpleMessage("カテゴリが見つかりません"),
    "noLinkInShare": MessageLookupByLibrary.simpleMessage(
      "共有された内容にリンクが見つかりません",
    ),
    "noMoreTabs": MessageLookupByLibrary.simpleMessage("これ以上タブはありません"),
    "noNextEpisode": MessageLookupByLibrary.simpleMessage("次のエピソードはありません"),
    "noOpenTabs": MessageLookupByLibrary.simpleMessage("開いているタブはありません"),
    "noPreviousPage": MessageLookupByLibrary.simpleMessage("戻れる前のページがありません"),
    "noSiteSettings": MessageLookupByLibrary.simpleMessage("このサイトの設定はまだありません。"),
    "noSubtitles": MessageLookupByLibrary.simpleMessage("この動画には字幕がありません"),
    "noThanks": MessageLookupByLibrary.simpleMessage("結構です"),
    "noVideosOnPage": MessageLookupByLibrary.simpleMessage("このページには動画がありません。"),
    "notAvailableDuringAd": MessageLookupByLibrary.simpleMessage("広告中は使用できません"),
    "notAvailableForLive": MessageLookupByLibrary.simpleMessage("ライブでは使用不可"),
    "notAvailableForLiveStreams": MessageLookupByLibrary.simpleMessage(
      "ライブ配信では使用できません",
    ),
    "notAvailableForPhotos": MessageLookupByLibrary.simpleMessage(
      "写真の投稿では使用できません",
    ),
    "notConnected": MessageLookupByLibrary.simpleMessage("未接続"),
    "nothingPlaying": MessageLookupByLibrary.simpleMessage("動画が見つかりません"),
    "nothingPlayingMessage": MessageLookupByLibrary.simpleMessage(
      "この画面には動画がありません。別のタブを選ぶか、動画のリンクを貼り付けてください。",
    ),
    "nothingToRestore": MessageLookupByLibrary.simpleMessage("復元する購入がありません"),
    "nothingToRestoreMessage": MessageLookupByLibrary.simpleMessage(
      "このストアアカウントで有効な Zappit Pro のサブスクリプションは見つかりませんでした。",
    ),
    "obAnimAddExtension": MessageLookupByLibrary.simpleMessage("拡張機能を追加"),
    "obAnimAdded": MessageLookupByLibrary.simpleMessage("追加済み"),
    "obAnimConnectComputer": MessageLookupByLibrary.simpleMessage("パソコンに接続"),
    "obAnimConnectPhone": MessageLookupByLibrary.simpleMessage("スマホを接続"),
    "obAnimNewCode": m15,
    "obAnimRemoteConnected": MessageLookupByLibrary.simpleMessage("リモコン接続済み"),
    "obAnimScanCode": MessageLookupByLibrary.simpleMessage(
      "スマホの Zappit アプリでこのコードを読み取ってください。",
    ),
    "obAnimTagline": MessageLookupByLibrary.simpleMessage("マウスはもういらない。"),
    "obAnimYourPhones": MessageLookupByLibrary.simpleMessage("あなたのスマホ"),
    "off": MessageLookupByLibrary.simpleMessage("オフ"),
    "offline": MessageLookupByLibrary.simpleMessage("オフライン"),
    "offlineMessage": MessageLookupByLibrary.simpleMessage(
      "インターネット接続を確認してください。Zappit は自動で再接続します。",
    ),
    "onboarding0AnimLabel": MessageLookupByLibrary.simpleMessage(
      "Zappit アプリの再生/一時停止ボタンをタップすると、ノートパソコンの動画が一時停止して再び再生される様子",
    ),
    "onboarding1AnimLabel": MessageLookupByLibrary.simpleMessage(
      "ブラウザに zappit.tv/get と入力し、Zappit 拡張機能を追加する様子",
    ),
    "onboarding1Body": m16,
    "onboarding1Title": MessageLookupByLibrary.simpleMessage(
      "まず、ブラウザに Zappit 拡張機能を追加しましょう",
    ),
    "onboarding2AnimLabel": MessageLookupByLibrary.simpleMessage(
      "ブラウザで Zappit アイコンをクリックし、スマホで QR コードを読み取る様子",
    ),
    "onboarding2Body": MessageLookupByLibrary.simpleMessage(
      "ブラウザのツールバーにある Zappit アイコンをクリックし、カメラを QR コードに向けてください。",
    ),
    "onboarding2Title": MessageLookupByLibrary.simpleMessage("QR コードを読み取る"),
    "onboardingGetStarted": MessageLookupByLibrary.simpleMessage("はじめる"),
    "onboardingIconHelp": MessageLookupByLibrary.simpleMessage(
      "Zappit アイコンが見当たらない場合",
    ),
    "onboardingIconHelpLabel": MessageLookupByLibrary.simpleMessage(
      "Zappit アイコンが見当たらない場合。よくある質問で答えを開きます",
    ),
    "onboardingNext": MessageLookupByLibrary.simpleMessage("次へ"),
    "onboardingOpenQrScanner": MessageLookupByLibrary.simpleMessage(
      "QR スキャナーを開く",
    ),
    "onboardingShareLink": MessageLookupByLibrary.simpleMessage(
      "インストール用リンクを送る",
    ),
    "onboardingStepCount": m17,
    "onboardingStepLabel": m18,
    "onboardingWelcomeBody": MessageLookupByLibrary.simpleMessage(
      "パソコンのどんな動画も操作できます。設定はかんたんな 2 ステップだけ。",
    ),
    "onboardingWelcomeTitle": MessageLookupByLibrary.simpleMessage(
      "スマホがリモコンになります",
    ),
    "openALink": MessageLookupByLibrary.simpleMessage("リンクを開く"),
    "openBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "タブを表示するには、Zappit 拡張機能の入ったブラウザを開いてください。",
    ),
    "openLinkInBrowser": MessageLookupByLibrary.simpleMessage("ブラウザでリンクを開く"),
    "openSite": m19,
    "openedIn": m20,
    "openingIn": m21,
    "pairCodeExpired": MessageLookupByLibrary.simpleMessage(
      "このコードは期限切れです。パソコンに表示された新しいコードを読み取ってください。",
    ),
    "pairCodeInvalid": MessageLookupByLibrary.simpleMessage(
      "このコードは無効になりました。パソコンに表示された新しいコードを読み取ってください。",
    ),
    "pairCodeUsed": MessageLookupByLibrary.simpleMessage(
      "このコードはすでに使用されています。パソコンに表示された新しいコードを読み取ってください。",
    ),
    "pairFailed": MessageLookupByLibrary.simpleMessage(
      "接続できませんでした。インターネット接続を確認して、もう一度お試しください。",
    ),
    "pairHowToInstall": MessageLookupByLibrary.simpleMessage("拡張機能のインストール方法"),
    "pairPhoneLimit": MessageLookupByLibrary.simpleMessage(
      "このパソコンにはすでに 3 台のスマホが接続されています。接続済みの別のスマホで Zappit を開き、「その他」の「このスマホの接続を解除」をタップしてください。そのスマホが手元にない場合は、パソコンの Zappit 拡張機能で「Reset」を使ってください。",
    ),
    "pairTitle": MessageLookupByLibrary.simpleMessage("ブラウザ拡張機能に接続"),
    "paste": MessageLookupByLibrary.simpleMessage("貼り付け"),
    "pasteALink": MessageLookupByLibrary.simpleMessage("リンクを貼り付け"),
    "pasteVideoLink": MessageLookupByLibrary.simpleMessage("動画のリンクを貼り付け"),
    "pause": MessageLookupByLibrary.simpleMessage("一時停止"),
    "paymentPending": MessageLookupByLibrary.simpleMessage("支払い保留中"),
    "paymentPendingMessage": MessageLookupByLibrary.simpleMessage(
      "ストアで支払いが確認されるとすぐに Pro が有効になります。",
    ),
    "phoneName": MessageLookupByLibrary.simpleMessage("スマホの名前"),
    "phoneNameEmpty": MessageLookupByLibrary.simpleMessage("名前を入力してください。"),
    "phoneNameMessage": MessageLookupByLibrary.simpleMessage(
      "パソコンの Zappit 拡張機能に表示されます。",
    ),
    "pickATab": MessageLookupByLibrary.simpleMessage("タブを選ぶ"),
    "pickBrowserForTabs": MessageLookupByLibrary.simpleMessage(
      "タブを表示するには、このリモコンで操作するブラウザを選んでください。",
    ),
    "pickVideosWithPro": MessageLookupByLibrary.simpleMessage(
      "Pro ならスマホで動画を選べます",
    ),
    "play": MessageLookupByLibrary.simpleMessage("再生"),
    "playInApp": MessageLookupByLibrary.simpleMessage("スマホで続きを見る"),
    "playNow": MessageLookupByLibrary.simpleMessage("今すぐ再生"),
    "playVideoFirst": MessageLookupByLibrary.simpleMessage(
      "先にブラウザで動画を再生してください",
    ),
    "playing": MessageLookupByLibrary.simpleMessage("再生中"),
    "playlist": MessageLookupByLibrary.simpleMessage("再生リスト"),
    "playlistCantRepeat": MessageLookupByLibrary.simpleMessage(
      "この再生リストはリピートできません",
    ),
    "playlistCantShuffle": MessageLookupByLibrary.simpleMessage(
      "この再生リストはシャッフルできません",
    ),
    "previousChapter": MessageLookupByLibrary.simpleMessage("前のチャプター"),
    "previousTab": MessageLookupByLibrary.simpleMessage("前のタブ"),
    "previousVideo": MessageLookupByLibrary.simpleMessage("前の動画"),
    "pricePerMonth": m22,
    "pricePerYear": m23,
    "privacyPolicy": MessageLookupByLibrary.simpleMessage("プライバシーポリシー"),
    "proBannerSubtitle": MessageLookupByLibrary.simpleMessage(
      "リモコンの力を最大限に引き出しましょう",
    ),
    "proFeatureAbLoop": MessageLookupByLibrary.simpleMessage("区間リピート使い放題"),
    "proFeatureAllSpeeds": MessageLookupByLibrary.simpleMessage("すべての再生速度"),
    "proFeatureDedicatedControllers": MessageLookupByLibrary.simpleMessage(
      "サイト専用リモコンを解放",
    ),
    "proFeatureFullLoop": MessageLookupByLibrary.simpleMessage("全体リピート使い放題"),
    "proFeatureVoiceBoost": MessageLookupByLibrary.simpleMessage(
      "Voice Boost 使い放題",
    ),
    "proPreviewActiveBanner": m24,
    "proPreviewEndedMessage": MessageLookupByLibrary.simpleMessage(
      "Zappit Pro をお試しいただきありがとうございます！登録すると、すべての Pro 機能をそのまま使い続けられます。",
    ),
    "proPreviewEndedSubtitle": m25,
    "proPreviewEndedTitle": MessageLookupByLibrary.simpleMessage(
      "Pro のお試し期間が終了しました",
    ),
    "proPreviewEndsTomorrow": MessageLookupByLibrary.simpleMessage(
      "Pro のお試しは明日終了します",
    ),
    "proPreviewStarted": m26,
    "proPreviewUntil": m27,
    "proRestored": m28,
    "proSubscriptionEnded": MessageLookupByLibrary.simpleMessage(
      "Pro のサブスクリプションが終了しました",
    ),
    "proSubtitle": MessageLookupByLibrary.simpleMessage("リモコンの力を最大限に引き出しましょう。"),
    "purchaseCancelled": MessageLookupByLibrary.simpleMessage("購入をキャンセルしました"),
    "purchaseCancelledMessage": MessageLookupByLibrary.simpleMessage(
      "請求は発生していません。いつでもやり直せます。",
    ),
    "purchaseFailed": MessageLookupByLibrary.simpleMessage("購入できませんでした"),
    "purchaseNotActivated": MessageLookupByLibrary.simpleMessage(
      "購入が有効になっていません",
    ),
    "purchaseNotActivatedMessage": MessageLookupByLibrary.simpleMessage(
      "お支払いは完了しましたが、Pro がまだ有効になっていません。「購入を復元」をお試しください。",
    ),
    "purchasesNotAllowed": MessageLookupByLibrary.simpleMessage(
      "このデバイスまたはアカウントでは購入できません。",
    ),
    "qualityNotChanged": MessageLookupByLibrary.simpleMessage("画質は変わりませんでした"),
    "rateZappit": MessageLookupByLibrary.simpleMessage("Zappit を評価"),
    "reload": MessageLookupByLibrary.simpleMessage("再読み込み"),
    "remindMe": MessageLookupByLibrary.simpleMessage("知らせる"),
    "remoteSettings": MessageLookupByLibrary.simpleMessage("リモコン設定"),
    "removeFromFavorites": m29,
    "removedFromFavorites": m30,
    "reorderHint": MessageLookupByLibrary.simpleMessage(
      "項目を長押ししてドラッグすると並べ替えられます",
    ),
    "reorderSite": m31,
    "repeatOff": MessageLookupByLibrary.simpleMessage("リピート オフ"),
    "repeatOffNotice": MessageLookupByLibrary.simpleMessage("リピート オフ"),
    "repeatOn": MessageLookupByLibrary.simpleMessage("リピート オン"),
    "repeatingPlaylist": MessageLookupByLibrary.simpleMessage(
      "この再生リストをリピート再生します",
    ),
    "replay": MessageLookupByLibrary.simpleMessage("最初から再生"),
    "restoreFailed": MessageLookupByLibrary.simpleMessage("復元できませんでした"),
    "restorePurchases": MessageLookupByLibrary.simpleMessage("購入を復元"),
    "right": MessageLookupByLibrary.simpleMessage("右"),
    "save": MessageLookupByLibrary.simpleMessage("保存"),
    "savePercent": m32,
    "searchCategories": MessageLookupByLibrary.simpleMessage("カテゴリを検索"),
    "seasonNumber": m33,
    "secondsShort": m34,
    "seekInterval": MessageLookupByLibrary.simpleMessage("スキップ間隔"),
    "select": MessageLookupByLibrary.simpleMessage("選択"),
    "selectVideoInBrowser": MessageLookupByLibrary.simpleMessage(
      "再生中の動画はありません",
    ),
    "selectVideoInBrowserMessage": MessageLookupByLibrary.simpleMessage(
      "パソコンで好きな動画をクリックして視聴を始めてください。ここにリモコンが表示されます。",
    ),
    "send": MessageLookupByLibrary.simpleMessage("送信"),
    "settings": MessageLookupByLibrary.simpleMessage("設定"),
    "showChat": MessageLookupByLibrary.simpleMessage("チャットを表示"),
    "shuffleOff": MessageLookupByLibrary.simpleMessage("シャッフル オフ"),
    "shuffleOffNotice": MessageLookupByLibrary.simpleMessage("シャッフル オフ"),
    "shuffleOn": MessageLookupByLibrary.simpleMessage("シャッフル オン"),
    "shufflingPlaylist": MessageLookupByLibrary.simpleMessage(
      "この再生リストをシャッフル再生します",
    ),
    "siteSettings": m35,
    "siteWeb": MessageLookupByLibrary.simpleMessage("ウェブ"),
    "skipAd": MessageLookupByLibrary.simpleMessage("広告をスキップ"),
    "skipIntro": MessageLookupByLibrary.simpleMessage("イントロをスキップ"),
    "sleepTimer": MessageLookupByLibrary.simpleMessage("スリープタイマー"),
    "sleepTimerLabel": MessageLookupByLibrary.simpleMessage("スリープタイマー"),
    "smallerCaptions": MessageLookupByLibrary.simpleMessage("字幕を小さく"),
    "somethingWrong": MessageLookupByLibrary.simpleMessage(
      "申し訳ありません。問題が発生しました。",
    ),
    "somethingWrongTryAgain": MessageLookupByLibrary.simpleMessage(
      "申し訳ありません。問題が発生しました。もう一度お試しください。",
    ),
    "soundBlockedMessage": MessageLookupByLibrary.simpleMessage(
      "タップして音を出す方法を確認できます。",
    ),
    "soundBlockedTitle": MessageLookupByLibrary.simpleMessage("音が出ないのはなぜ？"),
    "soundHelpTitle": MessageLookupByLibrary.simpleMessage("サウンド"),
    "speedTrialOver": m36,
    "startFreeTrial": MessageLookupByLibrary.simpleMessage("無料トライアルを開始"),
    "storeProblem": MessageLookupByLibrary.simpleMessage(
      "ストアで問題が発生しました。しばらくしてからもう一度お試しください。",
    ),
    "storeUnavailable": MessageLookupByLibrary.simpleMessage(
      "現在ストアを利用できません。しばらくしてからもう一度お試しください。",
    ),
    "subscribe": MessageLookupByLibrary.simpleMessage("登録する"),
    "success": MessageLookupByLibrary.simpleMessage("完了"),
    "support": MessageLookupByLibrary.simpleMessage("サポート"),
    "supportedSites": MessageLookupByLibrary.simpleMessage("対応サイト"),
    "supportedSitesIntro": MessageLookupByLibrary.simpleMessage(
      "これらのサイトでは、専用に作られたリモコンが使えます。ほかのサイトでは、Zappit は標準のリモコンとして動作します。",
    ),
    "tabMore": MessageLookupByLibrary.simpleMessage("その他"),
    "tabRemote": MessageLookupByLibrary.simpleMessage("リモコン"),
    "tabTabs": MessageLookupByLibrary.simpleMessage("タブ"),
    "tapToKeepPro": MessageLookupByLibrary.simpleMessage(
      "タップしてすべての Pro 機能を使い続けましょう。",
    ),
    "tellAFriend": MessageLookupByLibrary.simpleMessage("友だちに教える"),
    "termsOfService": MessageLookupByLibrary.simpleMessage("利用規約"),
    "theaterMode": MessageLookupByLibrary.simpleMessage("シアターモード"),
    "trialReminderBody": m37,
    "trialReminderChannel": MessageLookupByLibrary.simpleMessage(
      "無料トライアルのお知らせ",
    ),
    "trialReminderChannelDescription": MessageLookupByLibrary.simpleMessage(
      "無料トライアル終了前のお知らせ",
    ),
    "trialReminderMessage": MessageLookupByLibrary.simpleMessage(
      "思わぬ請求が発生しないよう、無料トライアル終了の前日にお知らせしましょうか？",
    ),
    "trialReminderNotificationTitle": MessageLookupByLibrary.simpleMessage(
      "Zappit Pro の無料トライアルがまもなく終了します",
    ),
    "trialReminderTitle": MessageLookupByLibrary.simpleMessage("トライアル終了のお知らせ"),
    "trialTerms": m38,
    "trialTermsDays": m39,
    "trialTermsMonths": m40,
    "trialTermsYears": m41,
    "tryAgain": MessageLookupByLibrary.simpleMessage("再試行"),
    "turnOffAbFirst": MessageLookupByLibrary.simpleMessage(
      "先に区間リピートをオフにしてください",
    ),
    "tutorial": MessageLookupByLibrary.simpleMessage("使い方ガイド"),
    "unavailable": MessageLookupByLibrary.simpleMessage("利用できません"),
    "undo": MessageLookupByLibrary.simpleMessage("元に戻す"),
    "unmute": MessageLookupByLibrary.simpleMessage("ミュート解除"),
    "untitled": MessageLookupByLibrary.simpleMessage("無題"),
    "up": MessageLookupByLibrary.simpleMessage("上"),
    "upNext": MessageLookupByLibrary.simpleMessage("次の動画"),
    "upNextCountdown": m42,
    "upgrade": MessageLookupByLibrary.simpleMessage("アップグレード"),
    "videoLengthUnknown": MessageLookupByLibrary.simpleMessage(
      "この動画の長さがわかりません",
    ),
    "videoQuality": MessageLookupByLibrary.simpleMessage("画質"),
    "view": MessageLookupByLibrary.simpleMessage("表示"),
    "voiceBoostDuringAd": MessageLookupByLibrary.simpleMessage(
      "広告中は Voice Boost を使用できません",
    ),
    "voiceBoostOff": MessageLookupByLibrary.simpleMessage("Voice Boost オフ"),
    "voiceBoostOn": MessageLookupByLibrary.simpleMessage("Voice Boost オン"),
    "voiceBoostTrialLeft": m43,
    "voiceBoostTrialOver": m44,
    "voiceBoostTurnedOn": MessageLookupByLibrary.simpleMessage(
      "Voice Boost オン：声が聞き取りやすくなります",
    ),
    "voiceBoostUnsupported": MessageLookupByLibrary.simpleMessage(
      "この動画は Voice Boost に対応していません",
    ),
    "volumeDown": MessageLookupByLibrary.simpleMessage("音量を下げる"),
    "volumeUp": MessageLookupByLibrary.simpleMessage("音量を上げる"),
    "waitingForBrowser": MessageLookupByLibrary.simpleMessage("ブラウザを待っています…"),
    "watchAgain": MessageLookupByLibrary.simpleMessage("もう一度見る"),
    "watching": MessageLookupByLibrary.simpleMessage("視聴中"),
    "welcomeToPro": m45,
    "windowNumber": m46,
    "yearly": MessageLookupByLibrary.simpleMessage("年額"),
    "yourBrowser": MessageLookupByLibrary.simpleMessage("ブラウザ"),
    "youreConnected": MessageLookupByLibrary.simpleMessage("接続しました！"),
    "youreOffline": MessageLookupByLibrary.simpleMessage("オフラインです"),
    "youtubeHome": MessageLookupByLibrary.simpleMessage("YouTube ホーム"),
    "ytCourses": MessageLookupByLibrary.simpleMessage("コース"),
    "ytDownloads": MessageLookupByLibrary.simpleMessage("オフライン"),
    "ytExplore": MessageLookupByLibrary.simpleMessage("探索"),
    "ytGaming": MessageLookupByLibrary.simpleMessage("ゲーム"),
    "ytHistory": MessageLookupByLibrary.simpleMessage("履歴"),
    "ytHype": MessageLookupByLibrary.simpleMessage("Hype"),
    "ytLikedVideos": MessageLookupByLibrary.simpleMessage("高く評価した動画"),
    "ytLive": MessageLookupByLibrary.simpleMessage("ライブ"),
    "ytMemberships": MessageLookupByLibrary.simpleMessage("メンバーシップ"),
    "ytMusic": MessageLookupByLibrary.simpleMessage("音楽"),
    "ytPlaylists": MessageLookupByLibrary.simpleMessage("再生リスト"),
    "ytPodcasts": MessageLookupByLibrary.simpleMessage("ポッドキャスト"),
    "ytShorts": MessageLookupByLibrary.simpleMessage("ショート"),
    "ytSubscriptions": MessageLookupByLibrary.simpleMessage("登録チャンネル"),
    "ytVideos": MessageLookupByLibrary.simpleMessage("動画"),
    "ytWatchLater": MessageLookupByLibrary.simpleMessage("後で見る"),
    "ytYou": MessageLookupByLibrary.simpleMessage("マイページ"),
  };
}
