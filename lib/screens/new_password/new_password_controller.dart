import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NewPasswordContoller extends GetxController{

  final   _obscureNew = true.obs;
  get obscureNew => _obscureNew.value;
  set obscureNew(value) => _obscureNew.value=value;

  final   _obscureConfrim = true.obs;
  get obscureConfrim => _obscureConfrim.value;
  set obscureConfrim(value) => _obscureConfrim.value=value;

  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confrimPasswordController = TextEditingController();
}