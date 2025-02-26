import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'database_services.dart';
import 'fetch_Data.dart';

class editDataScreen extends StatefulWidget{
  const editDataScreen({super.key});

  @override
  State<editDataScreen> createState() => _editDataScreenState();
}
class _editDataScreenState extends State<editDataScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: const Text('Edit Data'),
      ),
      body: Padding(
          padding: EdgeInsets.all(8.0),
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: firstNameController,
              decoration: const InputDecoration(
                label: Text('Edited First Name'),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: size.height*.01,
            ),
            TextFormField(
              controller: lastNameController,
              decoration: const InputDecoration(
                label: Text('Edited Last Name'),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: size.height*.01,
            ),
            TextFormField(
              controller: phoneNumberController,
              decoration: const InputDecoration(
                label: Text('Edited Phone No.'),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: size.height*.01,
            ),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                label: Text('Edited Email'),
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

                    setState(() {
                      updateData(8, 'Dhruv', 'Rathi', '6392301514', 'dhruv123@gmail.com');
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const FetchDataScreen(),
                    ));
                  },
                  child: const Text('Update Data',
                  style: TextStyle(color: Colors.white),
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }


}