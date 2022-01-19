import 'package:get/get.dart';

import 'ny_agencies_controller.dart';

class NYAgenciesBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => NYAgenciesController());
  }

}