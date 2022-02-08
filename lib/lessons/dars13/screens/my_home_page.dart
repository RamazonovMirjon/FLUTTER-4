import 'package:dars17/screens/my_app_bar.dart';
import 'package:dars17/screens/uch_page.dart';
import 'package:flutter/material.dart';

import 'bir_page.dart';
import 'ikki_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(
        title: "My Home Page",
        color: Colors.transparent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Bir Page Push'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BirPage()),
                );
              },
            ),
            
            ElevatedButton(
              child: const Text('Ikkinchi Page && Send Data'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const IkkiPage()),
                );
              },
            ),
            
            ElevatedButton(
              child: const Text('Uchinchi Page'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const UchPage(
                            titlee: '',
                          )),
                );
              },
            ),
            
            ElevatedButton(
              child: const Text('Uchinchi Page && Dont Back'),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const UchPage(
                            titlee: '',
                          )),
                );
              },
            ),
          
          ],
        ),
      ),
    );
  }
}
                                                                                

