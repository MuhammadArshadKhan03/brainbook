import 'package:get/get.dart';

import 'add_narrative_report_controller.dart';

class AddNarrativeReportBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() =>AddNarrativeReportController());
  }

}