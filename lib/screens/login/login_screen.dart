import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/core/theme/values/images.dart';
import 'package:brainbook/core/theme/values/text_style.dart';
import 'package:brainbook/global_widgets/global_widgets.dart';
import 'package:brainbook/screens/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends GetView<LoginController> {
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: containerColor,
      body: Form(
        key: controller.globalKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 35,
                ),
                Image.asset(
                  splashImage,
                  height: 120,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Welcome back",
                  style: textStyle,
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Sign in to continue",
                  style: textStyle,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormFieldWidget(
                  title: "Lorem ipsum ",
                  icon: Icon(Icons.person_outlined, color: fontColorDark),
                  obscureText: false,
                ),
                const SizedBox(
                  height: 15,
                ),
                Obx(
                  () => TextFormFieldWidget(
                    title: "Password ",
                    icon: const Icon(
                      Icons.lock_open_outlined,
                      color: fontColorDark,
                    ),
                    obscureText: controller.obscure,
                    inkWell: GestureDetector(
                      onTap: () {
                        controller.obscure = !controller.obscure;
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                          controller.obscure ? "Show" : "Hide",
                          style: GoogleFonts.poppins(color: fontColorLight),
                        ),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  horizontalTitleGap: 0.5,
                  title: Text(
                    "Remember me",
                    style:
                        GoogleFonts.poppins(color: Colors.black, fontSize: 13),
                  ),
                  leading: Obx(
                    () => Transform.scale(
                      scale: 0.8,
                      child: Checkbox(
                        value: controller.rememberMe,
                        onChanged: (value) {
                          controller.rememberMe = value;
                        },
                      ),
                    ),
                  ),
                  trailing: TextButton(
                    onPressed: () {},
                    child: Text("Forget Password?"),
                  ),
                ),
                ButtonWidget(
                  title: "LOGIN",
                  onTap: () {},
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "or",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      color: Colors.white,
                      child: Image.asset(
                        googleImage,
                        height: 60,
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: Image.asset(
                          fbImage,
                          height: 50,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
