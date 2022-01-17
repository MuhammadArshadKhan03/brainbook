import 'package:brainbook/screens/illinois/alcohol/alcohol_controller.dart';
import 'package:get/get.dart';

class AlcoholBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => AlcoholController());
  }

}