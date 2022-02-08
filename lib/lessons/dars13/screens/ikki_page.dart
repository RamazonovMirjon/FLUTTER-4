

import 'package:dars17/screens/my_app_bar.dart';
import 'package:flutter/material.dart';

class IkkiPage extends StatelessWidget {
  const IkkiPage({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      appBar: MyAppbar(
        title: "Ikkinchi Page",
        color: Colors.transparent,
        textColor: Colors.red,
      ),
    );
  }
}