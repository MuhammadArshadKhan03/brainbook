import 'package:get/get.dart';

import 'sample_reports_controller.dart';


class SampleReportsBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => SampleReportsController());
  }

}