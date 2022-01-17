import 'package:brainbook/screens/main/common_phrases/common_phrase_controller.dart';
import 'package:get/get.dart';

class CommonPhrasesBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => CommonPhraseController());
  }

}