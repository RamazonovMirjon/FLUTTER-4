import 'package:darslar/screens/dars18_steps/models/page_models.dart';
import 'package:flutter/material.dart';

class StepHomePage extends StatefulWidget {
  const StepHomePage({Key? key}) : super(key: key);

  @override
  _StepHomePageState createState() => _StepHomePageState();
}

class _StepHomePageState extends State<StepHomePage> {
  final List<PageModelSteps> _pages = List.generate(
    20,
    (index) => PageModelSteps(
      "Mirjon $index",
      'data $index chi',
      index,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('data')),
      body: ListView.separated(
        itemCount: _pages.length,
        separatorBuilder: (__, _) => const Divider(),
        itemBuilder: (__, _) => const ListTile(
          
        ),
      ),
    );
  }
}
