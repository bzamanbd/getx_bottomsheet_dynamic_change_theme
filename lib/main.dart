import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bottomsheet_dynamic_theme/themes/color_palette.dart';

import 'themes/themes.dart';
import 'views/home_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final String _title = 'bottom sheet'.toUpperCase();
   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primarySwatch: ColorPalette.swColor,
        primaryColor: ColorPalette.primaryColor,
        secondaryHeaderColor: ColorPalette.secondaryColor,
        scaffoldBackgroundColor:ColorPalette.scaffoldBgColor,
        textTheme: Themes.txtTheme,
      ),
      routes: {
        '/':(_)=>HomeScreen(title:_title),
      },
    );
  }
}
