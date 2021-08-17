import 'package:faker/faker.dart';
import 'package:injectable/injectable.dart';
import 'package:objectbox/objectbox.dart';
import 'package:shop_order_app/domain/entities.dart';
import 'package:shop_order_app/objectbox.g.dart';

abstract class IShopOrderLocalDataSource {
  void createNewShopOrder();

  void createNewUser();

  List<ShopOrder> getAllShopOrders();

  void deleteShopOrder(int id);

  List<ShopOrder> sortShopOrder(int columnIndex, bool isAscending);
}

@LazySingleton(as: IShopOrderLocalDataSource)
class ShopOrderLocalDataSource implements IShopOrderLocalDataSource {
  Customer customer;
  Store store;

  ShopOrderLocalDataSource({
    required this.customer,
    required this.store,
  });

  @override
  void createNewShopOrder() {
    final order =
        ShopOrder(price: Faker().randomGenerator.integer(500, min: 10));
    order.customer.target = customer;
    store.box<ShopOrder>().put(order);
  }

  @override
  void createNewUser() {
    customer = Customer(name: Faker().person.name());
  }

  @override
  List<ShopOrder> getAllShopOrders() {
    return store.box<ShopOrder>().query().build().find();
  }

  @override
  void deleteShopOrder(int id) {
    store.box<ShopOrder>().remove(id);
  }

  @override
  List<ShopOrder> sortShopOrder(int columnIndex, bool isAscending) {
    final shopOrderQuery = store.box<ShopOrder>().query();
    shopOrderQuery.order(columnIndex == 0 ? ShopOrder_.id : ShopOrder_.price,
        flags: isAscending ? 0 : Order.descending);

    return shopOrderQuery.build().find();
  }
}
