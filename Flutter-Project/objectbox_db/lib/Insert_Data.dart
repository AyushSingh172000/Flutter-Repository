import 'package:flutter/material.dart';

class InsertDataScreen extends StatefulWidget{
  const InsertDataScreen({super.key});
  @override
  State<InsertDataScreen> createState() => _InsertDataScreenState();

  }
  class _InsertDataScreenState extends State<InsertDataScreen>{
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Insert Data'),
      ),
      //body: ,
    );
  }
}