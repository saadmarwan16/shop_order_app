import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'package:shop_order_app/domain/entities.dart';
import 'package:shop_order_app/domain/i_shop_order_repo.dart';

part 'shop_order_event.dart';
part 'shop_order_state.dart';

part 'shop_order_bloc.freezed.dart';

@injectable
class ShopOrderBloc extends Bloc<ShopOrderEvent, ShopOrderState> {
  final IShopOrderRepo shopOrderRepo;

  ShopOrderBloc({
    required this.shopOrderRepo,
  }) : super(ShopOrderState.initial());

  @override
  Stream<ShopOrderState> mapEventToState(
    ShopOrderEvent event,
  ) async* {
    yield* event.map(
      onPageStarted: (e) async* {
        final store = shopOrderRepo.getAllShopOrders();

        yield state.copyWith(
          status: ShopOrderStatus.success,
          shopOrders: store,
        );
      },
      onAddUserPressed: (e) async* {
        shopOrderRepo.createNewUser();
      },
      onAddShopOrderPressed: (e) async* {
        shopOrderRepo.createNewShopOrder();
        yield state.copyWith(
          shopOrders: shopOrderRepo.getAllShopOrders(),
          status: ShopOrderStatus.success,
        );
      },
      onDeleteShopOrderPressed: (e) async* {
        shopOrderRepo.deleteShopOrder(e.id);
        yield state.copyWith(
          shopOrders: shopOrderRepo.getAllShopOrders(),
          status: ShopOrderStatus.success,
        );
      },
      onSortShopOrderPressed: (e) async* {
        yield state.copyWith(
          shopOrders: shopOrderRepo.sortShopOrder(e.columnIndex, e.isAscending),
          status: ShopOrderStatus.success,
          shopOrderColumnIndex: e.columnIndex,
          shopOrderIsAscending: e.isAscending,
        );
      },
    );
  }
}
