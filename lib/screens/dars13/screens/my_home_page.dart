import 'package:flutter/material.dart';

import '../widgets/my_app_bar.dart';
import 'bir_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const MyAppBar(
          title: "My Home Page",
          color: Colors.transparent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text("Bir page push"),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const BirPage(),),);
                },
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.orange ),
                child: const Text("ikkinchi Page & send data"),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const BirPage(),),);
                },
              ),
            ],
          ),
        ),
      );
}
