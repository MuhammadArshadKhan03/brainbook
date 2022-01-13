import 'package:brainbook/screens/case_law/case_law_controller.dart';
import 'package:get/get.dart';

class CaseLawBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => CaseLawController());
  }
}