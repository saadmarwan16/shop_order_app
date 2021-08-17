part of 'shop_order_bloc.dart';

enum ShopOrderStatus { initial, success }
enum ShopOrderColumnIndex { id, price }
enum ShopOrderOrder { ascending, descending }

@freezed
class ShopOrderState with _$ShopOrderState {
  const factory ShopOrderState({
    required ShopOrderStatus status,
    required List<ShopOrder> shopOrders,
    required int shopOrderColumnIndex,
    required bool shopOrderIsAscending,
  }) = _ShopOrderState;

  factory ShopOrderState.initial() {
    return ShopOrderState(
      status: ShopOrderStatus.initial,
      shopOrders: <ShopOrder>[],
      shopOrderColumnIndex: 0,
      shopOrderIsAscending: true,
    );
  }
}

// @immutable
// class ShopOrderState extends Equatable {
//   final ShopOrderStatus status;
//   final List<ShopOrder> shopOrders;
//   final int shopOrderColumnIndex;
//   final bool shopOrderIsAscending;

//   const ShopOrderState({
//     this.status = ShopOrderStatus.initial,
//     this.shopOrders = const <ShopOrder>[],
//     this.shopOrderColumnIndex = 0,
//     this.shopOrderIsAscending = true,
//   });

//   ShopOrderState copyWith({
//     ShopOrderStatus? status,
//     List<ShopOrder>? shopOrders,
//     shopOrderColumnIndex,
//     shopOrderIsAscending,
//   }) {
//     return ShopOrderState(
//       status: status ?? this.status,
//       shopOrders: shopOrders ?? this.shopOrders,
//       shopOrderColumnIndex: shopOrderColumnIndex ?? this.shopOrderColumnIndex,
//       shopOrderIsAscending: shopOrderIsAscending ?? this.shopOrderIsAscending,
//     );
//   }

//   @override
//   List<Object?> get props => [status, shopOrders];
// }
