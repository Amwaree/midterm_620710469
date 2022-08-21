import 'package:flutter/material.dart';
import 'package:midterm_620710469/calculate.dart';

class Temp extends StatefulWidget {
  @override
  State<Temp> createState() => _TempState();
}

class _TempState extends State<Temp> {
  final _controller = TextEditingController();
  final _cal = calculate();
  var _feedbackText = "";

  void handClick(){
  print("Buttom clicked");
  print(_controller.text);
  var guess = double.parse(_controller.text);
  if(guess== null){
    print("Input Error!!");
    setState(() {
      _feedbackText = "Input Error!!";
    });
  }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Midterm Exam")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Temperature Converter"),
          SizedBox(height: 50.0),
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText:"Enter a temperature value to convert",
            ),
          ),

          SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: handClick,
            child:const Text("Celsius to Fahrenheit"),
          ),
          Text(_feedbackText),

          SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: handClick,
            child:const Text("Celsius to Kelvin"),
          ),
          Text(_feedbackText),

          SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: handClick,
            child:const Text("Fahrenheit to Celsius"),
          ),
          Text(_feedbackText),

          SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: handClick,
            child:const Text("Fahrenheit to Kelvin"),
          ),
          Text(_feedbackText),

          SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: handClick,
            child:const Text("Kelvin to Celsius"),
          ),
          Text(_feedbackText),

          SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: handClick,
            child:const Text("Kelvin to Fahrenheit"),
          ),
          Text(_feedbackText),

        ],
      ),
    );
  }
}