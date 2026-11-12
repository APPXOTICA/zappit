import 'package:flutter_test/flutter_test.dart';
import 'package:zappit/features/purchase/pro_pricing.dart';

void main() {
  test('savings are computed from the real prices and rounded', () {
    expect(yearlySavingsPercent(monthly: 5.99, yearly: 29.99), 58);
    expect(yearlySavingsPercent(monthly: 5.99, yearly: 34.99), 51);
    expect(yearlySavingsPercent(monthly: 1000, yearly: 5000), 58);
  });

  test('no savings when yearly is not cheaper or prices are missing', () {
    expect(yearlySavingsPercent(monthly: 2, yearly: 24), isNull);
    expect(yearlySavingsPercent(monthly: 0, yearly: 24), isNull);
  });
}
