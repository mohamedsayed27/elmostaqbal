import 'package:elmostaqbal_task/data/models/shared_model.dart';
import 'package:flutter/material.dart';

class BuildDepartmentItemWidget extends StatelessWidget{
  final SharedModel departmentItemModel;
  final int index;
  final int selectIndex;
  final Function(int index) onPress;
  const BuildDepartmentItemWidget({super.key, required this.departmentItemModel, required this.index, required this.selectIndex, required this.onPress});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: (){
        onPress(index);
      },
      child: Card(
        color: selectIndex == index
            ? const Color(0xffF8931F)
            : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: selectIndex == index ? 5 : 2,
        clipBehavior: Clip.antiAlias,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: size.height/92, horizontal: size.height/49.066),
          height: selectIndex ==index ? size.height/6.133 : size.height/9.2,
          width: selectIndex == index ? size.height/5.661 : size.height/6.133,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                departmentItemModel.image,
                height: size.height/14.72,
                width: size.height/14.72,
              ),
              Text(
                departmentItemModel.label,
                style: TextStyle(
                    fontFamily: 'Din',
                    fontSize: size.height/49.066,
                    color: selectIndex == index
                        ? Colors.white
                        : Colors.black),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
