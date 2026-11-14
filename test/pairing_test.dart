import 'package:flutter_test/flutter_test.dart';
import 'package:zappit/features/pairing/pairing_service.dart';
import 'package:zappit/features/pairing/phone_identity.dart';

void main() {
  test('reads the code from the extension QR link', () {
    expect(pairingCodeFrom('https://zappit.tv/p/abcd2345ef'), 'ABCD2345EF');
    expect(pairingCodeFrom(' https://zappit.tv/p/ABCD2345EF '), 'ABCD2345EF');
    expect(pairingCodeFrom('https://evil.example/p/ABCD2345EF'), isNull);
    expect(pairingCodeFrom('https://zappit.tv/get'), isNull);
    expect(pairingCodeFrom('https://zappit.tv/p/AB'), isNull);
    expect(pairingCodeFrom(null), isNull);
  });

  // Same values as functions/device.js (integrityNonceFor, phoneIdFor).
  test('hashes match the server', () {
    expect(PhoneIdentity.integrityNonceFor('abc123'), 'jm2nLxUljxOFYIr5n_A833yPhWVThUo56NzkediVqZQ');
    const phone = PhoneIdentity(marker: 'ABCD-1234-XYZ', name: 'iPhone', platform: 'ios');
    expect(phone.phoneId, '8412ece422c4ab254c55982a8c173820c286f3e28b6ba9f4fc344250aa82d449');
  });
}
