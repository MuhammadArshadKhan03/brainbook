import 'package:get/get.dart';
import 'custody_controller.dart';

class CustodyBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => CustodyController());
  }

}