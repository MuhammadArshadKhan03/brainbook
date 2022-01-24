
import 'package:brainbook/screens/lads/phonetics/phonetics_controller.dart';
import 'package:get/get.dart';

import 'crowd_disbursement_controller.dart';


class CrowDisbursementBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => CrowDisbursementController());
  }

}