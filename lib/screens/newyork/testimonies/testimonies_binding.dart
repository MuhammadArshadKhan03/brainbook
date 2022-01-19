import 'package:get/get.dart';

import 'testimonies_controller.dart';

class TestimoniesBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => TestimoniesController());
  }

}