import 'package:brainbook/screens/lads/sacr/sacr_controller.dart';
import 'package:get/get.dart';

class SACRBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => SACRController());
  }

}