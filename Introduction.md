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
      
      


