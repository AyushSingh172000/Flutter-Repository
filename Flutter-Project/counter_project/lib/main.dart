import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// Program get executed from here or this method will run our programs.
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{    // it defines about the app.
  const MyApp({super.key});
  final T = "My Flutter App";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title:T,
     // theme: ,
      color: Colors.red,
      home: MyHomePage(title:T),
    ); // it is used for android.
  }

}
// class MyHomePage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('MyHomePage'),
//       ),
//       body: Text('Hey Dev!'),
//     );
//   }
// }

class MyHomePage extends StatefulWidget{
  final title;
  const MyHomePage({super.key, required this.title});// It is used when we want to make changes at runtime or reflect changes on UI with the help of setState();
  @override
  State<StatefulWidget> createState()=>_MyHomePageState();       // This function said that you have to create one state class for the stateful widget.
  // {
  //  The curly braces needed when we want to return more than one statement.
  // }

}

class _MyHomePageState extends State<MyHomePage>{
  int _counter = 0;

        // @override
        // void initState() {
        //   // TODO: implement initState       It will called only Once when the state start execution or get initaialized.
        //   super.initState();
        // }

        // @override
        // void dispose() {
        //   // TODO: implement dispose         It will called when the state will get destroy.
        //   super.dispose();
        // }

  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),

      ),
      body: Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter $_counter'),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              _incrementCounter();

            }, child: Text('Increment')),
          ],
        ),
      ),
    );
  }
}
