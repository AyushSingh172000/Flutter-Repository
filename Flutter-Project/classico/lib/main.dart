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
      theme: ThemeData(primarySwatch: Colors.deepPurple),
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
        title: Text('Column and Rows'),
      ),
      body: Container(
        height: 500,
        width: 700,
        child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
               children:[
                Row(children:[
                  Text('Strawberry Pavlova',style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold)),
                  // Spacer(),
               ]),
                
                  Text('Pavlova is a meringue-based dessert named after the Russian ballerine Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold)),
    
                  
                    Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text('*****',style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold)),
                      //Spacer(),
                      Text('170 Reviews',style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold)),
                      ],
                    ),

                    Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text('PREP:',style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold)),
                      //Spacer(),
                      Text('COOK:',style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold)),
                      Text('FEEDS:',style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold)),
                      ],
                    ),
                  
                
               ] ),
              ],
              
            ),
            Image.asset('assets/images/strawberry.jpg'),
          ],
        )

      )
    );
  }
}
