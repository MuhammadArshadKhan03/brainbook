
import 'package:brainbook/screens/lads/phonetics/phonetics_controller.dart';
import 'package:get/get.dart';

import 'field_ops_controller.dart';


class FieldOPSBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => FieldOPSController());
  }

}