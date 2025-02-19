//import 'package:flutter/foundation.dart';
import 'package:design_project/ui_helper/util.dart';
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
      title: 'Flutter Design',
      //debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          headlineSmall: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
        ),
      ),
      home: const MyHomePage(title: 'Style and Themes'),
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
  
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.orange,
      
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Hello World!', style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.red)),
            Text('Hello World!', style: Theme.of(context).textTheme.headlineSmall,),
            Text('Hello World!', style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.green)),
            Text('Hello Developers!', style: mTextStyle15(),),
            Text('Hello Developers!', style: mTextStyle20(),),
            Text('Hello Developers!', style: mTextStyle30(textColor: Colors.green),),

          ],
        
        ),
      ),
    );
  }
}
