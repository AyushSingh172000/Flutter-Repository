import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
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
      
/****************************************************List_Builder****************************************************/
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

   // var arrNames = ['Ayush','Misthi','Kalash','Mukund','Ambuj'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        //title: Text('Add Image'),
        //title: Text('List_View'),
        title: Text('Add Fonts'),
      ),

  // body: ListView.builder(itemBuilder: (context, index) {
  //   return Text(arrNames[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),);
  // },
  // itemCount: arrNames.length,
  // itemExtent: 50,
  // ),

  /*****************************************Adding Fonts********************************************** */

  body: Center(
    child: Text('Hello Developers!!', style: TextStyle(fontSize: 30, fontFamily: 'Sigmar'),),
  )

    );
  }
}
