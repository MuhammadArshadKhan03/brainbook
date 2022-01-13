import 'package:get/get.dart';

import 'marsys_law_controller.dart';

class MarsysLawBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => MarsyLawController());
  }

}