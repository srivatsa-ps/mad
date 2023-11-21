import 'package:flutter/material.dart';

void main() {
  runApp(PyramidApp());
}

class PyramidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PyramidScreen(),
    );
  }
}

class PyramidScreen extends StatefulWidget {
  @override
  _PyramidScreenState createState() => _PyramidScreenState();
}

class _PyramidScreenState extends State<PyramidScreen> {
  TextEditingController _controller = TextEditingController();
  String pyramidOutput = '';

  void buildPyramid(int n) {
    // Clear previous output
    setState(() {
      pyramidOutput = '';
    });

    // Build pyramid
    for (int i = 1; i <= n; i++) {
      String spaces = ' ' * (n - i);
      String stars = '*' * (2 * i - 1);
      setState(() {
        pyramidOutput += '$spaces$stars\n';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pyramid App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter value of n'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                int n = int.tryParse(_controller.text) ?? 0;
                buildPyramid(n);
              },
              child: Text('Build Pyramid'),
            ),
            SizedBox(height: 20),
            Text(
              'Pyramid Output:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
              ),
              child: Text(
                pyramidOutput,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
