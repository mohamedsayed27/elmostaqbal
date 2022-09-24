import 'package:elmostaqbal_task/data/models/shared_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerWidget extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onPress;

  const DrawerWidget(
      {Key? key, required this.selectedIndex, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(size.height/49.066),
          child: Row(
            children: [
              Image.asset(
                'assets/images/Profile.png',
                width: size.height / 14.8,
                height: size.height / 14.8,
              ),
              const Text('  عمر ابراهيم',style: TextStyle(fontFamily: 'Din',color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.indigoAccent,
                    child: Image.asset('assets/images/x-button.png',width: size.height/73.6,height: size.height/73.6,)),
              )
            ],
          ),
        ),
         SizedBox(height: size.height/18.4,),
        buildDrawerItems(selectedIndex: selectedIndex, onPress: onPress,size: size),
        const Spacer(),
        Padding(
          padding:  EdgeInsets.only(right: size.height/92,bottom: size.height/49.066),
          child: Row(
            children: [
              SvgPicture.asset('assets/images/logout.svg'),
               SizedBox(width: size.height/49.066,),
              const Text('تسجيل الخروج',style: TextStyle(color: Colors.white70,fontFamily: 'Din'),)
            ],
          ),
        ),
      ],
    );
  }

  Widget buildDrawerItems(
      {required int selectedIndex, required Function(int index) onPress,required Size size}) {
    return Column(
      children: DrawerItems.drawerItemsList
          .asMap()
          .map(
            (index, item) => MapEntry(
              index,
              InkWell(
                onTap: () {
                  onPress(index);
                },
                child: Padding(
                  padding: EdgeInsets.all(size.height/92),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        item.image,
                        width: size.height/32,
                        height: size.height/32,
                        color: selectedIndex == index
                            ? Colors.white
                            : Colors.white70,
                      ),
                       SizedBox(
                        width: size.height/49.066,
                      ),
                      Text(
                        item.label,
                        style: TextStyle(
                          fontSize: size.height/46,
                          fontFamily: 'Din',
                            color: selectedIndex == index
                                ? Colors.white
                                : Colors.white70),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
          .values
          .toList(),
    );
  }
}

class DrawerItems {
  static const home =
      SharedModel(image: 'assets/images/home-2.svg', label: 'الصفحة الرئيسية');
  static const category =
      SharedModel(image: 'assets/images/category.svg', label: 'التخصصات');
  static const courses = SharedModel(
      image: 'assets/images/book-saved.svg', label: 'كورسات اون لاين');
  static const news =
      SharedModel(image: 'assets/images/news.svg', label: 'الاخبار والاحداث');
  static const schedule =
      SharedModel(image: 'assets/images/tables.svg', label: 'جدول المحاضرات');
  static const applyingForm =
      SharedModel(image: 'assets/images/edit.svg', label: 'طلب الالتحاق');
  static const successPartners =
      SharedModel(image: 'assets/images/partner.svg', label: 'شركاء النجاح');
  static const callUs =
      SharedModel(image: 'assets/images/portrait.svg', label: 'اتصل بنا');
  static const settings =
      SharedModel(image: 'assets/images/hastag.svg', label: 'اعداد الاكاديمية');
  static const aboutFuture = SharedModel(
      image: 'assets/images/info.svg', label: 'عن المستقبل اكاديمى');
  static const profile =
      SharedModel(image: 'assets/images/person.svg', label: 'البروفايل');

  static List<SharedModel> drawerItemsList = [
    home,
    category,
    courses,
    news,
    schedule,
    applyingForm,
    successPartners,
    callUs,
    settings,
    aboutFuture,
    profile,
  ];
}
