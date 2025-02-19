import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextStyle and Themes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        textTheme: TextTheme(
          //headline1: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          //subtitle1: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        )
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
/**************************************** Adding Image************************************************ */
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         //title: Text('Add Image'),
//         title: Text('List_View'),
//       ),
      // body: Center(
      //   child: SizedBox(
      //     width: 500,
      //     height: 500,
      //     child: Image.asset('assets/images/logo.png'),
      //   )
      // )
      //******************************************* List View*********************************************// 

      // body:ListView(
      //   scrollDirection: Axis.vertical,
      //   // reverse: true, used for reverse the list.
      //   children: [
      //     Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text('One', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
      //   ),
      //     Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text('Two', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
      //   ),
      //     Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text('Three', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
      //   ),
      //     Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text('Four', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
      //   ),
      //     Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text('Five', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
      //   ),

         
      //   ],
      // ) ,
      
/// **************************************************List_Builder***************************************************
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

   // var arrNames = ['Ayush','Misthi','Kalash','Mukund','Ambuj'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        //title: Text('Add Image'),
        //title: Text('List_View'),
        //title: Text('Add Fonts'),
        title: Text('Styles and Themes'),
      ),

  // body: ListView.builder(itemBuilder: (context, index) {
  //   return Text(arrNames[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),);
  // },
  // itemCount: arrNames.length,
  // itemExtent: 50,
  // ),

  /*****************************************Adding Fonts********************************************** */

  // body: Center(
  //   child: Text('Hello Developers!!', style: TextStyle(fontSize: 30, fontFamily: 'Sigmar'),),
  // )

  /*****************************************Styles and Theme****************************************** */

  body: Center(
    child: Container(
      child: Column(
        children: [
          Text('1. Hello Developers!!!!', style: TextStyle(fontSize: 21),),
          Text('2. Hello Developers!!!!', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),),
          Text('3. Hello Developers!!!!', style: TextStyle(fontSize: 21),),
          Text('4. Hello Developers!!!!', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),),
          Text('5. Hello Developers!!!!', style: TextStyle(fontSize: 21),),
          Text('6. Hello Developers!!!!', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),),
        ],
      ),
    ),
  ),

    );
  }
}
