import 'package:get/get.dart';

import 'cicero_pd_controller.dart';

class CiceroPDBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => CiceroPDController());
  }

}