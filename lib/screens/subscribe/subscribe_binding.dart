import 'package:brainbook/screens/subscribe/subscribe_controller.dart';
import 'package:get/get.dart';

class SubscribeBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => SubscribeController());
  }

}