import 'package:flutter/material.dart';
import 'package:objectbox_db/main.dart';
import 'package:objectbox_db/objectbox.g.dart';
import 'package:objectbox_db/user.dart';
import 'helper.dart';


class ObjectBoxProvider extends ChangeNotifier {
  final ObjectBox objectbox;
  //late final Store store;

  ObjectBoxProvider(this.objectbox);

  void insertData(User user){
    final userBox = objectbox.store.box<User>();
    userBox.put(user);
    notifyListeners();
  }

  // Future<void> initialize() async {
  //   _objectbox = await ObjectBox.create();
  //   notifyListeners();
  // }

  List<User> fetchData() {
    List<User> usersList = [];

    final userBox = objectbox.store.box<User>();

    usersList = userBox.getAll();
    notifyListeners();

    return usersList;

  }

  deleteData(int id) {
    final userBox = objectbox.store.box<User>();

    userBox.remove(id);
    notifyListeners();
    //userBox.removeAll(id);
  }

  void updateData(int id, String firstName, String lastName, String phoneNumber,
      String email) {
    final userBox = objectbox.store.box<User>();

    // Query to find the user by ID
    final query = userBox.query(User_.id.equals(id)).build();
    final exUser = query.find(); // Always returns a List<User>
    query.close();

    if (exUser.isEmpty) {
      print('Cannot update the value; User with ID $id not found.');
      notifyListeners();
      return;
    }

    User user = exUser.first;

    user.firstname = firstName;
    user.lastname = lastName;
    user.phoneNumber = phoneNumber;
    user.email = email;


    userBox.put(user);

    print('User with ID $id updated successfully!');
    notifyListeners();
  }

}