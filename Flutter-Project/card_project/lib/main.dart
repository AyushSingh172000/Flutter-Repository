import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Flutter Card',
      title: 'Flutter Login-Form',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)),
      //home: const MyHomePage(title: 'Card Demo Page'),
      //home: const MyHomePage(title: 'Login-Form'),
      home: const MyHomePage(title: 'Date-Time'),
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

  // var emailText = TextEditingController();
  // var passText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //var time = DateTime.now(); // to get the current date and time.
    var arrColors = [Colors.yellow,
    Colors.red,
    Colors.black,
    Colors.purple,
    Colors.deepOrange,
    Colors.brown,
    Colors.green,
    Colors.yellowAccent,
    Colors.blue,
    Colors.brown];
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,
          title: Text(widget.title),
      toolbarHeight: 60,),
      // body: Center(
      //   child: Card(
      //     shadowColor: Colors.blue,
      //     elevation: 30,
      //     child: Padding(padding: const EdgeInsets.all(8.0), child: Text('Hello Developers!!!!', style: TextStyle(fontSize: 30, color: Colors.blue))),
      //   ),
      // ),
      // body: Center(
      //   child: Card(
      //     shadowColor: Colors.orange,
      //     elevation: 20,
      //     child: Container(
      //     width: 300,
      //     height: 500,
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       children: [ Padding(padding: const EdgeInsets.only(left:80,right:80,bottom:80,)),
      //         Text('LogIn-Form', style: TextStyle(fontSize: 30, color: Colors.orange),),
      //         SizedBox(height:100),
      //         Container(
      //           padding: EdgeInsets.only(left:20,right:20
      //           ),
      //           child:Column(
      //             children: [
      //           TextField(
      //             keyboardType: TextInputType.emailAddress,
      //           controller: emailText,
      //           //enabled: false,   // It is used to disable the textfield user will not able to click on the disabled textfield.
      //           decoration: InputDecoration(
      //             labelText: 'Email',
      //             hintText: 'Enter Your Email',
      //             focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(11), borderSide: BorderSide(color: Colors.deepOrange)),
                  // enabledBorder: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(11),
                  //   borderSide: BorderSide(
                  //     color: Colors.blueAccent,
                  //     width: 2,
                  //   )
                  // ),
                  // disabledBorder: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(11),
                  //   borderSide: BorderSide(
                  //     color: Colors.black45,
                  //     width: 2
                  //   ),
                  // ),
                  //suffixText: "Email",
              //     suffixIcon: IconButton(
              //       icon: Icon(Icons.email, color: Colors.orange),
              //       onPressed: () {
              //         print('email button tapped ');
              //       },
              //     ),
              //   ),
              // ),
              // //SizedBox(height: 10),
              // TextField(
              //   //keyboardType: TextInputType.phone,// only for taking input text type like phone, email, date etc.
              //   obscureText: true, // it is used to hide the password.
              //   obscuringCharacter: '*', // it is client side to hide the password according to our pattern desired.
              //   controller: passText,
              //   decoration: InputDecoration(
              //     hintText: 'Enter Your Password',
              //     focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(11), borderSide: BorderSide(color: Colors.deepOrange)),

                  // enabledBorder: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(11),
                  //   borderSide: BorderSide(
                  //     color: Colors.blueAccent,
                  //     width: 2,
                  //   )
                  // ),
                  // disabledBorder: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(11),
                  //   borderSide: BorderSide(
                  //     color: Colors.black45,
                  //     width: 2
                  //   ),
                  // ),
              //     suffixIcon: IconButton(
              //       icon: Icon(Icons.remove_red_eye, color: Colors.orange),
              //       onPressed: () {
              //         print('red-eye-tapped');
              //       },
              //     ),
              //   ),
              // ),
              //   ],)
              // ),

              // Container(
              //   padding: EdgeInsets.all(60),
              //   child: ElevatedButton(
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: Colors.orange,
              //     foregroundColor: Colors.white,
              //     textStyle: TextStyle(fontSize: 20, )),
              //   onPressed: () {
              //     String user_Email = emailText.text.toString();
              //     String user_Pass = passText.text.toString();
              //
              //     print('Email: $user_Email, Password: $user_Pass');
              //   },
              //   child: Text('LogIn'),
              // ),
              // ),
      //       ],
      //     ),
      //   ),
      //   ),
      // ),
  //  );
  //     body: Center(
  //         child: Container(
  //           width: 300,
  //             height: 300,
  //             child: Column( mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 Text('Hello Developers!!!!Current Time is: ${time}', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
  //                 ElevatedButton(onPressed: (){
  //                   setState(() {
  //
  //                   });
  //                 }, child: Text('Current Time'))
  //               ],
  //             ),
  //         ),
  //     ),
      /****************************************************** Date and Time in Format************************/
      // body: Center(
      //   child: Container(
      //     width: 300,
      //     height: 300,
      //     child: Column( mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         //Text('Hello Developers!!!!Current Time is: ${time}', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),), for normal time and date.
      //         Text('Hello Developers!!!!Current Time is: ${DateFormat('yMMMMEEEEd').format(time)}', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),), // it is used for the date and time formating .
      //        
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //
      //           });
      //         }, child: Text('Current Time'))
      //       ],
      //     ),
      //   ),
      // ),
      /****************************************************** Date and Time Picker******************************/
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text('Select Date', style: TextStyle(fontSize: 25),
      //       ),
      //       ElevatedButton(onPressed: () async {
      //         DateTime? datePicked = await showDatePicker(  // used of? because it might be thorw a null value.
      //             context: context,
      //             initialDate: DateTime.now(),
      //             firstDate: DateTime(2020),
      //             lastDate: DateTime(2028));
      //
      //         if(datePicked!=null){
      //           print('Date Selected: ${datePicked.day}-${datePicked.month}-${datePicked.year}');
      //         }
      //
      //       }, child: Text('Show')),
      //       ElevatedButton(onPressed: () async {
      //         TimeOfDay? pickedTime = await showTimePicker(
      //             context: context,
      //             initialTime: TimeOfDay.now(),
      //         initialEntryMode: TimePickerEntryMode.input
      //         );
      //
      //         if(pickedTime!=null){
      //           print('Time Selected: ${pickedTime.hour}: ${pickedTime.minute}');
      //         }
      //       }, child: Text('Select Time'))
      //     ],
      //   ),
      // ),
      /****************************************************** Grid View *****************************************/

      // body: Column(
      //   children: [
      //     Container(
      //       height: 200,
      //       child: GridView.count(crossAxisCount: 4,
      //       crossAxisSpacing: 10,
      //       mainAxisSpacing: 10,
      //       children: [
      //         Container(color: arrColors[0],),
      //         Container(color: arrColors[1],),
      //         Container(color: arrColors[2],),
      //         Container(color: arrColors[3],),
      //         Container(color: arrColors[4],),
      //         Container(color: arrColors[5],),
      //         Container(color: arrColors[6],),
      //         Container(color: arrColors[7],),
      //         Container(color: arrColors[8],),
      //         Container(color: arrColors[9],),
      //       ],
      //       ),
        //  ),
         // SizedBox(height: 100),
          // Container(
          //   height: 300,
          //   child: GridView.extent(maxCrossAxisExtent: 100,
          //     crossAxisSpacing: 10,
          //     mainAxisSpacing: 10,
          //     children: [
          //       Container(color: arrColors[0],),
          //       Container(color: arrColors[1],),
          //       Container(color: arrColors[2],),
          //       Container(color: arrColors[3],),
          //       Container(color: arrColors[4],),
          //       Container(color: arrColors[5],),
          //       Container(color: arrColors[6],),
          //       Container(color: arrColors[7],),
          //       Container(color: arrColors[8],),
          //       Container(color: arrColors[9],),
          //     ],
          //   ),
          // ),
       // ],
    //  ),

      /****************************************************** Grid View Builder *****************************************/

      body: GridView.builder(itemBuilder:(context, index){
    return Container(color: arrColors[index],);
    },itemCount: arrColors.length, 
       // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100, crossAxisSpacing: 10, mainAxisSpacing: 10),
      ),
    );
  }
}
