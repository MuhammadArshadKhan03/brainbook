import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class VehicleStopForm extends GetxController{
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  TextEditingController officerName = TextEditingController();
  TextEditingController locationStop = TextEditingController();
  TextEditingController plateInfo = TextEditingController();
  TextEditingController dateTime = TextEditingController();

}