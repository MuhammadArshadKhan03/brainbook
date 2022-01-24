import 'package:get/get.dart';

import 'chp_180_controller.dart';

class CHPBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => CHPController());
  }

}