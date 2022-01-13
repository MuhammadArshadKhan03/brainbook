import 'package:brainbook/screens/federal_codes/federal_code_controller.dart';
import 'package:get/get.dart';

class FederalCodeBiding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => FederalCodeController());
  }

}