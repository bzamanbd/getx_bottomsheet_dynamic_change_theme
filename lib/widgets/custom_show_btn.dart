import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomShowBtn extends StatelessWidget {
  const CustomShowBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double size  = MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: ()=>Get.bottomSheet(
        SizedBox(
          width: double.infinity,
          height: size*.35,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green[100]
            ),
            child: Wrap(
              children: [
                ListTile(
                 leading: const Icon(Icons.wb_sunny_outlined),
                 title: const Text('Light Theme'),
                 onTap: ()=>Get.changeTheme(ThemeData.light())
                ),
                ListTile(
                 leading: const Icon(Icons.wb_sunny),
                 title: const Text('Dark Theme'),
                 onTap: ()=>Get.changeTheme(ThemeData.dark())
                ),
              ],

            ),
          ),
        )
      ),
      child: const Text('ClickToShow'),
    );
  }
}