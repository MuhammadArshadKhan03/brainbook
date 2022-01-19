import 'package:get/get.dart';

import 'yonkers_controller.dart';



class YonkersBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() =>  YonkersController());
  }

}