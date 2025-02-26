import 'package:objectbox_db/main.dart';
import 'package:objectbox_db/objectbox.g.dart';
import 'package:objectbox_db/user.dart';

List<User> fetchData(){
  List<User> usersList = [];

  final userBox = objectbox.store.box<User>();

  usersList = userBox.getAll();

  return usersList;

}

deleteData(int id){
  final userBox = objectbox.store.box<User>();

  userBox.remove(id);
  //userBox.removeAll(id);
}
///**********************************Update Method************************************///
void updateData(int id, String firstName, String lastName, String phoneNumber,
String email) {
  final userBox = objectbox.store.box<User>();
final query = userBox.query(User_.id.equals(id)).build();
final exUser = query.find();
 query.close();
  // Fetch the existing user by ID
  final user = userBox.get(id);// query to find by phoneno. and should be in string type

  if (user == null) {
    print('Cannot update the value; User with ID $id not found.');
    return;
  }

  // Update user properties
  user.firstname = firstName;
  user.lastname = lastName;
  user.phoneNumber = phoneNumber;
  user.email = email;

  // Save the updated user back to the database
  userBox.put(user);

  print('User with ID $id updated successfully!');
}
///**********************************Update Method************************************///


