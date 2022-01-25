import 'package:get/get.dart';

import 'misd_exceptions_controller.dart';


class MISDExceptionsBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => MISDExceptionsController());
  }

}