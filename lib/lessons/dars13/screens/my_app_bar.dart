import 'package:flutter/material.dart';
import 'package:dars17/constans/const.dart';

class MyAppbar extends StatelessWidget with PreferredSizeWidget {
  final String? title;
  final Color? color;
  final Color? textColor;

  const MyAppbar({Key? key, this.color, this.textColor, this.title})
      : super(key: key);

  @override
  Size get preferredSize => const Size(double.infinity, 120);

 
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: textColor ?? Constants.kPrimaryColor),
      centerTitle: true,
      backgroundColor: color ?? Constants.kPrimaryColor,
      elevation: 0,
      title: Text(
        title ?? '',
        style: TextStyle(color: textColor ?? Constants.kPrimaryColor),
      ),
    );
  } 


  }
