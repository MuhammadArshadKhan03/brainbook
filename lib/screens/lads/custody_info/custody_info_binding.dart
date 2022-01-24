import 'package:get/get.dart';

import 'custody_info_controller.dart';

class CustodyInfoBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => CustodyInfoController());
  }

}