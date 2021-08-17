import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
Future<void> configureInjection(String env) async {
  await $initGetIt(getIt, environment: env);
}

abstract class Env {
  static const dev = 'dev';
  static const profile = 'profile';
  static const prod = 'prod';
}
