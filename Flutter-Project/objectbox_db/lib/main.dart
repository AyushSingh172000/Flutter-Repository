import 'package:flutter/material.dart';
import 'package:objectbox_db/Insert_Data.dart';
import 'package:objectbox_db/Objectbox_db_provider.dart';
import 'package:provider/provider.dart';
import 'fetch_Data.dart';
import 'helper.dart';
//late ObjectBox objectbox;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final objectbox = await ObjectBox.create();

  // final objectBoxProvider = ObjectBoxProvider();
  // await objectBoxProvider.initialize();
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ObjectBoxProvider(objectbox)),
        ],
      child: const MyApp(),
    ),

  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Home Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: size.width * 0.7,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: (){
                      Navigator.push(
                          context, MaterialPageRoute(
                        builder: (context)=> const InsertDataScreen(),
                      ),
                      );

                    },
                    child: const Text('Insert Data',
                      style: TextStyle(color: Colors.white),
                    ),
                ),
              ),
              SizedBox(
                height: size.height * .01,
              ),
              SizedBox(
                width: size.width * .7,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> const FetchDataScreen(),
                    ),
                    );
                  },
                  child: const Text('Fetch Data',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class _MyHomePageState extends State<MyHomePage> {
//
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final objectBox = Provider.of<ObjectBoxProvider>(context, listen: false).objectbox;
//
//   }
// }
