import 'package:flutter/material.dart';
class Displayscreen extends StatefulWidget {
  final String name;

  Displayscreen(this.name);

  @override
  _DisplayscreenState createState() => _DisplayscreenState();
}

class _DisplayscreenState extends State<Displayscreen> {
  Color c = Colors.red;
  double t = 20.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Display Screen'),
        backgroundColor: Colors.teal.shade700,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Your name is ${widget.name}",
                style: TextStyle(color: c, fontSize: t),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go back'),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      c = Colors.teal.shade700;
                    });
                  },
                  child: Text('change to teal')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      t = 40.0;
                    });
                  },
                  child: Text('increase font size')),
            ],
          ),
        ),
      ),
    );
  }
}
