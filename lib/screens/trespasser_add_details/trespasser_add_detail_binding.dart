import 'package:brainbook/screens/trespasser_add_details/trespasser_add_details_controller.dart';
import 'package:get/get.dart';

class TrespasserAddDetailBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => AddTrespasserDetailsController());
  }

}