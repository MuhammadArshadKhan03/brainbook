import 'package:get/get.dart';

import 'standardized_fsts_controller.dart';

class StandardizedFstsBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => StandardizedFSTController());
  }

}