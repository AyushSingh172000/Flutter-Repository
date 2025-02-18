# Flutter-Introduction 
What is Flutter?

Flutter is an open source framework developed by Google to create high quality, high performance mobile applications across mobile OS - Android and IOS. It provides a simple, powerful, efficient and easy to understand SDK to write mobile applications in Google's own language, Dart.
With the help of Flutter we can write the app's code once and deploy it on multiple platforms.Due to its flexibility Flutter uses most for the modern app development.

A cross-platform computer product or system is a product or system that can work across multiple types of platform or operating environments.

Cross platform is also known as multi platform or platform independent. Ex:- Flutter and React Native.

Native:- An application developed exclusively for a single platform using a native-to-the-operating-system language is a Native App. Ex:- android Studio.
OR
The process of creating the application by using its core language that is known as Native.

Hybrid:-  A blend solution that consist of both native and web solutions.
Developers embed the code written with web development languages into a native app. Ex:- VS code.

Benefits of Flutter:-> 1> Increased Time to Market Speed.
                    2> Reduced Code Development Time.
                    3> The Potential ability to go beyond mobile.
                    4> Same UI and Business Logic in all platforms.
                    5> Custom, Animated UI of any Complexity available.
                    6> Similar to native app performance.
                    7> Own Rendering Engine.
                    8> Simple Platform specific logic implementation.

Flutter Architecture:-> When we start making project or any UI on flutter we have to make a Widget Tree.
If we want to add  some more functionality into the application on mac or an Android by using conditional programming and after that we use Embrace for Android and Platform Differences for mac.

NOTE:-> The DART language is used for writing the code of Flutter and here we write the logic action and styling of a particular component.

Universal Design:-> A design which will run on any device that will be called the Universal Design.

conditional programming:-> It is used when the developer wants to run the different application on the different platform and perform different actions.


The Sub parts of the Flutter Projects:-> .idea:- The .idea folder contains your code editor's project related settings specific files.

No need to make any manual change into this file.

android folder:- Inside the flutter project contains the Android platform specific settings, resources and code.

If you need to write any platform specific code will be making changes in here.

ios folder:- Similar to android folder, the ios folder contains ios specific settings, resources and code.
You will make the platform specific code or changes in here.

**lib folder:- The lib folder is main folder where you will write all the Flutter app related codes.
Initially it will contain just one single ile main.dart which has the entry point for a Flutter app.

test folder:- The test folder is set to contain any testing related codes that you write.
If you decide to write test/test cases, you will be adding code in here.

.gitignore folder:- this is a git specific file.
You can adjust the .gitignore file to include/exclude any files/ folders as your need.

.metadata folder:- As name suggest, the .metadata file contains flutter Project related metadata that flutter tool uses.
You should not make any manual changes to this file.

.packages folder:- A flutter project code is composed of numerous libraries and packages.
Some packages are pre-installed with Flutter while others are downloaded during development.
The .packages hold the path to each of the libraries/packages in your local computer.
You do not need to make any manual change to this file.

ReadMe.md:- it is the markdown format file which is primarily used to describe your project in git repo.

For creating a new project write command :- flutter create (project name).

some commands:- for creating the project in flutter use (flutter create {project name})
for checking the configuration into the pc use (flutter doctor)

Widgets:->
The core concept of the Flutter framework is In Flutter, Everything is a widget. Widgets are basically user interface components used to create the user interface of the application.

In Flutter, the application is itself a widget. The application is the top- level widget and its UI is build using one or more children (widgets), which again build using its children widgets. This composability feature helps us to create a user interface of any complexity.

Container:-> It is a widget that combines common painting, positioning, and sizing of the child widgets.
:-It is also a class to store one or more widgets and position them on te screen according to our needs.
:-Generally, it is similar to a box for storing contents.
:-It allows many attributes to the user for decorating its child widget such as using margin, which separates the container with other contents. 

Center Widget:- This widget is used to center their child widgets.
OR
To wrap up the widget which we want to take into the center.
Ex:-> //Center(
      //   child:Container(
      //   width: 100,
      //   height: 100,
      //   color: Colors.red,
      //   child:
      //   Center(
      //   child: Text("Hello Developers!!!!", style: TextStyle(color:Colors.white),
      //    ),
      //   ),
      //),
      //),

Text Widget:- The Text Widget display a String of text with single style.

The string might break across multiple lines or might all be displayed on the same line depending on the layout constraint.
Ex:-> body: Text('Hello Flutter Devs', style: TextStyle(
        fontSize: 25, 
        color: Colors.deepOrange
        ),),

Buttons:-> It is the graphical control element that provides A user to trigger an event such as taking actions, making choices, searching things, and many more. They can be placed anywhere in our UI like dialogs, forms, cards, toolbars, etc.
By default Ripple action will get on all button types.
Ripple i.e. small click type action.
Types of Buttons:-1> Text Button(Flat Button)
                  2> Elevated Button(Raised Button)
                  3> Outlined Button      
      Ex:->
          body: TextButton(
          child: Text('Click Here!'),
          onPressed: () // It is used to perform some action by the button.
          {
          print('Text Button Tapped!');
        },
        onLongPress: () // it is used to long press by this we achieve our action.
      ),
      body: ElevatedButton(
            child: Text('Elevated Button'),
            onPressed: (){
                  print('Button pressed');
            },
      )
      body: OutlinedButton(
            child: Text('Outlined Button'),
            onPressed: (){
                  print('Outlined Click')
            },
      )
      
