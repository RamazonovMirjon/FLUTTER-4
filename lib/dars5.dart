import 'package:flutter/material.dart';

class Narxlar extends StatefulWidget {
  const Narxlar({Key? key}) : super(key: key);

  @override
  _NarxlarState createState() => _NarxlarState();
}

class _NarxlarState extends State<Narxlar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Example App'),
      ),
      body: bodyy(context),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(onPressed: () {}),
          Container(
            color: Colors.amber,
            height: 100,
            width: 100,
          )
        ],
      ),
    );
  }
}

Widget bodyy(context) {
  return Container(
    margin: const EdgeInsets.only(top: 300),
    alignment: Alignment.bottomLeft,
    height: 400,
    width: 400,
    child: Container(
      color: Colors.brown,
      height: 200,
      width: 200,
      child: Stack(
        alignment: Alignment.bottomRight,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        fit: StackFit.passthrough,
        textDirection: TextDirection.rtl,
        children: [
          const Image(
            image: AssetImage('assets/images/sepkilli.jpeg'),
          ),
          Positioned(
              child: Text(
            'data',
            textAlign: TextAlign.center,
          )),
          Image.asset('assets/images/sepkilli.jpeg', fit: BoxFit.cover),
          Text(
            'Mirjon',
            textAlign: TextAlign.center,
          ),
          Positioned(
            child: Text("aloooo"),
          ),
        ],
      ),
    ),
    decoration: const BoxDecoration(
        color: Colors.blue,
        image: DecorationImage(
          image: AssetImage('assets/images/sepkilli.jpeg'),
          fit: BoxFit.fill,
        )),
  );
}
