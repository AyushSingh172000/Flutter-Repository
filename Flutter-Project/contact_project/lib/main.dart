import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.red)),
      home: const MyHomePage(title: 'Contact Demo Home Page'),
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
    var arrContact = ['6392301513', '6532487458', '6532785458', '6592487458', '6532484785', '6587987458', '6532487458'];

    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: Text(widget.title)),

      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/boy.png'),
            ),
            title: Text(arrNames[index], style: TextStyle(fontSize: 20)),
            subtitle: Text(arrContact[index]),
            //trailing: Icon(Icons.add), just simple icon.
            trailing:InkWell(
              child: Icon(Icons.add, color: Colors.blue),
              onTap: (){
                print("${arrNames[index]} added!");

              }),
             
          );
        },
        itemCount: arrNames.length,
        separatorBuilder: (context, index) {
          return Divider(height: 100, thickness: 1, color: Colors.red);
        },
      ),
    );
  }
}
