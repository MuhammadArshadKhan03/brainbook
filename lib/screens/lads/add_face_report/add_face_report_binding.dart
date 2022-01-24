import 'package:get/get.dart';

import 'add_face_report_controller.dart';

class AddFaceReportBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => AddFaceReportController());
  }

}