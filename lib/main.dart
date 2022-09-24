import 'package:elmostaqbal_task/core/utils/shared_prefrences.dart';
import 'package:elmostaqbal_task/presentation/controller/home_layout_cubit/home_layout_cubit.dart';
import 'package:elmostaqbal_task/presentation/screens/login_screen.dart';
import 'package:elmostaqbal_task/presentation/screens/onboarding_screen.dart';
import 'package:elmostaqbal_task/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  Widget? widget;
  bool? onBoarding = CacheHelper.getData(key: 'onBoarding');
  if (onBoarding != null) {
    widget = LoginScreen();
  } else {
    widget = const OnBoardingScreen();
  }
  runApp(MyApp(startWidget: widget, onBoarding: onBoarding));
}

class MyApp extends StatelessWidget {
  final Widget startWidget;
  final bool? onBoarding;

  const MyApp({super.key, required this.startWidget, this.onBoarding});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeLayoutCubit())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(startWidget: startWidget),
      ),
    );
  }
}
