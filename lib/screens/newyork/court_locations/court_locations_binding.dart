import 'package:get/get.dart';

import 'court_locations_controller.dart';

class CourtLocationBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => CourtLocationController());
  }

}