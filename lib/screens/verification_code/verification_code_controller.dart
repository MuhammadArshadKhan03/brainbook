import 'package:brainbook/data/provider/user_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class VerificationCodeController extends GetxController{
  VerificationCodeController({required this.userProvider});
  late UserProvider userProvider;

  TextEditingController verificationCode = TextEditingController();
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  verifyCode() async{
    print("aaaaaaaa");
    print(Get.arguments);
if(globalKey.currentState!.validate()){

 // print(Get.arguments);
  try{
    final response = await userProvider.verifyCode(code: verificationCode.text);
    print("$response aaaaaaaaaa");
    if(response[1]==true){
      Get.snackbar("Success", "Code verify");
    }
    else{
      Get.snackbar("Error", response);
    }
  }
  catch(e){
    Get.snackbar("Error",e.toString());
  }
}

  }

}