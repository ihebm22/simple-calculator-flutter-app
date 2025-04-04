import 'package:flutter/material.dart';
import 'custom_widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MainScreen(),
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController inputController = TextEditingController();
  double sum = 0;
  String operation = '';
  bool isNewNumber = true;

  void calculateResult(String op) {
    if (inputController.text.isEmpty) return;
    
    double currentNum = double.parse(inputController.text);
    
    if (isNewNumber) {
      sum = currentNum;
      isNewNumber = false;
    } else {
      switch (operation) {
        case '+':
          sum += currentNum;
          break;
        case '-':
          sum -= currentNum;
          break;
        case 'x':
          sum *= currentNum;
          break;
        case '÷':
          if (currentNum != 0) {
            sum /= currentNum;
          }
          break;
      }
    }
    
    operation = op;
    inputController.text = sum.toString();
    if (op != '=') {
      isNewNumber = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container( 
              padding: const EdgeInsets.all(16.0),
              color: const Color.fromARGB(255, 243, 249, 253),
              child: TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.end,
                controller: inputController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                cursorColor: Colors.blue,
                style: const TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
            Container( 
              padding: const EdgeInsets.all(16.0),
              height: 550,
              child: GridView.count(
                crossAxisCount: 4,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  calculatorButton(text: '1', onPressed: () {
                    if (isNewNumber) inputController.text = '';
                    inputController.text += '1';
                    isNewNumber = false;
                  }),
                  calculatorButton(text: '2', onPressed: () {
                    if (isNewNumber) inputController.text = '';
                    inputController.text += '2';
                    isNewNumber = false;
                  }),
                  calculatorButton(text: '3', onPressed: () {
                    if (isNewNumber) inputController.text = '';
                    inputController.text += '3';
                    isNewNumber = false;
                  }),
                  calculatorButton(text: '+', onPressed: () => calculateResult('+')),
                  calculatorButton(text: '4', onPressed: () {
                    if (isNewNumber) inputController.text = '';
                    inputController.text += '4';
                    isNewNumber = false;
                  }),
                  calculatorButton(text: '5', onPressed: () {
                    if (isNewNumber) inputController.text = '';
                    inputController.text += '5';
                    isNewNumber = false;
                  }),
                  calculatorButton(text: '6', onPressed: () {
                    if (isNewNumber) inputController.text = '';
                    inputController.text += '6';
                    isNewNumber = false;
                  }),
                  calculatorButton(text: '-', onPressed: () => calculateResult('-')),
                  calculatorButton(text: '7', onPressed: () {
                    if (isNewNumber) inputController.text = '';
                    inputController.text += '7';
                    isNewNumber = false;
                  }),
                  calculatorButton(text: '8', onPressed: () {
                    if (isNewNumber) inputController.text = '';
                    inputController.text += '8';
                    isNewNumber = false;
                  }),
                  calculatorButton(text: '9', onPressed: () {
                    if (isNewNumber) inputController.text = '';
                    inputController.text += '9';
                    isNewNumber = false;
                  }),
                  calculatorButton(text: 'x', onPressed: () => calculateResult('x')),
                  calculatorButton(text: '0', onPressed: () {
                    if (isNewNumber) inputController.text = '';
                    inputController.text += '0';
                    isNewNumber = false;
                  }),
                  calculatorButton(text: '.', onPressed: () {
                    if (isNewNumber) inputController.text = '';
                    inputController.text += '.';
                    isNewNumber = false;
                  }),
                  calculatorButton(text: '=', onPressed: () => calculateResult('=')),
                  calculatorButton(text: 'C', onPressed: () {
                    inputController.clear();
                    sum = 0;
                    operation = '';
                    isNewNumber = true;
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    inputController.dispose();
    super.dispose();
  }
}
