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

*to be added*