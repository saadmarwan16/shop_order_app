part of 'shop_order_bloc.dart';

@freezed
class ShopOrderEvent with _$ShopOrderEvent {
  const factory ShopOrderEvent.onPageStarted() = OnPageStarted;
  const factory ShopOrderEvent.onAddUserPressed() = OnAddUserPressed;
  const factory ShopOrderEvent.onAddShopOrderPressed() = OnAddShopOrderPressed;
  const factory ShopOrderEvent.onDeleteShopOrderPressed(int id) =
      OnDeleteShopOrderPressed;
  const factory ShopOrderEvent.onSortShopOrderPressed(
      int columnIndex, bool isAscending) = OnSortShopOrderPressed;
}
