//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:objectbox_db/database_services.dart';
import 'package:objectbox_db/user.dart';

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
            User user = fetchData()[index];
          return ListTile(
            title: Text('${user.firstname}',),
            tileColor: Colors.blue,
          );
          },),
    );
  }

}