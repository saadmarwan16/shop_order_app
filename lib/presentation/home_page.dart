import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'package:shop_order_app/application/shop_order/shop_order_bloc.dart';
import 'package:shop_order_app/flavor_config.dart';
import 'package:shop_order_app/injection.dart';

import 'order_data_table.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ShopOrderBloc>()..add(ShopOrderEvent.onPageStarted()),
      child: BlocBuilder<ShopOrderBloc, ShopOrderState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                Provider.of<FlavorConfig>(context).appTitle,
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.person_add_alt),
                  onPressed: () {
                    context
                        .read<ShopOrderBloc>()
                        .add(ShopOrderEvent.onAddUserPressed());
                  },
                ),
                IconButton(
                  icon: Icon(Icons.attach_money),
                  onPressed: () {
                    context
                        .read<ShopOrderBloc>()
                        .add(ShopOrderEvent.onAddShopOrderPressed());
                  },
                ),
              ],
            ),
            body: OrderDataTable(state: state),
          );
        },
      ),
    );
  }
}


// import 'package:faker/faker.dart';
// import 'package:flutter/material.dart';
// import 'package:objectbox/objectbox.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:path/path.dart';
// import 'package:shop_order_app/domain/entities.dart';
// import 'package:shop_order_app/objectbox.g.dart';

// import 'order_data_table.dart';

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final faker = Faker();

//   late Store _store;
//   bool hasBeenInitialized = false;

//   late Customer _customer;

//   late Stream<List<ShopOrder>> _stream;

//   @override
//   void initState() {
//     super.initState();
//     setNewCustomer();
//     getApplicationDocumentsDirectory().then((dir) {
//       _store = Store(
//         getObjectBoxModel(),
//         directory: join(dir.path, 'objectbox'),
//       );

//       setState(() {
//         _stream = _store
//             .box<ShopOrder>()
//             .query()
//             .watch(triggerImmediately: true)
//             .map((query) => query.find());
//         hasBeenInitialized = true;
//       });
//     });
//   }

//   @override
//   void dispose() {
//     _store.close();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Orders App'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.person_add_alt),
//             onPressed: setNewCustomer,
//           ),
//           IconButton(
//             icon: Icon(Icons.attach_money),
//             onPressed: addFakeOrderForCurrentCustomer,
//           ),
//         ],
//       ),
//       body: !hasBeenInitialized  ? Center(child: CircularProgressIndicator())
//           : StreamBuilder<List<ShopOrder>>(
//               stream: _stream,
//               builder: (context, snapshot) {
//                 if (!snapshot.hasData) {
//                   return Center(child: CircularProgressIndicator());
//                 }

//                 return OrderDataTable(
//                   orders: snapshot.data!,
//                   store: _store,
//                   onSort: (columnIndex, ascending) {
//                     final newQueryBuilder = _store.box<ShopOrder>().query();
//                     final sortField =
//                         columnIndex == 0 ? ShopOrder_.id : ShopOrder_.price;
//                     newQueryBuilder.order(sortField,
//                         flags: ascending ? 0 : Order.descending);

//                     setState(() {
//                       _stream = newQueryBuilder
//                           .watch(triggerImmediately: true)
//                           .map((query) => query.find());
//                     });
//                   },
//                 );
//               }),
//     );
//   }

//   void setNewCustomer() {
//     _customer = Customer(name: faker.person.name());
//   }

//   void addFakeOrderForCurrentCustomer() {
//     final order = ShopOrder(price: faker.randomGenerator.integer(500, min: 10));
//     order.customer.target = _customer;
//     _store.box<ShopOrder>().put(order);
//   }
// }
