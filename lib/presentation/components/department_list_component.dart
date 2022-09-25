import 'package:flutter/material.dart';
import '../widgets/build_department_item.dart';

class DepartmentListComponent extends StatelessWidget {
  final List departmentList;
  final bool isShimmer;
  final int selectedIndex;
  final Function(int index) onPress;

  const DepartmentListComponent(
      {Key? key,
      required this.departmentList,
      required this.isShimmer,
      required this.selectedIndex,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height / 4.7,
      child: isShimmer
          ? ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemCount: departmentList.length,
              itemBuilder: (context, index) {
                return const BuildDepartmentItemShimmer();
              },
              scrollDirection: Axis.horizontal, separatorBuilder: (BuildContext context, int index) { return SizedBox(width: 10,); },
            )
          : ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: departmentList.length,
              itemBuilder: (context, index) {
                return BuildDepartmentItemWidget(
                  departmentItemModel: departmentList[index],
                  index: index,
                  selectIndex: selectedIndex,
                  onPress: (int index) {
                    onPress(index);
                  },
                );
              },
              scrollDirection: Axis.horizontal,
            ),
    );
  }
}
