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

- 