import 'package:flutter/material.dart';

class CustomMoreIcon extends StatelessWidget {
  const CustomMoreIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      margin: EdgeInsets.zero,
      height: 30,
      width: 30,
      decoration:  BoxDecoration(
          shape: BoxShape.circle,
          color: const Color(0xffffffff),
          border: Border.all(color: const Color(0xffF2F3F8),width: 2)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height:5,
            width: 5,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          ),
          Container(
            height:5,
            width: 5,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
