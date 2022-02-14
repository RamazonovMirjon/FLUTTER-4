import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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
                child: Swiper ()
            ),
            Container(
              height: 300,
              width: 300,
              color: Colors.yellow.shade400,
              child: Stack(
                children: const [
                  Positioned(
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black)),
                    ),
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
