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
        primarySwatch: Colors.blue,
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

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Flutter Container'),
      ),
      body: Center(
        child: 
              InkWell(
                onTap: (){
                  print('Container Tapped');
                },
                 child: Container(
        width: 500,
        height: 500,
        color: Colors.blueAccent,
        child: Center(
                  child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onDoubleTap: () {
                          print('Boom!!');
                        },
                        child: Text('Hello Flutter Devs', style: TextStyle(
                  fontSize: 25, 
                  color: Colors.deepOrange,
                  backgroundColor: Colors.amber,
                  fontWeight: FontWeight.bold,
                  
                      ),
                    ),
                      ),
                     ElevatedButton(
                      child: Text('Click Me'),
                      onPressed: (){
                        print('Clicked on Button');

                      },
                      ),
                    ],
                  ),
        
        ),
      ),
              )
      
       
      ),
    );
      
  }
}
