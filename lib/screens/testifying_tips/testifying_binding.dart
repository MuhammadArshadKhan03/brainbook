import 'package:brainbook/screens/testifying_tips/testifying_tips_controller.dart';
import 'package:get/get.dart';

class TestifyingBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => TestifyingTipsController());

  }
}

