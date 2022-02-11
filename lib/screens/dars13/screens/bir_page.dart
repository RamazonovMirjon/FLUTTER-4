import 'package:darslar/screens/dars13/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';



class BirPage extends StatelessWidget {
  const BirPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Scaffold(
        appBar: MyAppBar(
          title: "Birinchi page",
          color: Colors.transparent,
        ),
      );
}
