import 'package:brainbook/screens/illinois/naperville/naperville_controller.dart';
import 'package:get/get.dart';

class NapervilleBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => NapervilleController());
  }

}