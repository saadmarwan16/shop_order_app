import 'package:shop_order_app/domain/entities.dart';

abstract class IShopOrderRepo {
  void createNewShopOrder();

  void createNewUser();

  List<ShopOrder> getAllShopOrders();

  void deleteShopOrder(int id);

  List<ShopOrder> sortShopOrder(int columnIndex, bool isAscending);
}
