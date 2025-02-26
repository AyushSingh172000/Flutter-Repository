//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:objectbox_db/database_services.dart';
import 'package:objectbox_db/user.dart';

import 'edit_Data.dart';

class FetchDataScreen extends StatefulWidget{
  const FetchDataScreen({super.key});

  @override
  State<FetchDataScreen> createState() => _FetchDataScreenState();
  }
  class _FetchDataScreenState extends State<FetchDataScreen>{
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Fetch Data'),
      ),
      body: ListView.builder(itemCount: fetchData().length,
          itemBuilder: (context, index){
            User? user = fetchData()[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('ID:${user.id}    ${user.firstname}',),
              tileColor: Colors.lightBlueAccent,
              trailing: SizedBox(
                width: 100,
                child: Row(
                  children: [
                    IconButton(onPressed: (){
                      setState(() {
                        deleteData(user!.id);
                      });
                    },
                        icon: const Icon(Icons.delete, color: Colors.red,)),
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const editDataScreen(),
                      ));
                    },
                        icon: const Icon(Icons.edit, color: Colors.green,)),
                  ],
                ),
              ),
            ),
          );
          },),
    );
  }

}