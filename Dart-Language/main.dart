// void main(){
//   print("Welcome Dart!");
// }

// How to take Input and Output?

 //import 'dart:io';

// void main(){
//   //print('Enter Your Name: ');
//   stdout.write('Enter your Name: ');
//   var name = stdin.readLineSync();
//   print('Welcome, $name'); 
//  // var ayush = new Human();
//  new Human(); //creating object using new keyword.
// }

// // Classes and Objects


// class Human{
//   Human(); // creating object without using new keyword.
// }
// Variable and Datatypes
// void main(){
//   int a;
//   a=5; // Assign or initialization.
//   print(a);


// String name="Ayush"; // inline declaration.
// name="Misthi";

// print(name);
// }

// void main(){
//   var section; // dynamic datatype
//   section= "d";
//   section=4;
//   section=false;
// }

// Final vs Const keywords:->


main(){
  final String name = "Ayush"; // this keyword is used when we have to assign a value which can't be overridden.

  const subject = 'math';  // after declaring the const keyword the data into the list are get unmodifiable.

  final names = [
    "aman",
    "ayush",
    "misthi",
    "aditi"
  ];

  names.add("tinku"); // into final keyword we can add the data into the list but we can't override final declared variable or method or class. 
  print(names);
  
}