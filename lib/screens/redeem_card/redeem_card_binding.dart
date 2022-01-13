import 'package:brainbook/screens/redeem_card/redeem_card_controller.dart';
import 'package:get/get.dart';

class RedeemCardBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => RedeemCardController());
  }

}