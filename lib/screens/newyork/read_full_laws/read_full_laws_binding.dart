
import 'package:get/get.dart';

import 'read_full_laws_controller.dart';

class ReadFullLawsBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ReadFullLawsController());
  }

}