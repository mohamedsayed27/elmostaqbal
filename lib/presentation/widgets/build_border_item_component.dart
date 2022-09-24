import 'package:flutter/material.dart';

import '../../data/models/boarding_model.dart';

class BorderItemComponent extends StatelessWidget {
  const BorderItemComponent({Key? key, required this.model}) : super(key: key);
  final BoardingModel model;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(25)),
              height: size.height/1.7,
              width: double.infinity,
              child: Image.asset(
                model.img,
                fit: BoxFit.fitHeight,
              )),
           SizedBox(
            height: size.height/49.06,
          ),
          Text(model.title,
              style: TextStyle(
                  fontSize: size.height/33.454,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Din')),
           SizedBox(
            height: size.height/49.06,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              model.bodyTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Din',
                  color: Colors.grey,
                  fontSize: size.height/46,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0,
                  height: 0),
            ),
          ),
        ],
      ),
    );
  }
}
