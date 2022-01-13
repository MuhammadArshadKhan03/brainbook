import 'package:brainbook/screens/add_response/add_response_controller.dart';
import 'package:get/get.dart';

class AddResponseBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => AddResponseController());
  }


}