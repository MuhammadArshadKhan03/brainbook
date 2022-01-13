import 'package:get/get.dart';

import 'recruits_studying_controller.dart';

class RecruitsStudyingBunding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => RecruitsStudyingController());
  }

}