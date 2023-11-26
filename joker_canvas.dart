import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShapesExample(),
    );
  }
}

class ShapesExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primitive Shapes Example'),
      ),
      body: Center(
        child: CustomPaint(
          painter: ShapesPainter(),
          size: Size(300.0, 300.0),
        ),
      ),
    );
  }
}

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {


    Paint face = Paint()
      ..color=Colors.brown
      ..strokeWidth=10.0
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(Offset(150.0, 150.0), 150.0, face);

    Paint eyes = Paint()
      ..color=Colors.black
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(75.0, 100.0), 10.0, eyes);
    canvas.drawCircle(Offset(225.0, 100.0), 10.0, eyes);

    Paint red =  Paint()
      ..color=Colors.red
      ..style=PaintingStyle.fill;
    canvas.drawCircle(Offset(150.0, 150.0), 40.0, red);
    canvas.drawCircle(Offset(65.0, 160.0), 20.0, red);
    canvas.drawCircle(Offset(235.0, 160.0), 20.0, red);

    Paint smile = Paint()
      ..color=Colors.red
      ..style=PaintingStyle.stroke
      ..strokeWidth=5.0;
    Rect rect=Rect.fromPoints(Offset(75.0,175.0), Offset(225.0,220.0));
    canvas.drawArc(rect, pi/6, 2*pi/3, false, smile);

    // Draw a green line
    Paint linePaint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.fill
      ..strokeWidth = 5.0;

    canvas.drawLine(Offset(150.0, -150.0), Offset(60.0, 28.0), linePaint);
    canvas.drawLine(Offset(150.0, -150.0), Offset(220.0, 15.0), linePaint);
  }


  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
