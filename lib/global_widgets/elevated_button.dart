
import 'package:brainbook/core/theme/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({
    Key? key,
    required this.title,
    required this.onTap,
    this.padding,
    this.borderRadiusGeometry,
    this.borderRadiusGeometry2,
    this.icon
  }) : super(key: key);

  String title;
  VoidCallback? onTap;
  EdgeInsetsGeometry? padding;
  BorderRadiusGeometry? borderRadiusGeometry;
  BorderRadiusGeometry? borderRadiusGeometry2;
   Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        decoration: BoxDecoration(gradient: linearColor,borderRadius: borderRadiusGeometry??BorderRadius.circular(10)),
        child: ElevatedButton(
          onPressed: onTap,
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(child: icon??null,),
              SizedBox(width: 6,),
              Text(
                title,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),

          style: ElevatedButton.styleFrom(
            //  primary:,
             primary: Colors.transparent,
            // onPrimary: Colors.transparent,
              padding: padding?? EdgeInsets.symmetric(vertical: 16,),
              shape:
              RoundedRectangleBorder(borderRadius: borderRadiusGeometry2??BorderRadius.circular(10))),
        ),
      ),
    );
  }
}