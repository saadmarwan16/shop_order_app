import 'package:faker/faker.dart';
import 'package:injectable/injectable.dart';

@module
abstract class StringInjectableModule {
  @lazySingleton
  String get getString => Faker().person.name();
}
