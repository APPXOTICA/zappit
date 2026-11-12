import 'package:intl/intl.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

/// Whole percent saved by paying for the year instead of twelve months, from
/// the store prices of this user's country (they differ per country). Null
/// when there is nothing to compare or the yearly plan is not cheaper.
int? yearlySavingsPercent({required double monthly, required double yearly}) {
  if (monthly <= 0 || yearly <= 0) return null;
  final percent = ((1 - yearly / (monthly * 12)) * 100).round();
  return percent > 0 ? percent : null;
}

/// Same, for two store products (compared only when sold in one currency).
int? savingsPercentOf(StoreProduct monthly, StoreProduct yearly) {
  if (monthly.currencyCode != yearly.currencyCode) return null;
  return yearlySavingsPercent(monthly: monthly.price, yearly: yearly.price);
}

/// "$2.50": the yearly price per month, in the store's currency.
String monthlyEquivalent(StoreProduct yearly) => NumberFormat.simpleCurrency(name: yearly.currencyCode).format(yearly.price / 12);


/// First charge date for a free introductory period starting [from].
DateTime trialEndDate(IntroductoryPrice intro, DateTime from) {
  final n = intro.periodNumberOfUnits;
  return switch (intro.periodUnit) {
    PeriodUnit.day => from.add(Duration(days: n)),
    PeriodUnit.week => from.add(Duration(days: 7 * n)),
    PeriodUnit.month => DateTime(from.year, from.month + n, from.day, from.hour, from.minute),
    PeriodUnit.year => DateTime(from.year + n, from.month, from.day, from.hour, from.minute),
    PeriodUnit.unknown => from,
  };
}
