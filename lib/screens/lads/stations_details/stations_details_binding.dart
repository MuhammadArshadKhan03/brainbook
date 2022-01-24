import 'package:get/get.dart';

import 'stations_details_controller.dart';

class StationsDetailBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => StationsDetailController());
  }

}