
import 'package:get/get.dart';

import 'rules_regulation_controller.dart';


class RulesRegulationBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => RulesRegulationController());

  }

}