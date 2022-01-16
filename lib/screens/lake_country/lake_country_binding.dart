import 'package:brainbook/screens/lake_country/lake_country_controller.dart';
import 'package:get/get.dart';

class LakeCountryBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => LakeCountryController());
  }

}