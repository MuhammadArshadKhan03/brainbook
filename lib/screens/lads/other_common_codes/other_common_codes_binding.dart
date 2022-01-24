import 'package:get/get.dart';

import 'other_common_codes_controller.dart';

class OtherCommonCodesBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => OtherCommonCodesController());
  }

}