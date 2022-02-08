import 'package:dars17/screens/my_app_bar.dart';
import 'package:flutter/material.dart';

class UchPage extends StatelessWidget {
  final String titlee;
  const UchPage({Key? key, required this.titlee}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      appBar: MyAppbar(
        
        color: Colors.transparent,
        textColor: Colors.yellow,
      ),
    );
  }
}
