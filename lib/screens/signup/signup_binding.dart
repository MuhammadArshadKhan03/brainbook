import 'package:brainbook/data/provider/user_provider.dart';
import 'package:brainbook/screens/signup/signup_controller.dart';
import 'package:get/get.dart';

class SignUpBinding implements  Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpController(userProvider: UserProvider()));
  }
}