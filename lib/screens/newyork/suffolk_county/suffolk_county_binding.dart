import 'package:brainbook/screens/newyork/doc/doc_controller.dart';
import 'package:get/get.dart';

import 'suffolk_county_controller.dart';

class SuffolkCountyBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() =>  SuffolkCountyController());
  }

}