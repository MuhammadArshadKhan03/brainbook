import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../data/provider/user_provider.dart';
import '../../routes/app_routes.dart';

class ForogtPasswordContoller extends GetxController{

ForogtPasswordContoller({required this.userProvider});
  late UserProvider userProvider;

  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();


sendRequest() async{
  if (globalKey.currentState!.validate()){


    try{
      final response = await  userProvider.passwordReset(email: emailController.text);

      if(response[1]==true){

        //Get.snackbar("scucess", response[0]);
        Get.toNamed(Routes.verificationCodeScreen,arguments: emailController.text);
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