import 'package:brainbook/screens/dash_board/dash_board_controller.dart';
import 'package:get/get.dart';

class DashBoardBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => DashBoardController());
  }

}