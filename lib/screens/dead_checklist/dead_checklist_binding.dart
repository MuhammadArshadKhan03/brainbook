import 'package:brainbook/screens/dead_checklist/dead_checklist_controller.dart';
import 'package:get/get.dart';

class DeadChecklistBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => DeadCheckListController());
  }
}