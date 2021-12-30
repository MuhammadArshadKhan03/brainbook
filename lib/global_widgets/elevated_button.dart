
import 'package:brainbook/core/theme/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  String title;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        decoration: BoxDecoration(gradient: linearColor,borderRadius: BorderRadius.circular(10)),
        child: ElevatedButton(
          onPressed: onTap,
          child: Text(
            title,
            style: TextStyle(fontSize: 18),
          ),

          style: ElevatedButton.styleFrom(
            //  primary:,
             primary: Colors.transparent,
            // onPrimary: Colors.transparent,
              padding: const EdgeInsets.symmetric(vertical: 16,),
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        ),
      ),
    );
  }
}