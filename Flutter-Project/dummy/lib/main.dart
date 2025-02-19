import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: const MyHomePage(title: 'Flutter Demo Contact Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var arrNames = ['Ayush', 'Misthi', 'Kalash', 'Aman', 'Ambuj', 'Mukund', 'Narendra'];
    var arrContact = ['6392301513','6532487458','6532785458','6592487458','6532484785','6587987458','6532487458'];
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
        title: Text(widget.title),
      ),
      /*****************************For Column************************ */
      // body:Column( //mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Container(
      //       //width: 100,
      //       height: 100,
      //       color: Colors.amber,
      //     ),
      //     Expanded(
      //       //flex: 5,
      //       child: Container(
      //       //width: 100,
      //       height: 100,
      //       color: Colors.green,
      //     ),),
      //    Expanded(
      //       //flex: 100,
      //       child:  Container(
      //       //width: 100,
      //       height: 100,
      //       color: Colors.red,
      //     ),),
      //     Container(
      //       //width: 100,
      //       height: 100,
      //       color: Colors.blue,
      //     ),
      //   ],
      // ),
      /*****************************For Row************************ */

      // body: Row( //mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.amber,
      //     ),
      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.red,
      //     ),),
      //     Expanded(
      //       flex: 3,
      //       child: Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.blue,
      //       ),
      //     ),
      //     //Expanded(          // expanded will get all the spaces.
      //       //child:
      //       Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.blueGrey,
      //     )
      //     //)
      //   ],
      // ),

      /********************Padding and Marging********************* */
  // body: Padding (
  //         padding: EdgeInsets.only(top: 20, left: 50), 
  //         child: Text('Hey Developers!!', style: TextStyle(fontSize: 50),),),
    // body: Container(
    //   color: Colors.blue,
    //   margin: EdgeInsets.all(20),
    //   child: Padding(
    //   padding: EdgeInsets.all(20),
    //   child: Text('Hey Engineers', style: TextStyle(fontSize: 30, color: Colors.red),),
    // ),),

/************************************List Tile View********************************* */

body: ListView.separated(itemBuilder: (context, index){
  return ListTile(
    leading: Text('${index+1}'),
    title: Text(arrNames[index], style: TextStyle(fontSize: 20),),
    subtitle: Text(arrContact[index]),
    trailing: Icon(Icons.add),
  );
}, 
itemCount: arrNames.length,
  separatorBuilder: (context, index) {
    return Divider(height: 100, thickness: 1,);
  },

    ),
    );
  }
}
