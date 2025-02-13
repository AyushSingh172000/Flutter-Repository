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

