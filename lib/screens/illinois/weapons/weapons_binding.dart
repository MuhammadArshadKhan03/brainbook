import 'package:brainbook/screens/illinois/weapons/weapons_controller.dart';
import 'package:get/get.dart';

class WeaponsBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => WeaponsController());
  }

}