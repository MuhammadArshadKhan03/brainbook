import 'package:brainbook/screens/illinois/cook_county/cook_county_controller.dart';
import 'package:get/get.dart';

class CookCountyBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => CookCountyController());
  }

}