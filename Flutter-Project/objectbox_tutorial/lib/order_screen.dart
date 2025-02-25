import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:objectbox_tutorial/model/order_model.dart';

import 'objectbox.g.dart';

class OrderScreen extends StatefulWidget{
  final OrderModel? orderModel;
  final Box<OrderModel> orderBox;
  const OrderScreen({
    Key? key,
    this.orderModel,
    required this.orderBox,
}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen>{
  final items = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order App Demo'),
      ),
      body: Column(
        children: [
          Expanded(child: Padding(padding: const EdgeInsets.all(12.0),
            child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        items[index].itemName,
                        style: const TextStyle(fontSize: 18),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(onPressed: (){
                            items[index].itemCount++;
                            saveOrderModel(index);
                          },
                              child: const Icon(Icons.add),
                          ),
                          Padding(padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              items[index].itemCount.toString(),
                              style: const TextStyle(fontSize: 18),
                            ),
                          ),
                          ElevatedButton(onPressed: (){
                            if (items.[index].itemCount == 0) return;
                            items[index].itemCount--;
                          },
                              child: const Icon(Icons.remove),
                          )
                        ],
                      )
                    ],
                  );
                },
              separatorBuilder: (BuildContext context, int index){
                  return const Divider(height: 10);
              },
              itemCount: items.length,
                ),
    ),
    ),
          ElevatedButton(onPressed: (){
            widget.orderModel?.ordered = true;
            widget.orderBox.put(widget.orderModel!);
            Navigator.pop(context);
          },
              child: const Text('confirm'),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }

  void saveOrderModel(int index){
    widget.orderModel?.items.add(items[index]);
    widget.orderBox.put(widget.orderModel!);
    setState(() {

    });

  }

}