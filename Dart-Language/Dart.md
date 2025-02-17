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

Difference btw dart var vs dynamic?

var section; when it will not assign by any value then that type of variable will called as dyanamic datatype
behalf of that we use dynamic keyword also.
section= "d";
section=4;
section=false;

Functions:-> A function is a group of statements that together performs a specific task. Let us look into a simple function in Dart as shown here:−>

void main() {
   add(3,4);
}
void add(int a,int b) {
   int c;
   c = a+b;
   print(c);
}

List in Dart:-> dart List is similar to an array, which is the ordered collection of the objects.
The array is the most popular and commonly used collection in any array other programming language.
The syntax of declaring the list is given below.
Var list1 = [10,20,30,50]
The Dart list is defined by storing all elements inside the square bracket([]) and separated by commas(,).

Maps in Dart:-> In dart programming, maps are dictionary-like date type that exist in key value form.
There is no restriction on the type of data that goes in a map data type.
Maps are very flexible and can mutate their size based o the requirements.
It is important to note that all lock(keys)need to be unique a map data type.
var map_name={key1:value1,key2:value2,.....,keyN:valueN};

Conditional Programming in Dart:-> when we want the navigation in our code we can use the conditional programming i.e., when we want to navigate our code like if condition get true the task will work or in case failure the other task will get executed.

syntax:- if(condition){
   // true
}else{
   // false
}


