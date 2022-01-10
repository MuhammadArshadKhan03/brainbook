// ignore_for_file: prefer_const_constructors

import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';

class MirandaScreen extends StatelessWidget {
  const MirandaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: "Miranda",
        ),
        backgroundColor: Colors.blue.shade200,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20,),
            HeadingTextWidget(text: "Miranda Rights"),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context,index){
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
                  child: Text("You have the right to remain silent. Do you understand?"),
                );
              }),
            ),
            SizedBox(height: 20,),
            Divider(height: 1,color: Colors.black,),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 18.0),
              child: HeadingTextWidget(text: "Spanish"),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
                  child: Text("Usted tiene derecho a permanecer en silencio. Vos si comprender?"),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
