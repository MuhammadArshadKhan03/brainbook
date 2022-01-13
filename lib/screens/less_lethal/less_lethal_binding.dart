import 'package:brainbook/screens/less_lethal/less_lethal_controller.dart';
import 'package:get/get.dart';

class LessLethalBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => LessLethalController());
  }
}