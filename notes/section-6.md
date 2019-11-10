# Section 6

- Use of fields like ```MediaQuery``` call for a rebuild of their root widget everytime they are called, hence in large apps, do not place then in larger widgets which might call for higher performance requirements.
- ```...`` is called spread, available in a lot of modern languages. Basically take elements out of a list and merge it with where it's being used.
- ```super``` is a keyword in dart to refer to parent class methods and properties.
- ```initState```, ```didUpdateWidget```, ```dispose``` and class constructor are all special methods called at different times for a widget -- called Widget lifecycle. We can use these functions for running different code blocks at different stages of the widget lifecycle.
- ```initState``` used for interacting with web servers.
- App lifecycle events can also be listened to. These are as follows:
  - create widget with ```widgetBindingObserver```
  - add method ```void didChangeAppLifeycleState(AppLifecycleState state){}``` with ```@override``` and an add observer statement in ```initState```.

  ```dart
  dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
    }```

- this ^ should be added everytime you add life cycle change listeners, or the listeners will keep on running in background.
- 