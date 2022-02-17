import 'package:brainbook/data/model/user_model.dart';
import 'package:brainbook/data/provider/user_provider.dart';
import 'package:brainbook/screens/login/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_routes.dart';

class NewPasswordContoller extends GetxController {
  NewPasswordContoller({required this.userProvider});

  UserProvider userProvider;

  final _obscureNew = true.obs;

  get obscureNew => _obscureNew.value;

  set obscureNew(value) => _obscureNew.value = value;

  final _obscureConfrim = true.obs;

  get obscureConfrim => _obscureConfrim.value;

  set obscureConfrim(value) => _obscureConfrim.value = value;

  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  confrimPassword() async{


    if(globalKey.currentState!.validate())
    {
    try{
      final response =  await userProvider.newPassword(
          userId: Get.arguments[0],
          code: Get.arguments[1],
          password: newPasswordController.text,
          confirmPassword: confirmPasswordController.text);
      print("$response respoinsess");
      if(response[1]==true){
        Get.snackbar("Success", response[0]);
        Get.toNamed(Routes.passwordUpdateScreen);
      }
      else{
        Get.snackbar("Error", response[0]);
      }

    }
        catch(e){
      Get.snackbar("Error", e.toString());
        }

    }


  }
}
