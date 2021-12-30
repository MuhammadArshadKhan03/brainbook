import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/core/theme/values/text_style.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:brainbook/screens/new_password/new_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewPassword extends GetView<NewPasswordContoller> {
  const NewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: containerColor,
        body: SingleChildScrollView(
          child: Form(
            key: controller.globalKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    IconButton(onPressed: ()=>Get.back(), icon: Icon(Icons.arrow_back)),
                    SizedBox(width: 75,),
                    Text("Forgot Password",textAlign: TextAlign.center,)
                  ],
                ),
                SizedBox(height: 40,),
                Text("New Password?",style: textStyle,textAlign: TextAlign.center,),
                SizedBox(height: 35,),
                Text("Please enter your new password and sign in to your",textAlign: TextAlign.center,style: TextStyle(fontSize: 13),),
                Text("account.",textAlign: TextAlign.center,style: TextStyle(fontSize: 13),),
                SizedBox(height: 35,),
                Obx(
                      () => TextFormFieldWidget(
                    title: "New password ",
                    icon: const Icon(
                      Icons.lock_open_outlined,
                      color: fontColorDark,
                    ),
                    controller: controller.newPasswordController,
                    obscureText: controller.obscureNew,
                    inkWell: GestureDetector(
                      onTap: () {
                        controller.obscureNew = !controller.obscureNew;
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                            controller.obscureNew ? "Show" : "Hide",
                            style: TextStyle(color: fontColorLight)
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 35,),
                Obx(
                      () => TextFormFieldWidget(
                    title: "Confrim new password ",
                    icon: const Icon(
                      Icons.lock_open_outlined,
                      color: fontColorDark,
                    ),
                    controller: controller.confrimPasswordController,
                    obscureText: controller.obscureConfrim,
                    inkWell: GestureDetector(
                      onTap: () {
                        controller.obscureConfrim = !controller.obscureConfrim;
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                            controller.obscureConfrim ? "Show" : "Hide",
                            style: TextStyle(color: fontColorLight)
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 45,),
                ButtonWidget(title: "CONFRIM",onTap: ()=>Get.toNamed(Routes.passwordUpdateScreen),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
