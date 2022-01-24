import 'package:get/get.dart';

import 'chp_offices_detail_controller.dart';



class CHPOfficesDetailBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => CHPOfficesDetailController());
  }

}