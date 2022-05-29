import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget calcbutton(String btntxt, Color btncolor, Color txtcolor) {
    return Container(
      child: RaisedButton(
        onPressed: () {
          //To Do add function for button press
        },
        shape: const CircleBorder(),
        color: btncolor,
        padding: const EdgeInsets.all(20),
        child: Text(
          btntxt,
          style: TextStyle(
            fontSize: 35,
            color: txtcolor,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(('Calculator')),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //Calculator display
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        '0',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.white, fontSize: 100),
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //here button function will be called where we will pass some arguments
                  calcbutton('AC', Colors.grey, Colors.black),
                  calcbutton('+/-', Colors.grey, Colors.black),
                  calcbutton('%', Colors.grey, Colors.black),
                  calcbutton('/', Colors.amber.shade800, Colors.white),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //here button function will be called where we will pass some arguments
                  calcbutton('7', Colors.grey.shade800, Colors.white),
                  calcbutton('8', Colors.grey.shade800, Colors.white),
                  calcbutton('9', Colors.grey.shade800, Colors.white),
                  calcbutton('x', Colors.amber.shade700, Colors.white),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //here button function will be called where we will pass some arguments
                  calcbutton('4', Colors.grey.shade800, Colors.white),
                  calcbutton('5', Colors.grey.shade800, Colors.white),
                  calcbutton('6', Colors.grey.shade800, Colors.white),
                  calcbutton('-', Colors.amber.shade700, Colors.white),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //here button function will be called where we will pass some arguments
                  calcbutton('1', Colors.grey.shade800, Colors.white),
                  calcbutton('2', Colors.grey.shade800, Colors.white),
                  calcbutton('3', Colors.grey.shade800, Colors.white),
                  calcbutton('+', Colors.amber.shade700, Colors.white),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    padding: const EdgeInsets.fromLTRB(34, 20, 128, 20),
                    onPressed: () {},
                    shape: const StadiumBorder(),
                    color: Colors.grey[850],
                    child: const Text(
                      "0",
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                  ),
                  calcbutton('.', Colors.grey.shade800, Colors.white),
                  calcbutton('=', Colors.amber.shade700, Colors.white),
                ],
              )
            ],
          ),
        ));
  }
}
