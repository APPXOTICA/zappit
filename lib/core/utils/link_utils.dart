import 'package:zappit/protocol/protocol.dart';

/// Link rules for "open in browser", shared text and "open in native app".
abstract final class LinkUtils {
  // Shared URLs are ASCII: text glued after one (「…」, Korean) is not part of it.
  static final _urlInText = RegExp(r'https?://[^\s<>"\u0080-\uFFFF]+', caseSensitive: false);

  /// Trims, adds `https://` when there is no scheme, and accepts only
  /// http/https with a host. Returns null for anything else (javascript:, file: …).
  static Uri? normalize(String input) {
    var text = input.trim();
    if (text.isEmpty) return null;
    final hasScheme = RegExp(r'^[a-zA-Z][a-zA-Z0-9+.-]*:').hasMatch(text);
    if (!hasScheme) text = 'https://$text';
    final uri = Uri.tryParse(text);
    if (uri == null) return null;
    if (uri.scheme != 'http' && uri.scheme != 'https') return null;
    if (uri.host.isEmpty || !uri.host.contains('.')) return null;
    return uri;
  }

  /// The first http(s) URL in shared text ("Title https://…").
  static Uri? firstUrlIn(String text) {
    final match = _urlInText.firstMatch(text);
    if (match == null) return null;
    var url = match.group(0)!;
    // Trailing punctuation from sentences.
    url = url.replaceFirst(RegExp(r'[.,;:!?)\]]+$'), '');
    return normalize(url);
  }

  /// URL that opens the same media in the site's app at [seconds] when the
  /// platform supports it (YouTube `t=`); otherwise the URL as is.
  static Uri nativeAppUrl(Site site, Uri url, double seconds) {
    final t = seconds.floor();
    if (site == Site.youtube && t > 0) {
      final params = Map<String, String>.from(url.queryParameters)..['t'] = '${t}s';
      return url.replace(queryParameters: params);
    }
    return url;
  }
}
