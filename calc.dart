import 'package:flutter/material.dart';
import 'widgets.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  late int firstnum;
  late int secondnum;
  late String history='';
  late String textToDisplay='';
  late String res;
  late String operation;


  void BtnOnClick(String btnval){
    print(btnval);
    if(btnval =='C'){
      firstnum=0;
      secondnum=0;
      res='';
      textToDisplay='';
      operation='';
    } else if(btnval == '+' || btnval == '-' ||btnval == 'x' ||btnval == '/' ){
      firstnum= int.parse(textToDisplay);
      res='';
      operation=btnval;
    }else if(btnval== '=') {
      secondnum = int.parse(textToDisplay);
      if (operation == '+') {
        res = (firstnum + secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == '-') {
        res = (firstnum - secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == 'x') {
        res = (firstnum * secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == '/') {
        res = (firstnum / secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
    }
      else{
        res= (textToDisplay + btnval).toString();
      }

      setState(() {
        textToDisplay = res;
      });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator app',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: Text('calculator app'),
        ),
        body: Container(
          margin: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    history,style: TextStyle(fontSize: 24,color: Colors.blueAccent,),
                  ),
                ),
                alignment: Alignment(1.0,1.0),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    textToDisplay,style: TextStyle(fontSize: 48,color: Colors.black,),
                  ),
                ),
                alignment: Alignment(1.0,1.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  CalculatorButton(text: 'C',callback:BtnOnClick),
                  CalculatorButton(text:'()', callback: BtnOnClick,),
                  CalculatorButton(text: '%', callback: BtnOnClick,),
                  CalculatorButton(text:'/', callback: BtnOnClick,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
              CalculatorButton(text: '7', callback: BtnOnClick,),
              CalculatorButton(text:'8', callback: BtnOnClick,),
                CalculatorButton(text: '9', callback: BtnOnClick,),
                CalculatorButton(text:'x', callback: BtnOnClick,),
              ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  CalculatorButton(text: '4', callback: BtnOnClick,),
                  CalculatorButton(text:'5', callback: BtnOnClick,),
                  CalculatorButton(text: '6', callback: BtnOnClick,),
                  CalculatorButton(text:'-', callback: BtnOnClick),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  CalculatorButton(text: '1',callback: BtnOnClick,),
                  CalculatorButton(text:'2', callback: BtnOnClick,),
                  CalculatorButton(text: '3', callback: BtnOnClick,),
                  CalculatorButton(text:'+', callback: BtnOnClick,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  CalculatorButton(text: '+/-', callback: BtnOnClick,),
                  CalculatorButton(text:'0', callback: BtnOnClick,),
                  CalculatorButton(text: '00', callback: BtnOnClick,),
                  CalculatorButton(text:'=', callback: BtnOnClick,),
                ],
              ),
          ]
          ),
        ),
      )
      );
  }
}

class CalculatorButton extends StatelessWidget {

  final String text;
  final Function callback;

  const CalculatorButton({
    required this.text,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return
      Container(
          margin: EdgeInsets.all(10.0),
          child:SizedBox(
            width: 70,
            height: 70,
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
                shape:
                MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              child: Text(
                text,
                style: TextStyle(fontSize: 24.0, color: Colors.black54),
              ),
              onPressed: ()=> callback(text),
            ),
          )
      );
  }
}

