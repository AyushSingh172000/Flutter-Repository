import 'package:objectbox_db/main.dart';
import 'package:objectbox_db/user.dart';

List<User> fetchData(){
  List<User> usersList = [];

  final userBox = objectbox.store.box<User>();

  usersList = userBox.getAll();

  return usersList;

}