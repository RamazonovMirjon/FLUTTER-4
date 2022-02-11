import 'package:flutter/material.dart';

class MyStack extends StatefulWidget {
  const MyStack({Key? key}) : super(key: key);

  @override
  _MyStackState createState() => _MyStackState();
}

class _MyStackState extends State<MyStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                  child: Container(
                color: Colors.amber,
              )),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    child: Container(color: Colors.green,height: 300,),
                   
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
