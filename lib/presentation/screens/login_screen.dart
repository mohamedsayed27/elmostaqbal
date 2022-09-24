import 'package:elmostaqbal_task/presentation/screens/drawer_screen.dart';
import 'package:elmostaqbal_task/presentation/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/default_button.dart';
import '../widgets/text_form_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: size.height / 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 150,
                    width: 150,
                  ),
                  const Text(
                    'تسجيل الدخول',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Din'),
                  ),
                  const Text(
                    'برجاء تسجيل دخولك للأكاديمية',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Din',
                        color: Color(0xff707070),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: size.height / 40,
                  ),
                  DefaultTextFormField(
                    controller: emailController,
                    hintText: 'البريد الاليكتروني',
                    keyboardType: TextInputType.text,
                    isPassword: false,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SvgPicture.asset(
                        'assets/images/mail.svg',
                        color: Colors.black,
                        width: 2,
                        height: 2,
                      ),
                    ),
                    validate: (val) {
                      if (val!.isEmpty) {
                        return 'برجاء ادخل البريد';
                      }
                    },
                  ),
                  SizedBox(
                    height: size.height / 40,
                  ),
                  DefaultTextFormField(
                    controller: emailController,
                    hintText: 'كلمة المرور',
                    keyboardType: TextInputType.text,
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SvgPicture.asset(
                        'assets/images/password.svg',
                        color: Colors.black,
                        width: 2,
                        height: 2,
                      ),
                    ),
                    isPassword: false,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SvgPicture.asset(
                        'assets/images/lock.svg',
                        color: Colors.black,
                        width: 2,
                        height: 2,
                      ),
                    ),
                    validate: (val) {
                      if (val!.isEmpty) {
                        return 'برجاء ادخل البريد';
                      }
                    },
                  ),
                  SizedBox(
                    height: size.height / 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'هل نسيت كلمة المرور ؟',
                        style: TextStyle(
                            color: Color(0xffF8931F), fontFamily: 'Din'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height / 20,
                  ),
                  SpecialButton(
                    bColor: const Color(0xff274FEA),
                    tColor: Colors.white,
                    text: 'تسجيل الدخول',
                    press: () {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                        builder: (context) {
                          return const DrawerScreen();
                        },
                      ), (route) => false);
                    },
                    oLayColor: Colors.white38,
                  ),
                  SizedBox(
                    height: size.height / 40,
                  ),
                  const Text(
                    'تخطي التسجيل',
                    style: TextStyle(
                        color: Color(0xff274FEA),
                        fontFamily: 'Din',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: size.height / 6,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('ليس لديك جساب؟',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Din',
                                fontSize: 15)),
                        InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(
                                builder: (context) {
                                  return RegisterScreen();
                                },
                              ));
                            },
                            child: const Text(' جساب جديد',
                                style: TextStyle(
                                    color: Color(0xff5271EE),
                                    fontFamily: 'Din',
                                    fontSize: 15)))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
