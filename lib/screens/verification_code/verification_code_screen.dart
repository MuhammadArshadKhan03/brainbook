import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/core/theme/values/images.dart';
import 'package:brainbook/core/theme/values/text_style.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/rich_text.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:brainbook/screens/verification_code/verification_code_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:pinput/pin_put/pin_put.dart';

class VerificationCode extends GetView<VerificationCodeController> {
  const VerificationCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: containerColor,
        body: SingleChildScrollView(
          child: Form(
          //  key: controller.globalKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    IconButton(onPressed: ()=>Get.back(), icon: Icon(Icons.arrow_back)),
                    const SizedBox(width: 75,),
                    const Text("Forgot Password",textAlign: TextAlign.center,)
                  ],
                ),
                const SizedBox(height: 40,),
                Image.asset(verificationImage,height: 190,),
                const SizedBox(height: 40,),
                Text("Verification code?",style: textStyle,textAlign: TextAlign.center,),
                const SizedBox(height: 15,),
                Text("Enter the 4 digit code that you recieved on your email.",textAlign: TextAlign.center,style: TextStyle(fontSize: 13),),
                const SizedBox(height: 25,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: PinPut(
                    fieldsCount: 4,
                    focusNode: FocusNode(),
                    controller: controller.verificationCode,
                    submittedFieldDecoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    selectedFieldDecoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),

                    ),
                    followingFieldDecoration:BoxDecoration (
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                const SizedBox(height: 35,),
                ButtonWidget(title: "VERIFY",onTap: ()=>Get.toNamed(Routes.newPasswordScreen),),
                const SizedBox(height: 45,),
                RichTextWidget(onTap: (){},firstTitle:"If you didn’t receive a code!  " ,secondTitle: "Resend",)
              ],
            ),
          ),
        ),
      ),
    );
  }
}