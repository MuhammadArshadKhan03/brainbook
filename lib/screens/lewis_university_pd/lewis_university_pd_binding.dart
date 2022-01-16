import 'package:brainbook/screens/lewis_university_pd/lewis_university_pd_controller.dart';
import 'package:get/get.dart';

class LewisUniversityPDBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => LewisUniversityPDController());
  }

}