import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Animation Example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _positionX = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Animation Example'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
          margin: EdgeInsets.only(left: _positionX),
          child: Container(
            width: 50.0,
            height: 50.0,
            color: Colors.blue,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Trigger the animation when the button is pressed
          _animate();
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }

  // Function to animate the widget
  void _animate() {
    setState(() {
      // Update the position to move the widget across the screen
      _positionX = (_positionX == 0.0) ? 200.0 : 0.0;
    });
  }
}