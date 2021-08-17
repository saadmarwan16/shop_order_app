// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:objectbox/objectbox.dart' as _i3;

import 'application/shop_order/shop_order_bloc.dart' as _i8;
import 'domain/entities.dart' as _i4;
import 'domain/i_shop_order_repo.dart' as _i6;
import 'infrastructure/int_injectable_module.dart' as _i11;
import 'infrastructure/shop_order_local_data_source.dart' as _i5;
import 'infrastructure/shop_order_repo.dart' as _i7;
import 'infrastructure/store_injectable_module.dart' as _i9;
import 'infrastructure/string_injectable_module.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final storeInjectableModule = _$StoreInjectableModule();
  final stringInjectableModule = _$StringInjectableModule();
  final intInjectableModule = _$IntInjectableModule();
  await gh.lazySingletonAsync<_i3.Store>(() => storeInjectableModule.store,
      preResolve: true);
  gh.lazySingleton<String>(() => stringInjectableModule.getString);
  gh.lazySingleton<int>(() => intInjectableModule.getInt);
  gh.lazySingleton<_i4.Customer>(
      () => _i4.Customer(id: get<int>(), name: get<String>()));
  gh.lazySingleton<_i5.IShopOrderLocalDataSource>(() =>
      _i5.ShopOrderLocalDataSource(
          customer: get<_i4.Customer>(), store: get<_i3.Store>()));
  gh.lazySingleton<_i6.IShopOrderRepo>(
      () => _i7.ShopOrderRepo(get<_i5.IShopOrderLocalDataSource>()));
  gh.factory<_i8.ShopOrderBloc>(
      () => _i8.ShopOrderBloc(shopOrderRepo: get<_i6.IShopOrderRepo>()));
  return get;
}

class _$StoreInjectableModule extends _i9.StoreInjectableModule {}

class _$StringInjectableModule extends _i10.StringInjectableModule {}

class _$IntInjectableModule extends _i11.IntInjectableModule {}
