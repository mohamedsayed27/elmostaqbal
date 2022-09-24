import 'package:elmostaqbal_task/presentation/controller/home_layout_cubit/home_layout_cubit.dart';
import 'package:elmostaqbal_task/presentation/controller/home_layout_cubit/home_layout_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class HomeLayout extends StatelessWidget {
  final VoidCallback openDrawer;
  const HomeLayout({Key? key, required this.openDrawer}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Directionality(
        textDirection: TextDirection.rtl,
        child: BlocBuilder<HomeLayoutCubit, HomeLayoutState>(
          builder: (context, state) {
            final Size size = MediaQuery.of(context).size;
            var cubit = HomeLayoutCubit.get(context);
            return Scaffold(
              backgroundColor: Colors.white,
              appBar: PreferredSize(
                  preferredSize: Size(size.width, size.height/9.8),
                  child: Padding(
                    padding:
                         EdgeInsets.only(top: size.height/36.8, left: size.height/73.6, right: size.height/73.6),
                    child: AppBar(
                      elevation: 0,
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      centerTitle: true,
                      leading: Container(
                        padding: EdgeInsets.all(size.height/105.14),
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: InkWell(
                          onTap: (){
                            openDrawer();
                          },
                          child: Image.asset(
                            'assets/images/Profile.png',
                            width: size.height/7.36,
                            height: size.height/7.36,
                          ),
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          children: [
                             Text(
                              'اهلا بيك يا , عمر ',
                              style: TextStyle(
                                  fontFamily: 'Din',
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.height/40.88),
                            ),
                            Image.asset(
                              'assets/images/hand.png',
                              width: size.height/29.44,
                              height: size.height/29.44,
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        Container(
                          padding: EdgeInsets.zero,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border:
                                  Border.all(color: const Color(0xffF2F3F8))),
                          child: Padding(
                            padding: EdgeInsets.all(size.height/61.33),
                            child: Image.asset(
                              'assets/images/vuesax-bold-menu@2x.png',
                              width: size.height/40.88,
                              height: size.height/40.88,
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
              body: cubit.homeScreensList[cubit.currentIndex],
              bottomNavigationBar: BottomNavigationBar(
                items: [
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/images/home-2.svg',
                      color: cubit.currentIndex == 0
                          ? const Color(0xff5271EE)
                          : const Color(0xffBABABA),
                    ),
                    label: 'الرئيسية',
                  ),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                      'assets/images/category.svg',
                      color: cubit.currentIndex == 1
                          ? const Color(0xff5271EE)
                          : const Color(0xffBABABA),
                    ),
                    label: 'التخصص',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/images/book-saved.svg',
                      color: cubit.currentIndex == 2
                          ? const Color(0xff5271EE)
                          : const Color(0xffBABABA),
                    ),
                    label: 'كورسات',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/images/user.svg',
                      color: cubit.currentIndex == 3
                          ? const Color(0xff5271EE)
                          : const Color(0xffBABABA),
                    ),
                    label: 'البروفايل',
                  ),
                ],
                currentIndex: cubit.currentIndex,
                iconSize: size.height/73.6,
                onTap: (index) {
                  cubit.changScreenIndex(index);
                },
                type: BottomNavigationBarType.fixed,
                selectedItemColor: const Color(0xff5271EE),
                unselectedItemColor: const Color(0xffBABABA),
              ),
            );
          },
        ));
  }
}
