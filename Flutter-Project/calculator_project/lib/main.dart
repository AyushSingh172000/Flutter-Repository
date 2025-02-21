import 'package:flutter/material.dart';

void main() {
  runApp(const MyCalcApp());
}

class MyCalcApp extends StatelessWidget {
  const MyCalcApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Calculator',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Calculator'),
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
  var Number1 = TextEditingController();
  var Number2 = TextEditingController();
  var Result='';

  void getCalculation() {
    setState(() {
      //switch
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                keyboardType: TextInputType.number,
                controller: Number1,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: Number2,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: (){
                      setState(() {
                        var n1 = int.parse(Number1.text.toString());
                        var n2 = int.parse(Number2.text.toString());

                        var sum = n1+n2;

                        Result = 'The sum of $n1 and $n2 is: $sum';
                      });

                    }, child: Text('Add')),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        var n1 = int.parse(Number1.text.toString());
                        var n2 = int.parse(Number2.text.toString());
                        var sub = n1-n2;

                        Result = 'The subtraction of $n1 and $n2 is: $sub';
                      });
                    }, child: Text('Sub')),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        var n1 = int.parse(Number1.text.toString());
                        var n2 = int.parse(Number2.text.toString());
                        var mul = n1*n2;

                        Result = 'The multiplication of $n1 and $n2 is: $mul';
                      });
                    }, child: Text('Mul')),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        var n1 = int.parse(Number1.text.toString());
                        print(n1);
                        var n2 = int.parse(Number2.text.toString());
                        var div = n1/n2;

                        Result = 'The division of $n1 and $n2 is: $div';

                      });
                    }, child: Text('Div')),
                  ],
                ),


              ),

              Padding(padding: EdgeInsets.all(21),
              child: Text( Result, style: TextStyle(fontSize: 25, color: Colors.blue, fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
