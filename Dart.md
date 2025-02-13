Dart:-> It is the single language used for making an application in flutter.
By studying this language we can easily get to know about the flutter and it is one of the easiest language for the freshers. Only if the person familiar with any language like java,c++ or any other programming language.
This language is object oriented and strongly typed.
It is developed by Google in 2011.
It is the mixture of JavaScript.


Benefits of Dart:- use of async and await for asynchronous programming.
Dart is one of very few language(and perhaps the only "mainstream" language) that is well suited to being compiled both AOT(ahead-of-time)and JIT(just-in-time).
Supporting both kinds of compilation provides significant advantage to dart and flutter (hot reload feature).

AOT:- ahead-of-time this feature is very useful when we are going to deploy our product into market or dilevering the product to client at that time the AOT will compile the codes or files and convert them into a single file for testing before deployment.

JIT:- just-in-time it is also a compiler which will provide the hot reload feature to the developer due to this testing or debugging is very easy for the developer.

Why is Dart programming language used?

Dart is used for Flutter because it is optimized for developing user interfaces with features like async programming and strong typing. It also allows for real-time code changes without restarting the app.

Dart language supports the following data types −

Numbers − It is used to represent numeric literals – Integer and Double.

Strings − It represents a sequence of characters. String values are specified in either single or double quotes.

Booleans − Dart uses the bool keyword to represent Boolean values – true and false.

Lists and Maps − It is used to represent a collection of objects. A simple List can be defined as below −.

Dynamic − If the variable type is not defined, then its default type is dynamic. The following example illustrates the dynamic type variable −

void main() {
   dynamic name = "Dart";
   print(name);
}

Decision Making and Loops: 

A decision making block evaluates a condition before the instructions are executed. Dart supports If, If..else and switch statements.

Loops are used to repeat a block of code until a specific condition is met. Dart supports for, for..in , while and do..while loops.

Let us understand a simple example about the usage of control statements and loops −

void main() {
   for( var i = 1 ; i <= 10; i++ ) {
      if(i%2==0) {
         print(i);
      }
   }
}