
import 'dart:math';

import 'package:darslar/users.dart';
import 'package:flutter/material.dart';

class ListPages extends StatefulWidget {
  const ListPages({Key? key}) : super(key: key);

  @override
  _ListPagesState createState() => _ListPagesState();
}

class _ListPagesState extends State<ListPages> {
  final List<UserModel> _users = List.generate(
    20,
    (i) => UserModel(name: 'name: $i', userName: 'userName: $i', id: i),
  );

  final List<Color> _colors = [Colors.orange, Colors.cyan];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _users.length,
              itemExtent: 70,
              itemBuilder: (context, int index) {
                debugPrint("Element: $index");
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: _colors[Random().nextInt(2)],
                  ),
                );
              },
            ),
          ),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    Color colore = _colors[Random().nextInt(2)];
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundColor: colore,
                        child: const Text('Mirjon'),
                      ),
                      title: const Text('data'),
                      subtitle: const Text("Sub"),
                      onTap: () {
                        showSnack(index, colore);
                      },
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                  itemCount: 20))
        ],
      )),
    );

  }
void showSnack(int i, Color c) {
  ScaffoldMessenger.of(context);
}
}

class ListTitle {
  ListTitle(leading);
}
