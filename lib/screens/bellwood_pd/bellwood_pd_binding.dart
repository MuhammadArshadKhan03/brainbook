import 'package:brainbook/screens/bellwood_pd/bellwood_pd_controller.dart';
import 'package:get/get.dart';

class BellwoodPDBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => BellwoodPDController());
  }

}