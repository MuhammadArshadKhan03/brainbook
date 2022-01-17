import 'package:brainbook/screens/illinois/springfield/springfield_controller.dart';
import 'package:get/get.dart';

class SpringfieldBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => SpringfieldController());
  }

}