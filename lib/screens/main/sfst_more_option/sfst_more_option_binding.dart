import 'package:get/get.dart';

import 'sfst_more_option_controller.dart';

class SFTAMoreOptionBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => SFSTMoreOptionController());
  }

}