import 'package:objectbox/objectbox.dart';
import 'package:objectbox_tutorial/model/order_model.dart';

@Entity()
@Sync()
class ItemModel{
  int id = 0;
  String itemName;
  int itemCount;

  final orderModel = ToOne<OrderModel>();

  ItemModel({
    required this.itemName,
    required this.itemCount,
});
}