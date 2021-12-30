import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/screens/federal_codes/federal_code_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FederalCode extends StatelessWidget {
   FederalCode({Key? key}) : super(key: key);
  FederalCodeController federalCodeController = Get.put(FederalCodeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(backgroundColor: containerColor,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(gradient: linearColor),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
        title: Text("Federal Codes"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child:GridView.builder(
            itemCount: 8,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0,right: 10.0),
                    child: InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                            BorderRadius.circular(10)),
                        child: Center(
                          child: Text(federalCodeController.federalCoder[index],style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      right: 10.0,
                      child:  Image.asset("assets/85.png",height: 30,)

                  ),
                ],
              );
            },
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
              // maxCrossAxisExtent: 150,
              mainAxisExtent: 60,
              childAspectRatio: 2,
              //crossAxisSpacing: 3,
              mainAxisSpacing: 20, crossAxisCount: 2,
            )) ,
      ),
    ));
  }
}
