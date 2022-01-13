import 'package:brainbook/screens/gladys_r_admonition/gladys_r_admonition_controller.dart';
import 'package:get/get.dart';

class GladysAdmonitionBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => GladysRAdmonitionController());
  }

}