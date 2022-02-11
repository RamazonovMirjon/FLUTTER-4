import 'package:flutter/material.dart';

import '../constants/const.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title;
  final Color? color;
  final Color? textcolor;
  const MyAppBar({Key? key, this.color, this.textcolor, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: color ?? Constants.kPrimaryColor,
      iconTheme: IconThemeData(color: textcolor?? Constants.kPrimaryColor),
      elevation: 0,
      centerTitle: true,
      title: Text(
        title ?? '',
        style: TextStyle(
          color: textcolor ?? Constants.kPrimaryColor,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 80);
}
