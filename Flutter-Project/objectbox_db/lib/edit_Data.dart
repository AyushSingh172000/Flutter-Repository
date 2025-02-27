import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:objectbox_db/user.dart';

import 'database_services.dart';
import 'fetch_Data.dart';

class EditDataScreen extends StatefulWidget{

  //final User user;
  const EditDataScreen({super.key , required this.id});
  final int id;
  @override
  State<EditDataScreen> createState() => _EditDataScreenState();
}
class _EditDataScreenState extends State<EditDataScreen> {
  TextEditingController edit_firstName_Controller = TextEditingController();
  TextEditingController edit_lastName_Controller = TextEditingController();
  TextEditingController edit_phoneNumber_Controller = TextEditingController();
  TextEditingController edit_email_Controller = TextEditingController();

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
        title: const Text('Edit Data')),
      body: Padding(
          padding: EdgeInsets.all(8.0),
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Editing User with ID: ${widget.id}', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
            TextFormField(
              controller: edit_firstName_Controller,
              decoration: const InputDecoration(
                label: Text('Edited First Name'),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: size.height*.01,
            ),
            TextFormField(
              controller: edit_lastName_Controller,
              decoration: const InputDecoration(
                label: Text('Edited Last Name'),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: size.height*.01,
            ),
            TextFormField(
              controller: edit_phoneNumber_Controller,
              decoration: const InputDecoration(
                label: Text('Edited Phone No.'),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: size.height*.01,
            ),
            TextFormField(
              controller: edit_email_Controller,
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
                    // final updateData = User(widget.id, edit_firstName_Controller.text, edit_lastName_Controller.text, edit_phoneNumber_Controller.text, edit_email_Controller.text);
                   print(widget.id);
                    setState(() {
                      updateData(widget.id, edit_firstName_Controller.text, edit_lastName_Controller.text, edit_phoneNumber_Controller.text, edit_email_Controller.text);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const FetchDataScreen(),
                      ));
                    });

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