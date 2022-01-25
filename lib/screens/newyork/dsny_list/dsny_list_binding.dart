import 'package:get/get.dart';

import 'dsny_list_controller.dart';

class DSNYListBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => DSNYListController());
  }

}