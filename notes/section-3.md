# Section 3

- We'll look at debugging in this section.
- VS Code debugger
- Dart DevTools
- Flutter Inspector

## Running App on Phone

- Enable developer mode, and USB debugging.
- Connect phone to laptop, run flutter, it should automatically detect the phone.
- You can also specify if the emulator is to be used or the real connected device.
- Testing on a real device should be a necessary part of the development process.
- For iPhone testing, you need to have a Mac and XCode setup.
- Apple developer account needs to be setup to create apps in XCode.

**Useful stuff in Flutter error messages are located at the top of the error message.**

## Debugger

- Better than using multiple print statements.
- Start in debugging mode in VSC, add breakpoints. Check variable/property values at breakpoints.
- Arrows keys to navigate line-wise at each breakpoint.
- Debugger makes app slower, so use debugger only when necessary, can slow down development cycle.

## Dart DevTools

- Dart DevTools can be openned by searching ```dart devtools``` in command palette in VSC.
- DevTools have detailed information on each aspect of the program -- each widget, properties, deep dive into the code, with a breakdown of custom widgets.
- Layout based analysis of the app in the simulator too.
- Performance overlay also available, which gives information on process and memory consumption by the application.
- **Repaint Rainbow** tells what was changed on screen at each rebuild of widgets. *Very useful for finding out if certain widgets are getting rebuilt uncessariliy.*
- Repainting need not apply a complete recreation, Fluter might optimise recreation from memory and apply updation.
- Timeline can record interactions with the app, with perfomance and resource usage recorded.