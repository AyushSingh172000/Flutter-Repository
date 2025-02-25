import 'package:flutter/material.dart';
import 'package:objectbox_db/main.dart';
import 'package:objectbox_db/user.dart';

class InsertDataScreen extends StatefulWidget{
  const InsertDataScreen({super.key});
  @override
  State<InsertDataScreen> createState() => _InsertDataScreenState();

  }
  class _InsertDataScreenState extends State<InsertDataScreen>{
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  void dispose(){         // dispose is called for clear the controller text field.
    firstNameController.dispose();
    lastNameController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Insert Data'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: firstNameController,
              decoration: const InputDecoration(
                label: Text('First Name'),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: size.height*.01,
            ),
            TextFormField(
              controller: lastNameController,
              decoration: const InputDecoration(
                label: Text('Last Name'),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: size.height*.01,
            ),
            TextFormField(
              controller: phoneNumberController,
              decoration: const InputDecoration(
                label: Text('Phone Number'),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: size.height*.01,
            ),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                label: Text('Email'),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: size.height*.01,
            ),
            SizedBox(
              height: size.width*.07,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: (){
                 final userBox = objectbox.store.box<User>();    //  Retrieves an ObjectBox database box for the User model.   box<User>():-> It is like a table in SQL databases where User objects are stored.


                final user =   User(firstNameController.text,lastNameController.text,
                                  phoneNumberController.text,emailController.text);
                 userBox.put(user); //put(user) → Inserts or updates the User object in the ObjectBox database.

                 //print(userBox.getAll());

                  void printAllUserData(){
                   final u_Data = userBox.getAll();
                   u_Data.forEach((user){
                     print(
                         "ID: ${user.id}, First Name: ${user.firstname}, Last Name: ${user.lastname}, Phone No: ${user.phoneNumber}, Email: ${user.email}");
                   });
                 }

                 //printAllUserData();

                },
                child: const Text('Insert Data',
                style: TextStyle(color: Colors.white),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}