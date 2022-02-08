

import 'package:dars17/screens/my_app_bar.dart';
import 'package:flutter/material.dart';

class BirPage extends StatelessWidget {
  const BirPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      appBar: MyAppbar(
        title: "Birinchi Page",
        color: Colors.cyan,
      ),
    );
  }
}