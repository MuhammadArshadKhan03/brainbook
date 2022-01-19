import 'package:get/get.dart';

import 'common_vtl_controller.dart';

class CommonVTLBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => CommonVTLController());
  }

}