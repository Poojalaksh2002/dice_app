import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Diceeee',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.black,
        elevation: 10.0,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDynamicNum = 1;
  int rightDynamicNum = 1;

  @override
  Widget build(BuildContext context) {
    void changeDiceFace() {
      setState(() {
        leftDynamicNum = Random().nextInt(6) + 1;
        rightDynamicNum = Random().nextInt(6) + 1;
        print('rightDynamicNum: $rightDynamicNum');
        print('leftDynamicNum: $leftDynamicNum');
      });
    }

    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                child: Image.asset('images/dice$leftDynamicNum.png'),
                onPressed: () => changeDiceFace()),
          ),
          Expanded(
            child: TextButton(
                child: Image.asset('images/dice$rightDynamicNum.png'),
                onPressed: () => changeDiceFace()),
          ),
        ],
      ),
    );
  }
}
