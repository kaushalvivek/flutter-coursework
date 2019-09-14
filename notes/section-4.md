# Section 4

- Look at more practical aspects of development.
- Look at logic.
- Look at styling and setting theme for application.
- An expense tracker will be built for this section.
- A detailed look at widgets.
- Working with images and fonts.


## Widgets

- ```MaterialApp``` and ```Scaffold``` are to android, what ```CupuertinoApp``` and ```CupertinoPageScaffold``` are to iOS.
- ```Container```, ```Row``` and ```Column``` are useful layout widgets. ```Column``` takes the width of its widest child.
- ```Flexible``` and ```Expanded``` are different row and column implementations/children respectively.
- ```Stack``` for nested widgets on top of each other.
- ```Card``` is a pretty container with some styles, ```elevation``` property sets depth, card takes the size of its children. If there is text inside, or a widget whose size cannot be changed, put it all in a container and use the container to set the size of the card.
- ```ListView``` a scrollable column, ```GridView``` scrollable grid, ```ListTile``` list item with some layout setup.
- ```Text```, ```Image```, ```Icon``` are content widgets.
- ```TextField```, ```RaisedButton```, ```FlatButton```, ```GestureDetector```, ```InkWell``` are button widgets, the last couple of them don't have a physical existence but are useful around elements and add functionality.

**Planning an app :** Physical drawing of UI/screen - for all views, with arrows to indicate transition.

**```double.infinity```** as a widge specificcation means -- take all available space.

## Column Alignment

- Column takes the size of its widest child.
- ```Column``` and ```Row``` are core widgets in flutter.
- ```mainAxisAlignment``` and ```crossAxisAlignment``` are used to position items in a row/column. Main axis is the vertical axis for a column and the horizontal axis for a row, vice versa.

**When a datatype is complex, such as in the scenairo of storing an entire transaction -- price, item, transaction id etc, it is advisable to create a Class for that datatype, along with a constructor for object initilization. Then a list of class objects can be declared.**  

## Basics and Styling

- ```@required```` is a Flutter keyword, dart files need to import flutter to use it.
- ```DateTime``` is an inbuilt complex datatype in Dart/Flutter.
- Styling in flutter works through arguments passed to widgets.
- ```margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),``` -- example of a margin specification argument.
- ```decoration``` and ```padding``` are other properties used to style a ```Container```. Check code for execution.
- ```style``` is an argument to style ```Text```.