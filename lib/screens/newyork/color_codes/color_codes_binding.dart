import 'package:get/get.dart';

import 'color_codes_controller.dart';

class ColorCodesBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ColorCodesController());
  }
}