import 'package:get/get.dart';

import 'taxi_and_limo_controller.dart';


class TaxiLimoBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() =>  TaxiLimoController());
  }

}