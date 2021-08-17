import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:objectbox/objectbox.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:shop_order_app/objectbox.g.dart';

@module
abstract class StoreInjectableModule {
  @preResolve
  @lazySingleton
  Future<Store> get store async {
    Directory directory = await getApplicationDocumentsDirectory();
    return Store(
      getObjectBoxModel(),
      directory: join(directory.path, 'objectbox'),
    );
  }
}
