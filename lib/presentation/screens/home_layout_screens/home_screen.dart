import 'package:elmostaqbal_task/presentation/components/department_list_component.dart';
import 'package:elmostaqbal_task/presentation/components/header_component.dart';
import 'package:elmostaqbal_task/presentation/components/online_courses_component.dart';
import 'package:elmostaqbal_task/presentation/components/services_component.dart';
import 'package:elmostaqbal_task/presentation/widgets/custom_label_divider_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/utils/dummy_data.dart';
import '../../controller/home_layout_cubit/home_layout_cubit.dart';
import '../../controller/home_layout_cubit/home_layout_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocConsumer<HomeLayoutCubit, HomeLayoutState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = HomeLayoutCubit.get(context);
        return RefreshIndicator(
          onRefresh: () async {
             await cubit.changeLoadingShimmer();
          },
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.height / 73.6),
              child: Column(
                children: [
                  cubit.isShimmer?
                  const HeaderComponentShimmer()
                  :HeaderComponent(topImage: cubit.isTopAnimated? size.height/-2:size.height/-10 , topColumn: cubit.isTopAnimated? size.height / 2: size.height / 12.266,),
                  const CustomDividerItem(label: 'الاقسام'),
                  DepartmentListComponent(
                    departmentList: DummyData.departmentList,
                    isShimmer: cubit.isShimmer,
                    selectedIndex: cubit.selectIndex,
                    onPress: (int index) {
                      cubit.changeItemIndex(index);
                    },
                  ),
                  const CustomDividerItem(label: 'كورسات الاون لاين'),
                  OnlineCoursesComponent(
                    onlineCoursesList: DummyData.onlineCoursesList,
                    isShimmer: cubit.isShimmer,
                  ),
                  const CustomDividerItem(label: 'الخدمات'),
                  ServicesComponent(servicesList: DummyData.servicesList),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
