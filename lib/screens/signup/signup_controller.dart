import 'package:brainbook/data/model/user_model.dart';
import 'package:brainbook/data/provider/user_provider.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  // instances
  late UserProvider userProvider;

  SignUpController({required this.userProvider});

  final _obscure = true.obs;

  get obscure => _obscure.value;

  set obscure(value) => _obscure.value = value;

  final _dropdownvalue = "".obs;

  String get dropdownvalue => _dropdownvalue.value;

  set dropdownvalue(String value) => _dropdownvalue.value = value;

  // val = 0.obs;
  List<String> cities = [
    "Home",
    "Illinois",
    "New York",
    "LASD",
  ];

  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  GlobalKey<FormState> dropdownglobalKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController stateController = TextEditingController();

//  methods.

  onCreateTap() async {
    // val.value = "";

    // final response = await userProvider.registerUser(
    //   email: "alimurtazamemon@gmail.com",
    //   password: "12345678",
    //   state: "Sindh",
    // );
    //
    // if(response is String) {
    //   print("String: $response");
    // } else {
    //   UserModel userModel = response;
    //   print(userModel.data.email);
    // }

     if (globalKey.currentState!.validate()) {
       if(dropdownvalue == "")  {
         print("error");
         return Get.snackbar("State Error", "Please Select the State");
       }
       try{
         final response = await userProvider.registerUser(
           email: emailController.text,
           password: passwordController.text,
           state: _dropdownvalue.value,
         );
print(response[1]);
         if (response is String) {
           print("$response 111111111111");
           Get.snackbar("Response", response);
         } else {
           print("$response 2222222222");
           UserModel userModel = response;

           Get.snackbar("Response", userModel.msg);
         }
       }
           catch(e){
         Get.snackbar("Error", e.toString());

           }
       // emailController.clear();
       // passwordController.clear();
     // dropdownglobalKey.currentState!.reset();
     // Get.toNamed(Routes.loginScreen);
     }
    //

    //
    // // print(dropdownvalue);

  }
}
