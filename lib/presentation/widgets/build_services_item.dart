import 'package:elmostaqbal_task/data/models/shared_model.dart';
import 'package:flutter/material.dart';

class ServicesItemWidget extends StatelessWidget {
  final SharedModel departmentItemModel;
  const ServicesItemWidget({Key? key, required this.departmentItemModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(flex:2,child: Image.asset(departmentItemModel.image,)),
          Expanded(flex:1,child: Text(departmentItemModel.label,style: TextStyle(fontFamily: 'Din',fontSize: size.height/49.066,fontWeight: FontWeight.bold),)),
        ],
      ),
    );
  }
}
