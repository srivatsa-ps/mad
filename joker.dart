import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Clown a.k.a Rogith'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(widget.title,
        style: TextStyle(
          color: Colors.white
        )),
      ),
      body: Center(
          child:  CustomPaint(
            painter: MyPainter(),
            child: Container(
            width: 200,
            height: 200,
            ),
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paintCircle = Paint()
    ..color = Colors.red
    ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(100, 100), 50, paintCircle);


    Paint paintCircle1 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
    ..strokeWidth = 5.0;
    canvas.drawCircle(Offset(100, 70), 180, paintCircle1);

    Paint paintCircle3 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0;
    canvas.drawCircle(Offset(20, 30), 20, paintCircle3);

    canvas.drawCircle(Offset(180, 30), 20, paintCircle3);

    Paint paintCircle4 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill
      ..strokeWidth = 4.0;
    canvas.drawCircle(Offset(180, 40), 10, paintCircle4);
    canvas.drawCircle(Offset(20, 40), 10, paintCircle4);

    Paint paintOval = Paint()
      ..color = Colors.purple
      ..style = PaintingStyle.fill;
    Rect ovalRect = Rect.fromPoints(Offset(0, 170), Offset(200, 220));
    canvas.drawOval(ovalRect, paintOval);

    Paint paintLine = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;
    canvas.drawLine(Offset(0, 195), Offset(200, 195), paintLine);

    Paint paintTriangle = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;
    Path path1 = Path();
    path1.moveTo(20, -50);
    path1.lineTo(0, 0);
    path1.lineTo(40, 0);
    path1.close();
    canvas.drawPath(path1, paintTriangle);

    Path path2 = Path();
    path2.moveTo(180, -50);
    path2.lineTo(160, 0);
    path2.lineTo(200, 0);
    path2.close();
    canvas.drawPath(path2, paintTriangle);

  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
