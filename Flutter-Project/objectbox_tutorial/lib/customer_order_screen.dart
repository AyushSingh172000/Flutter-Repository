//
// import 'dart:io';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:objectbox_tutorial/model/order_model.dart';
//
// import 'objectbox.g.dart';
//
// class CustomerOrderScreen extends StatefulWidget{
//   const CustomerOrderScreen({Key? key}) : super(key: key);
//
//   @override
//   State<StatefulWidget> createState() => _CustomerOrderScreenState();
//   }
//   class _CustomerOrderScreenState extends State<CustomerOrderScreen>{
//   Store? _store;
//   Box<OrderModel>? orderBox;
//   Stream? stream;
//
//   @override
//   void initState() {
//     super.initState();
//     final syncServerIp = Platform.isAndroid ? '10.0.2.2' : '127.0.0.1';
//
//     openStore().then((Store store){
//       _store = store;
//       Sync.client(
//           store,
//         'ws://$syncServerIp:9999',
//         SyncCredentials.none(),
//       ).start();
//
//       orderBox = store.box<OrderModel>();
//       stream = _store?.watch<OrderModel>();
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Customer Orders'),
//       ),
//       body: Center(
//         child: StreamBuilder<void>(
//             stream: stream,
//             builder: (context, AsyncSnapshot<void> snapshot){
//               List<OrderModel>? orders =
//                   orderBox?.getAll().reversed.toList()?? [];
//
//               if (orders.isNotEmpty){
//                 return ListView.separated(
//                     itemBuilder: (BuildContext context, int index){
//                       final children = <Widget>[];
//                       for(final item in orders[index].items){
//                         children.add(Row(
//                           children: [
//                             Expanded(child: Text(item.itemCount.toString(),
//                               textAlign: TextAlign.center,
//                             ),
//                             ),
//                           ],
//                         ));
//                       }
//                       return Card(
//                         color: orders[index].ordered
//                             ? Colors.green
//                             : Colors.red,
//                         child: Padding(padding: const EdgeInsets.all(8.0),
//                           child: Column(
//                             children: [
//                               Text('Order no: ${orders[index].id}'),
//                             ],
//                           ),
//                         ),
//                       );
//                     }, separatorBuilder: (BuildContext context, int index) => const Divider(height: 5),
//                   itemCount: orders.length,);
//
//               }
//               if(snapshot.hasError){
//                 return const Text("Error");
//               }
//
//               return const CircularProgressIndicator();
//             }),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     _store?.close();
//   }
// }