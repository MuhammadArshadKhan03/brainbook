import 'package:get/get.dart';

import 'rockford_pd_controller.dart';

class RockfordPDBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => RockfordPDController());
  }

}