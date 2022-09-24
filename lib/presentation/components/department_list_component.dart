import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/home_layout_cubit/home_layout_cubit.dart';
import '../controller/home_layout_cubit/home_layout_state.dart';
import '../widgets/build_department_item.dart';

class DepartmentListComponent extends StatelessWidget {
  final List departmentList;
  const DepartmentListComponent({Key? key, required this.departmentList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height / 4.7,
      child: BlocConsumer<HomeLayoutCubit, HomeLayoutState>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = HomeLayoutCubit.get(context);
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: departmentList.length,
              itemBuilder: (context, index) {
                return BuildDepartmentItemWidget(
                  departmentItemModel: departmentList[index],
                  index: index,
                  selectIndex: cubit.selectIndex,
                  onPress: (int index) {
                    cubit.changeItemIndex(index);
                  },
                );
              },
              scrollDirection: Axis.horizontal,
            );
          }),
    );
  }
}
