import 'package:get/get.dart';

import 'ny_state_police_controller.dart';

class NYStatePoliceBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => NYStatePoliceController());
  }

}