import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:shop_order_app/application/shop_order/shop_order_bloc.dart';
import 'package:shop_order_app/flavor_config.dart';

class OrderDataTable extends StatelessWidget {
  final ShopOrderState state;

  const OrderDataTable({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SingleChildScrollView(
        child: DataTable(
          sortColumnIndex: state.shopOrderColumnIndex,
          sortAscending: state.shopOrderIsAscending,
          decoration:
              BoxDecoration(color: Provider.of<FlavorConfig>(context).color),
          columns: [
            DataColumn(
              label: Text('ID'),
              onSort: (columnIndex, isAscending) {
                BlocProvider.of<ShopOrderBloc>(context).add(
                    ShopOrderEvent.onSortShopOrderPressed(
                        columnIndex, isAscending));
              },
            ),
            DataColumn(
              label: Text('Customer'),
            ),
            DataColumn(
              label: Text('Price'),
              numeric: true,
              onSort: (columnIndex, isAscending) {
                BlocProvider.of<ShopOrderBloc>(context).add(
                    ShopOrderEvent.onSortShopOrderPressed(
                        columnIndex, isAscending));
              },
            ),
            DataColumn(
              label: Container(),
            ),
          ],
          rows: state.shopOrders.map((order) {
            return DataRow(
              cells: [
                DataCell(
                  Text(order.id.toString()),
                ),
                DataCell(
                  Text(order.customer.target?.name ?? 'NONE'),
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Material(
                            child: ListView(
                              children: order.customer.target!.orders
                                  .map(
                                    (_) => ListTile(
                                      title: Text(
                                          '${_.id}    ${_.customer.target?.name}    \$${_.price}'),
                                    ),
                                  )
                                  .toList(),
                            ),
                          );
                        });
                  },
                ),
                DataCell(
                  Text(
                    '\$${order.price}',
                  ),
                ),
                DataCell(
                  Icon(Icons.delete),
                  onTap: () {
                    BlocProvider.of<ShopOrderBloc>(context)
                        .add(ShopOrderEvent.onDeleteShopOrderPressed(order.id));
                  },
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:objectbox/objectbox.dart';

// import 'package:shop_order_app/domain/entities.dart';

// class OrderDataTable extends StatefulWidget {
//   final void Function(int columnIndex, bool ascending) onSort;
//   final List<ShopOrder> orders;
//   final Store store;

//   const OrderDataTable({
//     Key? key,
//     required this.onSort,
//     required this.orders,
//     required this.store,
//   }) : super(key: key);

//   @override
//   _OrderDataTableState createState() => _OrderDataTableState();
// }

// class _OrderDataTableState extends State<OrderDataTable> {
//   bool _sortAscending = true;
//   int _sortColumnIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: SingleChildScrollView(
//         child: DataTable(
//           sortColumnIndex: _sortColumnIndex,
//           sortAscending: _sortAscending,
//           columns: [
//             DataColumn(
//               label: Text('ID'),
//               onSort: _onDataColumnSort,
//             ),
//             DataColumn(
//               label: Text('Customer'),
//             ),
//             DataColumn(
//               label: Text('Price'),
//               numeric: true,
//               onSort: _onDataColumnSort,
//             ),
//             DataColumn(
//               label: Container(),
//             ),
//           ],
//           rows: widget.orders.map((order) {
//             return DataRow(
//               cells: [
//                 DataCell(
//                   Text(order.id.toString()),
//                 ),
//                 DataCell(
//                   Text(order.customer.target?.name ?? 'NONE'),
//                   onTap: () {
//                     showModalBottomSheet(
//                         context: context,
//                         builder: (context) {
//                           return Material(
//                             child: ListView(
//                               children: order.customer.target!.orders
//                                   .map(
//                                     (_) => ListTile(
//                                       title: Text(
//                                           '${_.id}    ${_.customer.target?.name}    \$${_.price}'),
//                                     ),
//                                   )
//                                   .toList(),
//                             ),
//                           );
//                         });
//                   },
//                 ),
//                 DataCell(
//                   Text(
//                     '\$${order.price}',
//                   ),
//                 ),
//                 DataCell(
//                   Icon(Icons.delete),
//                   onTap: () {
//                     widget.store.box<ShopOrder>().remove(order.id);
//                   },
//                 ),
//               ],
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }

//   void _onDataColumnSort(int columnIndex, bool ascending) {
//     setState(() {
//       _sortColumnIndex = columnIndex;
//       _sortAscending = ascending;
//     });
//     widget.onSort(columnIndex, ascending);
//   }
// }
