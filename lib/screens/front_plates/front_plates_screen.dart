import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';

class FrontPlatesScreen extends StatelessWidget {
   FrontPlatesScreen({Key? key}) : super(key: key);
  static const int? $bull = 0x2022;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(title: "Front Plates"),
     backgroundColor: Colors.blue.shade200,
        body: Column(
          children: [
            HeadingTextWidget(text: "Front License Plates"),
            Card(
              color: Colors.red,
              child: Column(
                children: [
                  Text("!"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

