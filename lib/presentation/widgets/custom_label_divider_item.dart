import 'package:flutter/material.dart';

import 'custom_more_icon.dart';

class CustomDividerItem extends StatelessWidget {
  final String label;
  const CustomDividerItem({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(label,style: const TextStyle(color: Colors.black,fontFamily: 'Din',fontSize: 20,fontWeight: FontWeight.bold),),
          const Spacer(),
          const CustomMoreIcon()
        ],
      ),
    );
  }
}
