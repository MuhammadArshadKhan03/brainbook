import 'package:brainbook/screens/warrants/warrents_controller.dart';
import 'package:get/get.dart';

class WarrantsBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => WarratnsController());
  }

}