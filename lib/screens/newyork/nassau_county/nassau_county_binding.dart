import 'package:brainbook/screens/newyork/nassau_county/nassau_county_controller.dart';
import 'package:get/get.dart';

class NassauCountyBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => NassauCountyController());
  }

}
