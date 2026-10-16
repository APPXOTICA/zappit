import 'package:flutter_test/flutter_test.dart';
import 'package:zappit/core/utils/link_utils.dart';
import 'package:zappit/protocol/protocol.dart';

void main() {
  group('normalize', () {
    test('adds https when there is no scheme and trims', () {
      expect(LinkUtils.normalize('  youtube.com/watch?v=abc ').toString(), 'https://youtube.com/watch?v=abc');
    });

    test('accepts http and https only', () {
      expect(LinkUtils.normalize('http://example.com'), isNotNull);
      expect(LinkUtils.normalize('javascript:alert(1)'), isNull);
      expect(LinkUtils.normalize('file:///etc/passwd'), isNull);
      expect(LinkUtils.normalize('ftp://example.com'), isNull);
    });

    test('rejects text without a host', () {
      expect(LinkUtils.normalize(''), isNull);
      expect(LinkUtils.normalize('hello'), isNull);
    });
  });

  test('first URL in shared text', () {
    expect(
      LinkUtils.firstUrlIn('Watch this! https://youtu.be/abc123?si=x.').toString(),
      'https://youtu.be/abc123?si=x',
    );
    expect(LinkUtils.firstUrlIn('no link here'), isNull);
  });

  test('native app link adds t= for YouTube only', () {
    final yt = Uri.parse('https://www.youtube.com/watch?v=abc');
    expect(LinkUtils.nativeAppUrl(Site.youtube, yt, 83.7).queryParameters['t'], '83s');
    final nf = Uri.parse('https://www.netflix.com/watch/80001');
    expect(LinkUtils.nativeAppUrl(Site.netflix, nf, 83), nf);
  });
}
