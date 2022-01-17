import 'package:brainbook/screens/main/flash_cards_list/flash_cards_list_controller.dart';
import 'package:get/get.dart';

class FlashCardListBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => FlashCardListController());
  }

}