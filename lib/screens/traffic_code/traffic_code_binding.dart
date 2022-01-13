import 'package:brainbook/screens/traffic_code/traffic_controller.dart';
import 'package:get/get.dart';

class TrafficCodeBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
  Get.lazyPut(() => TrafficCodeController());
  }

}