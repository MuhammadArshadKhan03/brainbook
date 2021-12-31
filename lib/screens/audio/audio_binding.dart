import 'package:brainbook/screens/audio/audio_controller.dart';
import 'package:get/get.dart';

class AudioBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AudioController());
  }

}