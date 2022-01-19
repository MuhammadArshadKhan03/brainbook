import 'package:get/get.dart';

import 'dsny_list_detail_controller.dart';

class DSNYListDetailBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => DSNYListDetailController());
  }

}