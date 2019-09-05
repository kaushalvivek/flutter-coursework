# Section 2

- This section covers the fundamentals of Dart and flutter.
- Core Dart and Flutter features covered.
- Launching Android and iOS emulators.
- Running apps in emulator -- *Flutter debugging mode in VSC (new)*

## What Each File Means

- ```.idea``` folder contains configurations for Android Studio.
- ```.vscode``` contains conigurations for VSC.
- ```android``` folder contains the android project for the Flutter code, normally need not be changed, unless some ground level modifications for android is needed.
- ```build``` holds the output of the flutter applications. Managed my Flutter SDK, need not be changed.
- ```ios``` same as android folder, but for iOS.
- ```lib``` 99% of work done here. All dart files added here.
- ```test``` allows for writing automated tests here.
- ```.metadata``` flutter SDK meadata.
- ```.packages``` fully auto managed by flutter.
- ```<project>.iml``` fully auto managed by flutter.
- ```pubspec.yaml``` used for adding dependencies, fonts and icons, images. We'll work on this.
- ```README.md``` Readme file.

## Dart Basics

- DartPad (online tool) can be used for basic dart syntax testing.
- ```void main()``` function used in Dart, camel-case standard, functions declared without a keyword, only type-specification needed.
- Dart is a type-specified language.
- Variables declared with ```var```, or type specification. Dart supports type-inference, but its a good practice to specify type. Note that strings are declared with ```String```, that's with a capital S.
- Classes declared in Dart using ```class ClassName {}```. Standard class concepts. Objects created using ```var obj = Class();```. Note that ```new``` keyword is no longer needed in Dart 2.
- A variable inside a class is called a property.

## Flutter Basics

- A Flutter application is a nested tree of widgets.
- Primary features inherited from base classes during widget building.
- ```package:flutter/material.dart``` standard import for creating widgets.
- ```build``` method called to draw a widget, a ```context``` object passed to ```build```, it contains meta data for the application.
- ```MaterialApp()``` is returned.
- ```runApp(MyApp())``` is called in main to initiate an application. Main root widget class passed, along with parenthesis.
- When creating flutter widgets, we are passing data to classes. This should not make any sense, but it does, and works, because we are using class **class constructors**.
- You know what a class constructor is : a method declared in a class that runs once, when a class object is called and has the same name as the class. Good explanation in course.
- Named arguments are special arguments for constructors that can be passed if the constructor has been coded to accept named arguments. Thesea are declared with a curly bracket in declaration. Make sense when a lot of arguments are too be passed and order can't be maintained. Ensure that named arguments are options, provide a default value in declaration itself. Add keyword ```required``` if a named argument is required.
- ```this.<variable>``` can be used to refer directly to class properties.
- ```@override``` is a decorator which tells the application that we are deliberately overwriting the following method. Code would work without it, but using it is good practice.
- ```void main() => runApp(MyApp());```alternative syntax for function declaration when the function only has one expression.

## Building Widget Tree

- ```Scaffold```widget creates a base page design for the app.
  - ```appBar``` is a named variable for creating appbar in scaffold.
  - ```body``` takes the body of the app.
- Code with `,` after parenthesis, this is helpful for auto-formatting.
- We'll be creating a quiz application to learn how widget trees work in Flutter.
- Different types of widget in flutter:
  - Visible to users, like ```Text```
  - Invisible widgets, like ```Row, Column``` etc, that help us with structuring our app.
- The ```Container``` widget belongs to both categories as it can be made visible by adding specifications.
- Dart has lists declared using [] square brackets. ```<Widget>``` tells flutter that the list contains widgets.

## Connecting Functions and Buttons

- Button widgets' ```onPressed:``` takes a function as input.
- Declare this functions within class.
- When assigning a function to be executed on the press of a button, use the syntax : ```onPressed: functionName``` and not ```onPressed: functionName()```, as the latter syntax does not assign the function to be executed on button press, it executes the function on compilation and assigns its value to the button press, which doesn't make much sense.
- The above rule is for named functions. Another way is through a function shortcut -- for anonymous functions that are never repeated. Declared as ```onPressed: () => print("Anonymous function called.");``` Useful when the function is not called anywhere else, and is not ugly to write.

**```build``` is excuted eveytime the screen changes. Any component of it.**

## Using Stateful Widgets for Dynamic Update

- **State** can be widget state or app state.
- We have stateless widgets because not all content on screen needs to be dynamic.
- A Stateful widget is a combination of a stateless widget class and a (bunch of) state class(es).
- Created state class needs to be binded to its Stateful Widget class, this is done in two steps, a ```createState``` method in the Stateless Widget and in the state's declarations as in  : ```class StateName extends State<ClassName>```
- Flutter does not recreate the user interface on every user interaction, as that would be catastrophic for performance. It needs to be told that something important has been changed, and the UI needs to be recreated, this is done through the ```setState(() {this = that;});``` method. 