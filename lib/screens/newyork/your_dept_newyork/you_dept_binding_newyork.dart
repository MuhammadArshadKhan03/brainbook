import 'package:brainbook/screens/illinois/your_department/your_department_controller.dart';
import 'package:brainbook/screens/newyork/your_dept_newyork/you_dept_controller_newyork.dart';
import 'package:get/get.dart';

class YourDeptNewYorkBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => YourDeptNewYorkController());
  }

}