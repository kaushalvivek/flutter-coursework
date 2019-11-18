# Section 5

- ```MediaQuery``` can be used get information like screen size, density etc.
- ```height: MediaQuery.of(context).size.height * 0.6,``` -- code to take 60% of available screen height.
- ```textScaleFactor``` tells you by how much text output in the app should be scaled. Users can change this in their mobile phone / device settings.
- ```MediaQuery``` can be used to set correct layouts for different orientations of the screen.
- ```constraint``` is an important parameter passed to the ```LayoutBuilder``` widget, which essentially contains MaxHeight, MinHeight, MaxWidth, MinWidth -- calculated dynamically from a widget's surrounding.
- ```SystemChrome.setPreferredOrientations([DeviceOrientation.<>]);```  can be used to set allowed device orientations.
- ```MediaQuery.of(context).orientation == Orientation.landscape;``` to get orientation.
- To get mobile os, use ```imoprt 'dart:io';``` and ```Platform.isIOS```
- ```SafeArea``` is a container widget that makes sure that all content inside is placed with respect to the surrounding spaces.