import 'package:brainbook/screens/main/gladys_marsy/gladys_marsy_controller.dart';
import 'package:get/get.dart';

class GladysMarsyBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => GladysMarsyController());
  }

}