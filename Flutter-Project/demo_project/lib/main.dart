import 'package:flutter/material.dart';

void main(){
  runApp(DemoApp());
}

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DemoApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        ),
        home: DashBoardScreen(),
    );
  }
  
}

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),

      body: Container(
        //width: double.infinity, //Takes full width
        //height: double.infinity, //Takes full screen height
        color: Colors.red.shade500,
        child: Center(
          child: Container(
            width: 150,
            height: 150,
            // color: Colors.blueGrey, it will throw an erro because when we use decoration box we have to declare the color inside that box.
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              //borderRadius: BorderRadius.circular(20)
              //borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20))
              //borderRadius: BorderRadius.all(Radius.circular(21)),
              border: Border.all(
                width: 2,
                color: Colors.white
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 11,
                  color: Colors.white,
                  spreadRadius: 7
                )
              ],
              shape: BoxShape.circle, // when we applying this we have to remove the border radius because it will give the error. In circle there will be no need of border radius.
            ),
          ),
        ),

      ),
    );
    
  }
  
}