import 'package:brainbook/data/provider/user_provider.dart';
import 'package:brainbook/screens/profile/profile_controller.dart';
import 'package:get/get.dart';

class ProfileBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ProfileController(userProvider: UserProvider()));
  }

}