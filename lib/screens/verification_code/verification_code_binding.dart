import 'package:brainbook/data/provider/user_provider.dart';
import 'package:brainbook/screens/verification_code/verification_code_controller.dart';
import 'package:get/get.dart';

class VerficationBinding implements Bindings{
  @override
  void dependencies() {
  Get.lazyPut(() => VerificationCodeController(userProvider: UserProvider()));
  }

}