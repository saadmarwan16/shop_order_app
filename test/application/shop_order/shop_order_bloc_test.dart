import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:shop_order_app/application/shop_order/shop_order_bloc.dart';
import 'package:mockito/mockito.dart';
import 'package:mocktail/mocktail.dart' as mocktail;
import 'package:shop_order_app/domain/entities.dart';
import 'package:shop_order_app/domain/i_shop_order_repo.dart';
import 'shop_order_bloc_test.mocks.dart';

@GenerateMocks([IShopOrderRepo])
void main() {
  late MockIShopOrderRepo mockShopOrderRepo;
  final tShopOrder = ShopOrder(price: 450);
  tShopOrder.customer.target = Customer(id: 1, name: 'Marwan Sa-ad');

  setUpAll(() {
    mocktail
        .registerFallbackValue<ShopOrderEvent>(ShopOrderEvent.onPageStarted());
  });

  blocTest<ShopOrderBloc, ShopOrderState>(
    'Emits [ShopOrderState] when ShopOrderEvent.onPageStarted is called',
    setUp: () => mockShopOrderRepo = MockIShopOrderRepo(),
    build: () => ShopOrderBloc(shopOrderRepo: mockShopOrderRepo),
    act: (bloc) {
      when(mockShopOrderRepo.getAllShopOrders())
          .thenAnswer((_) => [tShopOrder]);
      return bloc.add(ShopOrderEvent.onPageStarted());
    },
    expect: () => [
      ShopOrderState(
        status: ShopOrderStatus.success,
        shopOrders: [tShopOrder],
        shopOrderColumnIndex: 0,
        shopOrderIsAscending: true,
      ),
    ],
    verify: (_) {
      verify(mockShopOrderRepo.getAllShopOrders());
      verifyNoMoreInteractions(mockShopOrderRepo);
    },
  );

  blocTest<ShopOrderBloc, ShopOrderState>(
    'Create a new user and discard the current one when add new user is pressed',
    setUp: () => mockShopOrderRepo = MockIShopOrderRepo(),
    build: () => ShopOrderBloc(shopOrderRepo: mockShopOrderRepo),
    act: (bloc) {
      when(mockShopOrderRepo.createNewUser()).thenAnswer((_) => null);
      return bloc.add(ShopOrderEvent.onAddUserPressed());
    },
    expect: () => [],
    verify: (_) {
      verify(mockShopOrderRepo.createNewUser());
      verifyNoMoreInteractions(mockShopOrderRepo);
    },
  );

  blocTest<ShopOrderBloc, ShopOrderState>(
    'Create a new shop order when add new shop order is pressed',
    setUp: () => mockShopOrderRepo = MockIShopOrderRepo(),
    build: () => ShopOrderBloc(shopOrderRepo: mockShopOrderRepo),
    act: (bloc) {
      when(mockShopOrderRepo.createNewShopOrder()).thenAnswer((_) => null);
      when(mockShopOrderRepo.getAllShopOrders())
          .thenAnswer((_) => [tShopOrder]);
      return bloc.add(ShopOrderEvent.onAddShopOrderPressed());
    },
    expect: () => [
      ShopOrderState(
        status: ShopOrderStatus.success,
        shopOrders: [tShopOrder],
        shopOrderColumnIndex: 0,
        shopOrderIsAscending: true,
      ),
    ],
    verify: (_) {
      verify(mockShopOrderRepo.createNewShopOrder());
      verify(mockShopOrderRepo.getAllShopOrders());
      verifyNoMoreInteractions(mockShopOrderRepo);
    },
  );

  blocTest<ShopOrderBloc, ShopOrderState>(
    'Should delete an order when the delete button is pressed for a shop order',
    setUp: () => mockShopOrderRepo = MockIShopOrderRepo(),
    build: () => ShopOrderBloc(shopOrderRepo: mockShopOrderRepo),
    act: (bloc) {
      when(mockShopOrderRepo.deleteShopOrder(tShopOrder.id))
          .thenAnswer((_) => null);
      when(mockShopOrderRepo.getAllShopOrders())
          .thenAnswer((_) => [tShopOrder]);
      return bloc.add(ShopOrderEvent.onDeleteShopOrderPressed(tShopOrder.id));
    },
    expect: () => [
      ShopOrderState(
        status: ShopOrderStatus.success,
        shopOrders: [tShopOrder],
        shopOrderColumnIndex: 0,
        shopOrderIsAscending: true,
      ),
    ],
    verify: (_) {
      verify(mockShopOrderRepo.deleteShopOrder(tShopOrder.id));
      verify(mockShopOrderRepo.getAllShopOrders());
      verifyNoMoreInteractions(mockShopOrderRepo);
    },
  );

  blocTest<ShopOrderBloc, ShopOrderState>(
    'Should call sort shop orders and get the newly sorted orders when sort shop orders is called',
    setUp: () => mockShopOrderRepo = MockIShopOrderRepo(),
    build: () => ShopOrderBloc(shopOrderRepo: mockShopOrderRepo),
    act: (bloc) {
      when(mockShopOrderRepo.sortShopOrder(0, false))
          .thenAnswer((_) => [tShopOrder]);
      return bloc.add(ShopOrderEvent.onSortShopOrderPressed(0, false));
    },
    expect: () => [
      ShopOrderState(
        status: ShopOrderStatus.success,
        shopOrders: [tShopOrder],
        shopOrderColumnIndex: 0,
        shopOrderIsAscending: false,
      ),
    ],
    verify: (_) {
      verify(mockShopOrderRepo.sortShopOrder(0, false));
      verifyNoMoreInteractions(mockShopOrderRepo);
    },
  );
}
