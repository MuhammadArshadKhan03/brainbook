import 'package:flutter/material.dart';

class FederalCard extends StatelessWidget {
  const FederalCard({
    Key? key,
    required this.text,
     this.isLock =false,
  }) : super(key: key);

  final String text;
  final bool isLock;

  @override
  Widget build(BuildContext context) {
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
                child: Text(text,style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        Positioned(
            right: 10.0,
            child:   isLock
                ? Image.asset(
              "assets/85.png",
              height: 30,
            )
                : Container(),

        ),
      ],
    );
  }
}