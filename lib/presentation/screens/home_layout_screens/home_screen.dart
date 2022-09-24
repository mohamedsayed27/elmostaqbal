import 'package:elmostaqbal_task/presentation/components/department_list_component.dart';
import 'package:elmostaqbal_task/presentation/components/online_courses_component.dart';
import 'package:elmostaqbal_task/presentation/components/services_component.dart';
import 'package:elmostaqbal_task/presentation/widgets/custom_label_divider_item.dart';
import 'package:flutter/material.dart';
import '../../../data/models/shared_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<SharedModel> departmentList = [
    const SharedModel(
      image: 'assets/images/Engineer@2x.png',
      label: 'المساحة والهندسة',
    ),
    const SharedModel(
        image: 'assets/images/Mask Group 2.png', label: 'تكنولوجيا المعلومات'),
    const SharedModel(
        image: 'assets/images/raxs@2x.png', label: 'التحاليل الطبية'),
  ];

  final List<SharedModel> onlineCoursesList = [
    const SharedModel(
      image: 'assets/images/1@2x.png',
      label: 'تعلم تجربة المستخدم',
    ),
    const SharedModel(
      image: 'assets/images/2@2x.png',
      label: 'تعلم اداره الاعمال',
    ),
  ];

  final List<SharedModel> servicesList = [
    const SharedModel(
      image: 'assets/images/الاخبار والاحداث.png',
      label: 'الاخبار والاحداث',
    ),
    const SharedModel(
      image: 'assets/images/طلب الالتحاق.png',
      label: 'طلب الالتحاق',
    ),
    const SharedModel(
      image: 'assets/images/جدول الدراسى.png',
      label: 'جدول الدراسي',
    ),
    const SharedModel(
      image: 'assets/images/كورسات.png',
      label: 'الكورسات',
    ),
    const SharedModel(
      image: 'assets/images/شركاء النجاح.png',
      label: 'شركة النجاح',
    ),
    const SharedModel(
      image: 'assets/images/اتصل بنا.png',
      label: 'اتصل بنا',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.height / 73.6),
        child: Column(
          children: [
            SizedBox(
              height: size.height / 3.8,
              child: Stack(
                clipBehavior: Clip.antiAlias,
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: size.height / 4.4,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xff2144D4),
                          Color(0xff5271EE),
                        ],
                        begin: Alignment(0, -1),
                        end: Alignment(0, 0),
                      ),
                    ),
                  ),
                  Positioned(
                      left: size.height/-9.8133,
                      top: size.height/-10,
                      child: Image.asset(
                        'assets/images/picture.png',
                        height: size.height / 2.2,
                        width: size.height / 2.374,
                      )),
                  Positioned(
                    top: size.height / 12.266,
                    right: size.height / 147.2,
                    child: Container(
                      padding: const EdgeInsets.only(right: 5),
                      width: 180,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                               Text(
                                'افضل مكان اكاديمى ',
                                style: TextStyle(
                                    fontFamily: 'Din',
                                    color: const Color(0xffFFFFFF),
                                    fontSize: size.height/49.066,
                                    fontWeight: FontWeight.bold),
                              ),
                              Image.asset(
                                'assets/images/fire.png',
                                height: size.height / 36.8,
                                width: size.height / 36.8,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height / 73.6,
                          ),
                           Text(
                            'مكان لتعليم الطلاب المواد التعلمية مع افضل كودار',
                            style: TextStyle(
                                fontFamily: 'Din',
                                color: const Color(0xffE1E1E1),
                                fontSize: size.height/56.615),
                          ),
                          SizedBox(
                            height: size.height / 73.6,
                          ),
                          Container(
                            width: size.height/21.028,
                            height: size.height/21.028,
                            decoration: const BoxDecoration(
                                color: Color(0xffF8931F),
                                shape: BoxShape.circle),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  color: const Color(0xffFFFFFF),
                                  size: size.height/46,
                                )),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const CustomDividerItem(label: 'الاقسام'),
            DepartmentListComponent(departmentList: departmentList),
            const CustomDividerItem(label: 'كورسات الاون لاين'),
            OnlineCoursesComponent(onlineCoursesList: onlineCoursesList),
            const CustomDividerItem(label: 'الخدمات'),
            ServicesComponent(servicesList: servicesList),
          ],
        ),
      ),
    );
  }
}
