import 'package:get/get.dart';
import 'chp_offices_controller.dart';

class CHPOfficersBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => CHPOfficersController());
  }

}