import 'package:get/get.dart';

import 'switch_state_controller.dart';

class SwitchStateBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => SwitchStateController());
  }

}