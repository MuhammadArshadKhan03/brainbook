import 'package:brainbook/screens/newyork/dsny/dsny_controller.dart';
import 'package:get/get.dart';

class DSNYBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => DSNYController());
  }

}