import 'package:get/get.dart';

import 'ny_sherrif_controller.dart';

class NYSherrifBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => NYSherrifController());
  }

}