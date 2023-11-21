import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color backgroundColor = Color(0xFF42A5F5);
  bool iswhite = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,

      appBar: AppBar(
        title: Text('Meditation App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  iswhite?backgroundColor=Colors.teal:
                  backgroundColor=Colors.white;
                  iswhite=!iswhite;
                });
              },
              child: Text('Click me to flip b/w white and teal'),
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                final rnd = math.Random();
                backgroundColor= Color(rnd.nextInt(0xffffffff));
              });
            },
              child: Text('change background color randomly'),)
          ],
        ),
      ),
    );
  }
}
