import 'package:brainbook/screens/front_plates/front_plates_controller.dart';
import 'package:get/get.dart';

class FrontPlatesBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => FrontPlatesController());
  }

}