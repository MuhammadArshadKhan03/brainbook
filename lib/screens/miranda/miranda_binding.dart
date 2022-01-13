import 'package:get/get.dart';

import 'miranda_controller.dart';

class MirandaBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => MirandaController());
  }
}