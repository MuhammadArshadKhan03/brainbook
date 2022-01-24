import 'package:get/get.dart';

import 'narrative_controller.dart';

class NarrativeBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => NarrativeController());
  }

}