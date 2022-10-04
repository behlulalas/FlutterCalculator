// ignore_for_file: deprecated_member_use,

import 'package:calculatorapp/widgets/calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const CalculatorApp());

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  int firstNum = 0;
  int secondNum = 0;
  String history = '';
  String textToDisplay = '';
  String res = '';
  String operation = '';

  void btnOnClick(String btnVal) {
    print(btnVal);
    if (btnVal == 'C') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
    } else if (btnVal == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
      history = '';
    } else if (btnVal == '+/-') {
      if (textToDisplay[0] != '-') {
        res = '-' + textToDisplay;
      } else {
        res = textToDisplay.substring(1);
      }
    } else if (btnVal == '<') {
      res = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'X' ||
        btnVal == '/') {
      firstNum = int.parse(textToDisplay);
      res = '';
      operation = btnVal;
    } else if (btnVal == '=') {
      secondNum = int.parse(textToDisplay);
      if (operation == '+') {
        res = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '-') {
        res = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '/') {
        res = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'X') {
        res = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnVal).toString();
    }
    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Calculator',
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Flutter Calculator"),
          ),
          backgroundColor: Color(0xFF28527a),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    history,
                    style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                      fontSize: 24,
                      color: Color(0x66FFFFFF),
                    )),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    res,
                    style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                    )),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: "AC",
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    fontSize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: "C",
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    fontSize: 24,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: "<",
                    fillColor: 0xFFf4d160,
                    textColor: 0xFF000000,
                    fontSize: 24,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: "/",
                    fillColor: 0xFFf4d160,
                    textColor: 0xFF000000,
                    fontSize: 24,
                    callback: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: "9",
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    fontSize: 24,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: "8",
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    fontSize: 24,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: "7",
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    fontSize: 24,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: "X",
                    fillColor: 0xFFf4d160,
                    textColor: 0xFF000000,
                    fontSize: 24,
                    callback: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: "6",
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    fontSize: 24,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: "5",
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    fontSize: 24,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: "4",
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    fontSize: 24,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: "-",
                    fillColor: 0xFFf4d160,
                    textColor: 0xFF000000,
                    fontSize: 24,
                    callback: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: "3",
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    fontSize: 24,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: "2",
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    fontSize: 24,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: "1",
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    fontSize: 24,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: "+",
                    fillColor: 0xFFf4d160,
                    textColor: 0xFF000000,
                    fontSize: 24,
                    callback: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: "+/-",
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    fontSize: 22,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: "0",
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    fontSize: 24,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: "00",
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    fontSize: 24,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: "=",
                    fillColor: 0xFFf4d160,
                    textColor: 0xFF000000,
                    fontSize: 24,
                    callback: btnOnClick,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
