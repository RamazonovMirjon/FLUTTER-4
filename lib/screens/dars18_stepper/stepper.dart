import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage3 extends StatefulWidget {
  const MyHomePage3({Key? key}) : super(key: key);

  @override
  _MyHomePage3State createState() => _MyHomePage3State();
}

class _MyHomePage3State extends State<MyHomePage3> {
  final String __usernameControl;
  final String __currentStep;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Stepper(
        steps: [],
        onStepContinue: () {
          if (_usernameControl.text.isEmpty &&
              _currentStep == 0) if (_usernameKey.currentState!.valedate()) {}
          ;
        },
      )),
    );
  }
}
