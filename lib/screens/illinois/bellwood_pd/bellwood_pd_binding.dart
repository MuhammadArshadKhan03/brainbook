import 'package:get/get.dart';

import 'bellwood_pd_controller.dart';

class BellwoodPDBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => BellwoodPDController());
  }

}