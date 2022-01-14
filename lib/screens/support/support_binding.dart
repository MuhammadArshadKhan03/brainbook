import 'package:brainbook/screens/support/support_controller.dart';
import 'package:get/get.dart';

class SupportBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => SupportController());
  }

}