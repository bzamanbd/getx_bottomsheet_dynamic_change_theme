import 'package:flutter/material.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_show_btn.dart';
class HomeScreen extends StatelessWidget {
  final String title;
  const HomeScreen({Key? key,required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title:Text(title)),
      body:const Center(
        child: CustomShowBtn(),
      )
    );
  }
}
