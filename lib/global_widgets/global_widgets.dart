import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


//====== Button Widget  =============

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
    return ElevatedButton(
      onPressed: onTap,
      child: Text(
        title,
        style: GoogleFonts.poppins(fontSize: 18),
      ),

      style: ElevatedButton.styleFrom(
        //  primary:,
        // primary: Colors.transparent,
        // onPrimary: Colors.transparent,
          padding: const EdgeInsets.symmetric(vertical: 16,),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}

//====== TextFormField Widget ============

class TextFormFieldWidget extends StatelessWidget {
  TextFormFieldWidget({
    Key? key,
    this.inkWell,
    this.icon,
    this.title,
    this.obscureText,
  }) : super(key: key);

  Widget? inkWell;
  Icon? icon;
  String? title;
  bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        maxLines: 1,
        decoration: InputDecoration(
          suffixIcon: inkWell,

          // InkWell(onTap: (){},child: Padding(
          //   padding: const EdgeInsets.only(top: 16.0),
          //   child:  Text("Show",style: GoogleFonts.poppins(color: fontColorLight),),
          // ),),
          prefixIcon: icon!,
          //Icon(Icons.person_outline),
          filled: true,
          fillColor: Colors.white,
          hintText: title!,
          hintStyle: GoogleFonts.poppins(color: Colors.black),

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
        // controller: controller,
        obscureText: obscureText!,
        keyboardType: TextInputType.text,
      ),
    );
  }
}