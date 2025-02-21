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
      //title: 'Flutter Card',
      title: 'Flutter Login-Form',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange)),
      //home: const MyHomePage(title: 'Card Demo Page'),
      home: const MyHomePage(title: 'Login-Form'),
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
  var emailText = TextEditingController();
  var passText = TextEditingController();
  bool isPasswordVisible = false; // For toggle password visibility.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.title, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
        toolbarHeight: 60, // it is used to increase the size of the appbar.
      ),
      // body: Center(
      //   child: Card(
      //     shadowColor: Colors.blue,
      //     elevation: 30,
      //     child: Padding(padding: const EdgeInsets.all(8.0), child: Text('Hello Developers!!!!', style: TextStyle(fontSize: 30, color: Colors.blue))),
      //   ),
      // ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(
              colors: [Colors.blue, Colors.deepPurpleAccent], // Gradient Color
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Card(
            color: Colors.transparent, // it will transparent the color inside the card.
            //surfaceTintColor: ,
            shadowColor: Colors.blueAccent,
            elevation: 20,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: SizedBox(
              width: 300,
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Log In',
                      style: TextStyle(fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 40),

                    // Email TextField
                    TextField(
                      controller: emailText,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.white),
                        hintText: 'Enter your email',
                        hintStyle: TextStyle(color: Colors.white),
                        //border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2,), borderRadius: BorderRadius.circular(20), // change border color when it is active.
                        ),
                        // enabledBorder: OutlineInputBorder(
                        //   borderSide: BorderSide(color: Colors.black, width: 1), //borderRadius: BorderRadius.circular(20), // it show when it is not active.
                        // ),
                        prefixIcon: const Icon(Icons.email, color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Password TextField
                    TextField(
                      controller: passText,
                      obscureText: !isPasswordVisible,
                      obscuringCharacter: '*',
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.white),
                        hintText: 'Enter your password',
                        hintStyle: TextStyle(color: Colors.white),
                        //border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2), borderRadius: BorderRadius.circular(20),
                        ),
                        prefixIcon: const Icon(Icons.lock, color: Colors.white),
                        suffixIcon: IconButton(
                          icon: Icon(
                            isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),

                    // Login Button
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.white,
                        elevation: 10,
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.blue,
                        textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: () async {
                        String userEmail = emailText.text.trim();
                        String userPass = passText.text.trim();

                        if (userEmail.isEmpty || userPass.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Please fill in all fields")),
                          );
                          return;
                        }

                          print('Email: $userEmail, Password: $userPass');
                         emailText.clear();
                         passText.clear();

                      },
                      child: const Text('Log In'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
