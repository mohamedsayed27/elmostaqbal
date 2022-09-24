import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  final Widget startWidget;
  const SplashScreen({Key? key, required this.startWidget}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context){return widget.startWidget;}), (route) => false);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              top: size.height / -368,
              right: size.height / -10.222,
              child: Image.asset(
                'assets/images/background@3x.png',
                width: size.height / 1.989,
                height: size.height / 4.08,
              ),
            ),
            Positioned(
              bottom: size.height / -6.456,
              left: size.height / -3.774,
              child: Image.asset(
                'assets/images/Artboard 2.png',
                width: size.height / 1.226,
                height: size.height / 2.453,
              ),
            ),
            Positioned(
              top: size.height / 6.133,
              left: size.height / -4.6,
              child: Image.asset(
                'assets/images/Artboard 33.png',
              ),
            ),
            Positioned(
              top: size.height / 6.133,
              left: size.height / 12.912,
              child: Image.asset(
                'assets/images/logo.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
