
import 'package:get/get.dart';

import 'brady_bill_controller.dart';


class BradyBillBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => BradyBillController());
  }

}