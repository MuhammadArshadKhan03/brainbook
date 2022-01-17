import 'package:brainbook/screens/main/trespasser_apb/trespasser_apb_controller.dart';
import 'package:get/get.dart';

class TrespasserApbBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => TrespasserAPBController());
  }

}