import 'package:brainbook/screens/keys_to_castle/keys_to_castle_controller.dart';
import 'package:get/get.dart';

class KeysToCastleBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => KeysToCastleController());
  }

}