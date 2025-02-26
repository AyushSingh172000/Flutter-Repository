import 'package:objectbox/objectbox.dart';

@Entity()
class User{
  @Id()
  int id = 0;
  String? firstname;
  String? lastname;
  String? phoneNumber;
  String? email;

  User(
    // this.id,
    this.firstname,
    this.lastname,
    this.phoneNumber,
    this.email,
  );
}