import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/core/theme/values/images.dart';
import 'package:brainbook/core/theme/values/text_style.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/rich_text.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'signup_controller.dart';

class SignUp extends GetView<SignUpController> {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          //resizeToAvoidBottomInset: false,
          backgroundColor: containerColor,
          body: SingleChildScrollView(physics:ScrollPhysics() ,
            child: Form(
              key: controller.globalKey,
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
                    height: 35,
                  ),
                  Text(
                    "Sign up to get started",
                    style: textStyle,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  TextFormFieldWidget(
                    title: "Lorem ipsum ",
                    icon: Icon(Icons.email_outlined, color: fontColorDark),
                    obscureText: false,
                    controller: controller.emailController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Obx(
                        () => TextFormFieldWidget(
                      title: "Password ",
                      icon: const Icon(
                        Icons.lock_open_outlined,
                        color: fontColorDark,
                      ),
                      controller: controller.passwordController,
                      obscureText: controller.obscure,
                      inkWell: GestureDetector(
                        onTap: () {
                          controller.obscure = !controller.obscure;
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Text(
                            controller.obscure ? "Show" : "Hide",
                            style: TextStyle(color: fontColorLight)
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormFieldWidget(
                    title: "State ",
                    icon: Icon(Icons.location_city, color: fontColorDark),
                    obscureText: false,
                    controller: controller.stateController,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ButtonWidget(
                    title: "CREATE ACCOUNT",
                    onTap: () {},
                  ),

                  const SizedBox(
                    height: 35,
                  ),
                  RichTextWidget(firstTitle:  "Already Have an Account?  ",secondTitle: "Login",onTap: ()=>Get.back(),),

                ],
              ),
            ),
          ),
        ));
  }
}
