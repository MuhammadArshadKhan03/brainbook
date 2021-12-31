import 'package:brainbook/core/theme/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(65);

  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(gradient: linearColor),
      ),
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () => Get.back(),
      ),
      title:Text(title,style: TextStyle(fontSize: 15),),
      centerTitle: true,
    );
  }

}