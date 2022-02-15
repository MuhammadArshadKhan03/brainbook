import 'package:brainbook/data/provider/user_provider.dart';
import 'package:get/get.dart';

import 'forgot_password_controller.dart';

class ForgotPasswordBinding implements Bindings{
  @override
  void dependencies() {

    Get.lazyPut(() => ForogtPasswordContoller(userProvider: UserProvider()));
  }

}