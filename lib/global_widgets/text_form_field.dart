import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';






//====== TextFormField Widget ============

class TextFormFieldWidget extends StatelessWidget {
  TextFormFieldWidget({
    Key? key,
    this.inkWell,
    this.icon,
   required this.title,
    this.obscureText,
   required this.controller,
    this.maxLine
  }) : super(key: key);

 final Widget? inkWell;
 final Icon? icon;
  final String title;
  final bool? obscureText;
  final TextEditingController? controller;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        maxLines: maxLine??1,
        //autofocus: true,
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,

          suffixIcon: inkWell??null,
          prefixIcon: icon??null,
          //Icon(Icons.person_outline),
          filled: true,
          fillColor: Colors.white,
          hintText: title,
          hintStyle: TextStyle(color: Colors.grey),

          // --- when user does not interact with -----
          border: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 4.0, color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
         controller: controller,
        obscureText: obscureText??false,
        keyboardType: TextInputType.text,
      ),
    );
  }
}