// ignore_for_file:  prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget calcbutton(String btnTxt, Color btnColor, Color txtColor) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          // function for button press
        },
        child: Text(
          btnTxt,
          style: TextStyle(
            color: txtColor,
            fontSize: 35,
          ),
        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(70),
          ),
          backgroundColor: btnColor,
          padding: EdgeInsets.all(10),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Calculator',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //calculatr display

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "${0}",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 100,
                    ),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //button function call
                calcbutton("AC", Colors.grey, Colors.black),
                calcbutton("+/-", Colors.grey, Colors.black),
                calcbutton("%", Colors.grey, Colors.black),
                calcbutton("/", Colors.amber[700]!, Colors.white),
                SizedBox(height: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
