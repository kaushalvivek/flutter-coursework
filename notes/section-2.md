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

**Leading ```_``` tells Flutter that the class is Private. Eg: ```_MyAppState```**

**```final``` keyword tells Flutter that the variable's value won't be altered after initialization.**

## New Custom Widget

- Custom widgets can be created in separate files (*or same file*).
- Advisable to create custom widgets, as regeneration is faster.
- Use constructor in new stateless/stateful class to pass input variables if necessary -- check code section for example.
- Various styling options available. Check Flutter documentation or attached code for more info.

**Dart allows for multiple constructors in a class, additional constructors can be specified using ```ClassName.something()``` syntax, and its used to add custom default values to input arguments.**

## Passing Callback Functions

- Flutter allows you to pass functions to classes in their constructors, just like you'd pass a variable as an argument.
- When two different classes -- usually stateless, are being coordinated in a separate class that's stateful, its called 'lifting the state up'.

## Map and Widget Mapping

- Maps are data structures in Dart that allow for the storage of key-value pairs. Declared as ```{}```, or by using ```Map()```.
- A combination of maps and list, nested on each other can be used very effectively to store complex data.
- A list can be mapped to generate widgets and/or other components for each item in the list. This is done using ```list.map((list_item) {return ...}).toList()```
- Dart might not always recognise that a list is being passed to map, hence sometimes it needs to be specified, as in ```(list_name as List<Strings>).map()``` for a list of strings.
- ```...``` is called the thread operator, which takes output from a list and adds it to another list as individual items, rather than adding a nested list.

## Final vs Const

- ```final``` is used when our value doesn't change from the point of time the program runs, it can be initialised though. Value is locked-in upon code execution. It's a run-time constant value.
- ```const``` is used for compile-time constant, as in, values that are coded in and known at the time of compilation.
- All compile-time constants are run-time constants.
- ```const``` can be added infront of the variable name, or infront of the value. This translates to storing the variable address to be constant and stroring the value as a constant respectively.
- ```.add()``` adds a new element to a list. New elements can't be added to unmodifiable lists.

**```if() {} and ternary operator -- ? : ; --declared normally in Dart.**

## Splitting Widgets

- In flutter, as a rule of thumb, it is always encouraged to build more custom widgets, where the alternative is to have large nested widgets. Better to have small widgets than large nested widgets. Better performance, more readable.
- Splitting done by creating new custom widgets for long sections. Passing information between widgets done through name/sequential arguments and suitable constructors.

**When passing a value to a funcion that doesn't accept arguments because of the manner in which it is being declared -- such as in ```onPressed:```, pass an anonymous function ```() => functionName(argument)``` in this manner, hence passing the required function with the required argument as a new anonymous function.**

## Getter

- A getter is somewhere between a variable and a function.
- It can't have arguments passed to it and is referenced as a variable.
- Inside it, it is pretty much like a function with calculations/logic and a return.