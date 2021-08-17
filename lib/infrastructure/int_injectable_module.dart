import 'package:injectable/injectable.dart';

@module
abstract class IntInjectableModule {
  @lazySingleton
  int get getInt => 0;
}
