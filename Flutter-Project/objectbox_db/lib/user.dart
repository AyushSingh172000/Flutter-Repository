import 'package:objectbox/objectbox.dart';

@Entity()
class User{
  @Id()
  int id = 1;
  String? firstname;
  String? lastname;
  String? phoneNumber;
  String? email;

  User(
    this.firstname,
    this.lastname,
    this.phoneNumber,
    this.email,
  );
}