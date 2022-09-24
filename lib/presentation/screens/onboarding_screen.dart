import 'package:elmostaqbal_task/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/utils/shared_prefrences.dart';
import '../controller/on_boarding_cubit/on_boarding_cubit.dart';
import '../controller/on_boarding_cubit/on_boarding_state.dart';
import '../widgets/build_border_item_component.dart';

class OnBoardingScreen extends StatelessWidget{
  const OnBoardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var pageViewController = PageController(
      viewportFraction: 1,
    );
    return BlocProvider(
      create: (context) => OnBoardingCubit(),
      child: SafeArea(
        right: false,
          left: false,
          child: Scaffold(
            body: BlocConsumer<OnBoardingCubit, OnBoardingState>(
              listener: (context, state) {
              },
              builder: (context, state) {
                var cubit = OnBoardingCubit.get(context);
                return Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: PageView.builder(
                          onPageChanged: (index) {
                            cubit.changePageIndexMethod(index);
                          },
                          controller: pageViewController,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) =>
                              BorderItemComponent(model: cubit.boarding[index],),
                          itemCount: cubit.boarding.length,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10,bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SmoothPageIndicator(
                            controller: pageViewController,
                            count: cubit.boarding.length,
                            effect: const ExpandingDotsEffect(
                                dotColor: Colors.grey,
                                dotHeight: 8,
                                dotWidth: 15,
                                expansionFactor: 2,
                                spacing: 5.0,
                                activeDotColor: Color(0xff004FA2)),
                          ),
                          FloatingActionButton(
                            backgroundColor: const Color(0xff004FA2),
                            onPressed: () async{
                              if(cubit.isLast == true){
                                await CacheHelper.saveData(key: 'onBoarding', value: true).then((value) {
                                  if (value) {
                                    Navigator.pushAndRemoveUntil(context,
                                        MaterialPageRoute(builder: (context) => LoginScreen()),
                                            (route) {
                                          return false;
                                        });
                                  }
                                });
                              }else{
                                pageViewController.nextPage(
                                    duration: const Duration(milliseconds: 800),
                                    curve: Curves.fastOutSlowIn
                                );
                              }

                            },
                            child: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          )),
    );
  }

}
