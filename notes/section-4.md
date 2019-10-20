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

- ```@required``` is a Flutter keyword, dart files need to import flutter to use it.
- ```DateTime``` is an inbuilt complex datatype in Dart/Flutter.
- Styling in flutter works through arguments passed to widgets.
- ```margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),``` -- example of a margin specification argument.
- ```decoration``` and ```padding``` are other properties used to style a ```Container```. Check code for execution.
- ```style``` is an argument to style ```Text```.

## Container vs Column/Row

- Container takes only one child widget.
- Container gives rich alignment and styling options, no styling options for column/row apart from alignment.
- Flexible height-width available for container, while column/row take maximum height/width available respectively.

**$ sign has special meaning for Dart, used to write text+variable in line. Syntax : ```${object.property}```**  

DateTime formatting can be one in Dart effectively using the ```DateFormat()``` class from ```intl``` package. No native capabilities in Flutter.

## Getting User Input

- ```TextField``` widget used.
- Values entered can be stored as variables stateless widget classes, though the value entered is not reflected in changes on the user interface.
- Another way, and the better way of handling text field inputs is to use a controller. Controllers are objects created from the ```TextEditingController()``` class. These are binded to a text field using the ```controller``` argument, text can be accessed using ```controllerName.text```.

## Splitting into Widgets

- While creating a stateful widgets, only put those elements that need updation on screen in it.
- Advisable to create folders -- ```models``` and ```widgets``` for models and widgets respectively.
- The key idea is to change only the essentials, and lift state up whenever required. Multiple levels of sub-widgets can be constructed when lifting state up.

```double.parse(source)``` and ```int.parse(source)``` used to convert string to double and int respectively.

## Scrolling
- **```SingleChildScrollView```** is used, other widgets wrapped into it for scrolling.
- This widget needs to know what is the height available to it, hence should be declared in a container with height specified, won't work otherwise.
- Can also be declared as the root in ```home``` for ```Scaffold```, in this case, it takes the height of the device screen as the scrollable height.
- **```ListView```** is a widget which is essentially a column with ```SingleChildScrollView```. It also requires a height specification. **It can also additionally hold multiple children.**
- **```ListView.builder** is a special kind of list view that only builds objects that are currently being displayed on screen. Saves memory. Should be used for cases where number of list items is large or not known.
- Declared with an ```itemBuilder(context, index) {return}``` method, and an ```itemCount:``` property.

## Input Specifications

- ```keyboardType:``` property of TextField allows us to specify what kind of input we want, including dates, numeric input, email, standard input etc.
- When dealing with ```onSubmitted:``` property of TextField and likewise, text argument is passed as a String to our function which may or may not be useful for us. If it isn't useful and we wish to drop it, the accepted way of doing that is using an anonymous function as ```(_) => funtionName```.
- ```toStringAsFixed(fraction_length)``` used to get numbers with fixed fraction length.

## AppBar and Floating Buttons

- AppBar buttons can be created in ```action: <Widgets>[]``` property of the AppBar.
- Icons are popular as buttons here, and can be added using ```IconButton(icon : Icon(Icons.which_icon))```.
- Floating buttons can be added to the screen as a different property ```floatingActionButton:``` in  Scaffold, besides ```appBar:``` and ```body:```.
- ```floatingActionButtonLocation:``` propery of Scaffold is used to specify the location of the floating button.

## Modal Sheet

- A modal sheet can be coded using ```showModalBottomSheet(context: CONTEXT, builder : (_) {FUNCTION})```
- ```GestureDetector(onTap: () {},child: functionToExecute(),behavior: HitTestBehavior.opaque,``` is used to detect gesture inside a modal sheet and close modal sheet on registering a tap outside it.
- **```Navigator.of(context).pop();```** is used in, say, a submit button to return user to previous interaction on submission. (*close modal sheet*)

**Sometimes, we might need to convert a Stateless Widget to a Stateful one even if we aren't calling setState, as Flutter might need that to work properly in the backend.**  

**```widget.``` allows us to access the properties of the Widget Class inside it's State Class.**  

## Using Themes

- ```themes:``` is a property for ```MaterialApp```, which can later be used throughout the application by using the context.
- Example of theme specification :

```dart
theme: ThemeData(
  primarySwatch: Colors.purple,
  accentColor: Colors.amber,
  ),
  ```

- Primary and secondary color can be accessed using : ```color: Theme.of(context).primaryColor```, variations in shades are also available and customizable.
- ```appBarTheme:``` can be specified differently.

## Fonts and Text Themes

- Add font's ttf file to a ```fonts``` folder in assets.
- Find commented out ```font``` section in the pubspec file and add font as specified in the syntax.
- Weights needs to be added for ```bold``` fonts, as per information available in font documentation, or specification on google fonts.
- In declared ```theme: ThemeData()```, add ```fontFamily: 'FontName'```. This would automatically make the app use this font throughout.
- To specify other fonts for text, use ```style:TextStyle(fontFamily: 'Font Name')```
- ```textTheme:``` can be declared in ThemeData as well.
- A ton of other specifications -- in codefiles.

## Adding Images

```dart
Image.asset(
  'assets/images/waiting.png',
  fit: BoxFit.cover,
)
```
- Syntax to add images, source path also needs to be added to teh pubspec file.
- ```fit: BoxFit.cover,``` makes the image take the size of the container.

**SizedBox(height: 20,),** are used as separators, they are empty boxes with no content inside. Essentially a container, with no content.  

```.where( () {})``` after a list allows us to perform a function on each item of that list and return a boolean. Note that ```where``` returns an iterable, would need converting.  

**```Stack()``` widget allows us to stack widgets on top of each other 3-dimensionally.**  

```color: Color.fromRGBO(r, g, b, opacity)``` another way to enter color. RGB values from 0-255 and 0-1 for opacity.  

```FractionallySizedBox(heightFactor: 0-1)``` allows us to create a box which is a fraction of its parent's size. The fraction value is the heightFactor specified.  

```.fold()``` allows us to change a list to another type based on the logic we pass in fold.  

```(data['amount'] as double)``` example of type-casting in Dart.  

- The widget ```Flexible``` is a great way of ditributing free space between widgets in a column or a row.
- ```FittedBox``` shrinks inside content without letting things overflow.
- ```Padding``` is an alternative for container, when we are adding ```Container``` only for padding. It is simpler.
- ```Expanded``` is basically a ```Flexible``` widget with ```fit: FlexFit.tight```.
- ```ListTile``` widget is an interesting time and effort saver widget and great for listing stuff.
- Flutter provides an inbuilt date picker in :

```dart
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2019),
      lastDate: DateTime.now(),
    );```

- 