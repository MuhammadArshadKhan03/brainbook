import 'package:brainbook/screens/gang_slang/gang_slang_controller.dart';
import 'package:get/get.dart';

class GangSlangDetailBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => GangSlangController());
  }

}