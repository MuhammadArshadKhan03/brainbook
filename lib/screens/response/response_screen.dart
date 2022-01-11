// ignore_for_file: prefer_const_constructors

import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/screens/add_response/add_response_screen.dart';
import 'package:brainbook/screens/ask_a_cop/ask_a_cop_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class ResponseScreen extends StatelessWidget {
  const ResponseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: "Response",
        ),
        backgroundColor: Colors.blue.shade200,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  AskACopCard(
                    text:
                        "I am trying to look for a tactical bad that I can put in my car. So that I can use it to store my tactical belt in the bag and probably put my change of clothes in there as well",
                    onTap: null,
                    row: Container(),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text("3 response"),
                  ),
                  ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                      itemCount: 8,
                      itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AskACopCard(
                        text:
                            "Those bags aren’t a bad idea, but a normal duffel bag is good enough. Some agencies will equip you with one also.",
                        row: RattingBar(),
                      ),
                    );
                  })
                ],
              ),
            ),
            Positioned(
              bottom: 20.0,
              right: 12.0,
              child: InkWell(
                 onTap: ()=>Get.to(AddResponseScreen()),
                child: Image.asset(
                  'assets/startpage/48.png',
                  height: 70.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


class RattingBar extends StatelessWidget {
  const RattingBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 3,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 18.0,
      // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}
