import 'package:flutter/material.dart';

class Bottons extends StatefulWidget {
  const Bottons({Key? key}) : super(key: key);

  @override
  _BottonsState createState() => _BottonsState();
}

class _BottonsState extends State<Bottons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyMathod(context),
    );
  }
}

Widget bodyMathod(context) {
  return Column(
    children: [
      //FadeInImage(placeholder: placeholder, image: image),
      Image(
          height: MediaQuery.of(context).size.height * .5,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
          image: const AssetImage(
              'assets/images/photo-1528228377194-2faca82540e4.jpeg')),
      FadeInImage(

         placeholder: const AssetImage('assets/images/photo-1528228377194-2faca82540e4.jpeg'),
         fadeOutCurve:  Curves.easeInCirc ,
         fadeOutDuration:const  Duration(seconds: 4),
         
        
         image: const AssetImage('assets/images/sepkilli.jpeg'),
         fadeInDuration: const Duration(seconds: 10),
         fadeInCurve: Curves.fastLinearToSlowEaseIn,

        height: MediaQuery.of(context).size.height * .5,
        width: MediaQuery.of(context).size.height,
        fit: BoxFit.fill,
         


      
        
      ),
     
    ],
  );
}
