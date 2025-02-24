import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/counter_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
        create: (_) => CounterProvider(),
        child: MyHomePage(),
      )
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    print('hi buddy');  //here we check that the whole page get reload whenever we increase the count so for ignore this problem we use Consumer.
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Consumer<CounterProvider>(
                builder: (ctx, _, __){  // we use ctx here because with this ctx we can rebuilt only this text widget.
                  print('Consumer build function called!!');
              return Text(
                // '${Provider.of<CounterProvider>(ctx, listen: true) /// By default the listen: is true.
                //     .getCount()}',
                '${ctx.watch<CounterProvider>().getCount()}', /// Use of write whenever the listen will get true.
                style: TextStyle(fontSize: 25),
              );
            },
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              /// Provider.of<CounterProvider>(context, listen: false).incrementCount();

              context.read<CounterProvider>().incrementCount(); /// Use of read whenever the listen will get false.
            },
            child: const Icon(Icons.add),
          ),FloatingActionButton(
            onPressed: () {
              /// Provider.of<CounterProvider>(context, listen: false).decrementCount();

              context.read<CounterProvider>().decrementCount(); /// Use of read whenever the listen will get false.
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


