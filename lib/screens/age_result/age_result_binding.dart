import 'package:get/get.dart';

import 'age_result_controller.dart';

class AgeResultBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => AgeResultController());
  }

}