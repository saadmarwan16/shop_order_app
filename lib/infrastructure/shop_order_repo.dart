import 'package:injectable/injectable.dart';
import 'package:shop_order_app/domain/entities.dart';
import 'package:shop_order_app/domain/i_shop_order_repo.dart';
import 'package:shop_order_app/infrastructure/shop_order_local_data_source.dart';

@LazySingleton(as: IShopOrderRepo)
class ShopOrderRepo implements IShopOrderRepo {
  final IShopOrderLocalDataSource _shopOrderLocalDataSource;

  ShopOrderRepo(this._shopOrderLocalDataSource);

  @override
  void createNewShopOrder() {
    _shopOrderLocalDataSource.createNewShopOrder();
  }

  @override
  void createNewUser() {
    _shopOrderLocalDataSource.createNewUser();
  }

  @override
  List<ShopOrder> getAllShopOrders() {
    return _shopOrderLocalDataSource.getAllShopOrders();
  }

  @override
  void deleteShopOrder(int id) {
    _shopOrderLocalDataSource.deleteShopOrder(id);
  }

  @override
  List<ShopOrder> sortShopOrder(int columnIndex, bool isAscending) {
    return _shopOrderLocalDataSource.sortShopOrder(columnIndex, isAscending);
  }
}
