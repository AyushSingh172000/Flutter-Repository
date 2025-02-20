// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       //title: 'Flutter Card',
//       title: 'Flutter Login-Form',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange)),
//       //home: const MyHomePage(title: 'Card Demo Page'),
//       home: const MyHomePage(title: 'Login-Form'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   var emailText = TextEditingController();
//   var passText = TextEditingController(); 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: Text(widget.title)),
//       // body: Center(
//       //   child: Card(
//       //     shadowColor: Colors.blue,
//       //     elevation: 30,
//       //     child: Padding(padding: const EdgeInsets.all(8.0), child: Text('Hello Developers!!!!', style: TextStyle(fontSize: 30, color: Colors.blue))),
//       //   ),
//       // ),
//       body: Center(
//         child: Card(
//           shadowColor: Colors.orange,
//           elevation: 20,
//           child: Container(
//           width: 300,
//           height: 500,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [ Padding(padding: const EdgeInsets.only(left:80,right:80,bottom:80,)),
//               Text('LogIn-Form', style: TextStyle(fontSize: 30, color: Colors.orange),),
//               SizedBox(height:100),
//               Container(
//                 padding: EdgeInsets.only(left:20,right:20
//                 ),
//                 child:Column(
//                   children: [
//                 TextField(
//                 controller: emailText,
//                 //enabled: false,   // It is used to disable the textfield user will not able to click on the disabled textfield.
//                 decoration: InputDecoration(
//                   hintText: 'Enter Your Email',
//                   focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(11), borderSide: BorderSide(color: Colors.deepOrange)),
//                   // enabledBorder: OutlineInputBorder(
//                   //   borderRadius: BorderRadius.circular(11),
//                   //   borderSide: BorderSide(
//                   //     color: Colors.blueAccent,
//                   //     width: 2,
//                   //   )
//                   // ),
//                   // disabledBorder: OutlineInputBorder(
//                   //   borderRadius: BorderRadius.circular(11),
//                   //   borderSide: BorderSide(
//                   //     color: Colors.black45,
//                   //     width: 2
//                   //   ),
//                   // ),
//                   //suffixText: "Email",
//                   suffixIcon: IconButton(
//                     icon: Icon(Icons.email, color: Colors.orange),
//                     onPressed: () {
//                       print('email button tapped ');
//                     },
//                   ),
//                 ),
//               ),
//               //SizedBox(height: 10),
//               TextField(
//                 obscureText: true, // it is used to hide the password.
//                 obscuringCharacter: '*', // it is client side to hide the password according to our pattern desired.
//                 controller: passText,
//                 decoration: InputDecoration(
//                   hintText: 'Enter Your Password',
//                   focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(11), borderSide: BorderSide(color: Colors.deepOrange)),

//                   // enabledBorder: OutlineInputBorder(
//                   //   borderRadius: BorderRadius.circular(11),
//                   //   borderSide: BorderSide(
//                   //     color: Colors.blueAccent,
//                   //     width: 2,
//                   //   )
//                   // ),
//                   // disabledBorder: OutlineInputBorder(
//                   //   borderRadius: BorderRadius.circular(11),
//                   //   borderSide: BorderSide(
//                   //     color: Colors.black45,
//                   //     width: 2
//                   //   ),
//                   // ),
//                   suffixIcon: IconButton(
//                     icon: Icon(Icons.remove_red_eye, color: Colors.orange),
//                     onPressed: () {
//                       print('red-eye-tapped');
//                     },
//                   ),
//                 ),
//               ),
//                 ],)
//               ),
          
//               Container(
//                 padding: EdgeInsets.all(60),
//                 child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.orange,
//                   foregroundColor: Colors.white,
//                   textStyle: TextStyle(fontSize: 20, )),
//                 onPressed: () {
//                   String user_Email = emailText.text.toString();
//                   String user_Pass = passText.text.toString();

//                   print('Email: $user_Email, Password: $user_Pass');
//                 },
//                 child: Text('LogIn'),
//               ),
//               ),
//             ],
//           ),
//         ),
//         ),
//       ),
//     );
//   }
// }
