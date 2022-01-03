import 'package:brainbook/global_widgets/appbar.dart';
import 'package:flutter/material.dart';

class RecruitsStudyingScreen extends StatelessWidget {
  const RecruitsStudyingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: "Recruits / Studying",
        ),
      ),
    );
  }
}
