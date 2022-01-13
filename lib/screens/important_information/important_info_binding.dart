import 'package:brainbook/screens/important_information/important_information_controller.dart';
import 'package:get/get.dart';

class ImportantInfoBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ImportantInfoController());
  }

}