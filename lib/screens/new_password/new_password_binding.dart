import 'package:brainbook/data/provider/user_provider.dart';
import 'package:brainbook/screens/new_password/new_password_controller.dart';
import 'package:get/get.dart';



class NewPasswordBinding implements Bindings{
  @override
  void dependencies() {

    Get.lazyPut(() => NewPasswordContoller(userProvider: UserProvider()));
  }

}