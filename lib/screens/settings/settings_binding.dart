import 'package:brainbook/screens/settings/settings_controller.dart';
import 'package:get/get.dart';

class SettingsBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => SettingsController());
  }


}