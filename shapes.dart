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
    // Draw a red circle
    Paint circlePaint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(150.0, 50.0), 40.0, circlePaint);

    // Draw a blue rectangle
    Paint rectanglePaint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;
    Rect rect = Rect.fromPoints(Offset(50.0, 100.0), Offset(250.0, 200.0));
    canvas.drawRect(rect, rectanglePaint);

    // Draw a green line
    Paint linePaint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5.0;
    canvas.drawLine(Offset(50.0, 250.0), Offset(250.0, 250.0), linePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
