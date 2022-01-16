import 'package:brainbook/screens/cicero_pd/cicero_pd_controller.dart';
import 'package:get/get.dart';

class CiceroPDBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => CiceroPDController());
  }

}