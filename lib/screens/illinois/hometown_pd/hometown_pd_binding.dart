import 'package:brainbook/screens/illinois/hometown_pd/hometown_pd_controller.dart';
import 'package:get/get.dart';

class HometownPDBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => HometownPDController());
  }

}