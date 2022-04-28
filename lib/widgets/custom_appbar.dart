import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final Widget title;

  CustomAppbar({Key? key, required this.title})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return AppBar(
      title: title,
      centerTitle: true,
      elevation: 0,
      titleTextStyle:TextStyle(
        fontSize: size*0.06,
        fontWeight: FontWeight.bold,
        letterSpacing: size*0.003
      ),
    );
  }
}
