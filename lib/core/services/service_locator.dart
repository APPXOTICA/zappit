import 'package:get_it/get_it.dart';
import 'package:zappit/generated/l10n.dart';
import 'package:logger/logger.dart';


GetIt getIt = GetIt.instance;

/// Make I10n to be accessible globally
/// To use translation w/o context
void registerSingletons() {
  getIt.registerSingleton<S>(S());
  getIt.registerSingleton<Logger>(Logger());
}
