import 'package:get/get.dart';

import 'broadcasts_controller.dart';

class BroadcastsBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => BroadcastsController());
  }

}