For image into flutter:-> 
Command Description
flutter pub get	                        Fetch dependencies from pubspec.yaml
flutter pub upgrade	                  Upgrade all dependencies to latest versions
flutter pub upgrade --major-versions	Force all dependencies to latest major versions
flutter pub add <package>	            Add a new package
flutter pub remove <package>	            Remove a package
flutter pub outdated	                  Show outdated dependencies
      
Column and Rows Widgets:-> One of the most common layout patterns is to arrange widgets vertically or horizontally.
You can use a Row widget to arrange widget horizontally, and a Column widget to arrange widget vertically. 
child: Row(
        mainAxisAlignment: MainAxisAlignment.center, spacing: 20, // when want changes horizontally in row only change in mainAxisAlignment.
        crossAxisAlignment: CrossAxisAlignment.end, // When want changes in vertically in row only change in crossaxisalignmnet.
        children: [
          Text('A', style: TextStyle(fontSize: 25),),
          Text('B', style: TextStyle(fontSize: 25),),
          Text('C', style: TextStyle(fontSize: 25),),
          Text('D', style: TextStyle(fontSize: 25),),
          Text('E', style: TextStyle(fontSize: 25),),
          ElevatedButton(onPressed: (){
            print('button clicked');
          }, child: Text('click'))
        ],
      ), 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, spacing: 20, // when want changes horizontally in row only change in mainAxisAlignment.
        crossAxisAlignment: CrossAxisAlignment.end, // When want changes in vertically in row only change in crossaxisalignmnet.
        children: [
          Text('1', style: TextStyle(fontSize: 25),),
          Text('2', style: TextStyle(fontSize: 25),),
          Text('3', style: TextStyle(fontSize: 25),),
          Text('4', style: TextStyle(fontSize: 25),),
          Text('5', style: TextStyle(fontSize: 25),),
          ElevatedButton(onPressed: (){
            print('button clicked');
          }, child: Text('click'))
        ],
      ),      

Inkwell:-> Inkwell is the material widget in flutter.
           It responds to the touch action as performed by the user.
           Inkwell will responds when the user clicks it/Tap on it.
           There are so many gestures like double-tap, long press, tap down, etc. 

ScrollView:-> It is used when the data present on the screen get overflow. It simply provides the scroll into the screen.

List View:-> Listview in flutter is a widget used to display items in a linear manner.  
            For Ex:- list view is used in apps like zomato and swiggy to display a list of resturants.
            Since it is a scrollable widget we can display multiple items on the same screen.
            If the scroll direction is vertical the children will be arranged one after another from top to bottom.
            When the scroll direction is horizontal the children will be arranged from left to right.

Icon:->

Icon widget is used to display a glyph from a font described in IconData class. The code to load a simple email icon is as follows −>

Icon(Icons.email)

class MyHomePage extends StatelessWidget { 
   MyHomePage({Key key, this.title}) : super(key: key); 
   final String title; 

   @override 
   Widget build(BuildContext context) {
      return Scaffold(
         appBar: AppBar(title: Text(this.title),),
         body: Center( child: Icon(Icons.email)),
      );
   }
}

Stateful and StatelessWidgets:-> 

🆚 Difference Between Stateless and Stateful Widgets (Easy Explanation)
Feature	                Stateless Widget                        🟠	Stateful Widget 
🔵Can Change?	             ❌ No – UI stays the same	                ✅ Yes – UI updates when needed

Stores Data?	              ❌ No – No memory of past values	         ✅ Yes – Keeps track of changes

Rebuilds?	                  🚀 Only once, unless the whole app refreshes🔄 Multiple times when setState() is called
Best For?	                   Static UI (Text, Icons, Images)	          Interactive UI (Buttons, Forms, Animations)

Example                   	📌 A simple label (e.g., "Welcome!")	🔢 A counter that increases on button press

📌 Example in Simple Terms:->

:-> Stateless Widget is like a printed newspaper – once printed, it never changes.
:-> Stateful Widget is like a whiteboard – you can erase and rewrite on it.

💡 Which One Should You Use?

:-> If your UI doesn’t change → Use Stateless Widget ✅
:-> If your UI needs updates (e.g., user clicks a button) → Use Stateful Widget ✅

Expanded Widget:-> When it will get space in their child widget or anywhere in widget it simply expand its child widgets.

Circle Avatar:-> It is simply a Circle in which we can add background color, background image, or just some text.

It usually represents a user with his image or with his initials.

Although we can make a similar widget from the group up,

this widget comes in handy in the fast development of an application.

Ex:->  body: Center(
         child: CircleAvatar(
           //child: Text('Kallu', style: TextStyle(color: Colors.black,fontSize: 25),),
         backgroundImage: AssetImage('assets/images/boy.png'),
         backgroundColor: Colors.red,
         radius: 30,
        
         ),
         ),
