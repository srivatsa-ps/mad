import 'package:flutter/material.dart';
import 'package:lab/change.dart';
import 'package:lab/robot.dart';

void main() {
  runApp(MaterialApp(
    home: InputScreen(),
  ));
}
class InputScreen extends StatelessWidget {
  TextEditingController namec = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        title:Text('input'),
        backgroundColor: Colors.teal.shade700,
      ),
      body:Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
              SizedBox(height: 20.0,),
              TextField(
                style: TextStyle(
                  color: Colors.white
                ),
                controller: namec,
                decoration: InputDecoration(
                  labelText: 'name',
                  labelStyle: TextStyle(
                    color: Colors.red
                  )

                ),
              ),
                SizedBox(height: 30.0,),
                ElevatedButton(
                    onPressed:(){
                      Navigator.push(context,
                      MaterialPageRoute(builder:(context)=>Displayscreen(namec.text)));
                    },
                    child:Text('submit')),
                ElevatedButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>MyHomePage()));
                }, child: Text('change'))
          ],
        ),
      ),
    ) ,
    );
  }
}
