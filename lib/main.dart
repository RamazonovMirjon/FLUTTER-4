import 'package:darslar/dars4.dart';

import 'dars5.dart';
import 'package:flutter/material.dart';

import 'dars6.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mirjon',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: ColorScheme.light(
            primary: Colors.white
        ),
      ),
      home: const Narxlar(),
    );
  }
}
