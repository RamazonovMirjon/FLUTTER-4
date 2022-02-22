import 'package:flutter/material.dart';

class Extansion extends StatefulWidget {
  const Extansion({Key? key}) : super(key: key);

  @override
  State<Extansion> createState() => _ExtansionState();
}

class _ExtansionState extends State<Extansion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (_, __) => Material(
                elevation: 10,
                child: ExpansionTile(
                  collapsedBackgroundColor:
                      __ % 2 == 0 ? Colors.blue : Colors.white,
                  backgroundColor: __ % 2 == 0 ? Colors.white : Colors.red,
                  title: Text("data: $__"),
                  subtitle: Text('Subtitle: $__'),
                  children: [
                    Text('data $__'),
                    Image.network('https://source.unsplash.com/random/$__'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
