import 'package:get/get.dart';

import 'lake_county_controller.dart';

class LakeCountryBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => LakeCountryController());
  }

}