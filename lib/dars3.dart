import 'package:flutter/material.dart';

class Dars3 extends StatefulWidget {
  const Dars3({Key? key}) : super(key: key);

  @override
  _Dars3State createState() => _Dars3State();
}

class _Dars3State extends State<Dars3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(), body: bodyApps());
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      title: const Text('UchinchiDars'),
      backgroundColor: Colors.white.withOpacity(0),
      elevation: 0,
    );
  }
}

Container bodyApps() {
  return Container(
    color: Colors.blue,
    
    child: Column(
    
      children: [
        Expanded(
          child: Image.asset('assets/images/sepkilli.jpeg',centerSlice: Rect.zero,),

        ),
       const Expanded(
          child: CircleAvatar(
            backgroundColor: Colors.red,
            foregroundColor: Colors.black,
            
            maxRadius: 160,
            minRadius: 100,
            
            backgroundImage: AssetImage('assets/images/sepkilli.jpeg'),
            
            child: CircleAvatar(),
            



          ),

        ),
        
        
        const Divider(
          color: Colors.black,
          height: 20,
          endIndent: 200,
          indent: 100,
          thickness: 300,
        ),
      ],
    ),
  );
}
