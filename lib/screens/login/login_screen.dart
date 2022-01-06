import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/core/theme/values/images.dart';
import 'package:brainbook/core/theme/values/text_style.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/rich_text.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:brainbook/routes/app_routes.dart';
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
     // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue.shade200,
      body: Form(
        key: controller.globalKey,
        child: SingleChildScrollView(
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
                obscureText: true,
                controller: controller.emailController,
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
                  controller: controller.passwordController,
                  inkWell: GestureDetector(
                    onTap: () {
                      controller.obscure = !controller.obscure;
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 14.0),
                      child: Text(
                        controller.obscure ? "Show" : "Hide",
                        style: GoogleFonts.poppins(color: fontColorLight),
                      ),
                    ),
                  ),
                ),
              ),
              ListTile(
                horizontalTitleGap: 0.0,

                title: const Text(
                  "Remember me",
                  style:TextStyle(fontSize: 13),
                ),
                leading: Obx(
                  () => Transform.scale(
                    scale: 0.9,
                    child: Checkbox(
                      shape: CircleBorder(),
                      value: controller.rememberMe,
                      onChanged: (value) {
                        controller.rememberMe = value;
                      },
                    ),
                  ),
                ),
                trailing: TextButton(
                  onPressed: ()=>Get.toNamed(Routes.forgotPasswordScreen),
                  child: Text("Forget Password?"),
                ),
              ),
              ButtonWidget(
                title: "LOGIN",
                onTap: ()=>Get.toNamed(Routes.dashBoardScreen),
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
                  GestureDetector(
                    onTap: (){},
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 10),
                        child: Image.asset(
                          googleImage,
                          height: 45,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 10),
                        child: Image.asset(
                          fbImage,
                          height: 45,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
          RichTextWidget(firstTitle:  " Don’t Have an Account?  ",secondTitle: "Sign Up",onTap: ()=>Get.toNamed(Routes.signupScreen),),

            ],
          ),
        ),
      ),
    ));
  }
}


