import 'package:flutter/material.dart';

import '../widgets/build_online_courses_item.dart';

class OnlineCoursesComponent extends StatelessWidget {
  final List onlineCoursesList;
  const OnlineCoursesComponent({Key? key, required this.onlineCoursesList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height / 3.5,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: onlineCoursesList.length,
        itemBuilder: (context, index) {
          return OnlineCoursesWidget(
              departmentItemModel: onlineCoursesList[index]);
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
