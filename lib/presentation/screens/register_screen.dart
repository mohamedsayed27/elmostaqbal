import 'package:elmostaqbal_task/presentation/screens/drawer_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/default_button.dart';
import '../widgets/text_form_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController currentYearController = TextEditingController();
  final TextEditingController departmentController = TextEditingController();
  final TextEditingController nameController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.only(left: 20,right: 20,top: size.height/25),
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
                  SizedBox(height: size.height/40,),
                  DefaultTextFormField(
                    controller: nameController,
                    hintText: 'الاسم بالكامل',
                    keyboardType: TextInputType.text,
                    isPassword: false,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SvgPicture.asset(
                        'assets/images/person.svg',
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
                  SizedBox(height: size.height/40,),
                  DefaultTextFormField(
                    controller: departmentController,
                    hintText: 'القسم الدراسي',
                    keyboardType: TextInputType.text,
                    isPassword: false,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SvgPicture.asset(
                        'assets/images/certificate.svg',
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
                  SizedBox(height: size.height/40,),
                  DefaultTextFormField(
                    controller: currentYearController,
                    hintText: 'السنة الدراسية',
                    keyboardType: TextInputType.text,
                    isPassword: false,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SvgPicture.asset(
                        'assets/images/certificate.svg',
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
                  SizedBox(height: size.height/40,),
                  DefaultTextFormField(
                    controller: emailController,
                    hintText: 'البريد الالكتروني',
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
                  SizedBox(height: size.height/40,),
                  DefaultTextFormField(
                    controller: passwordController,
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
                  SizedBox(height: size.height/50,),
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
                  SizedBox(height: size.height/60,),
                  const Text(
                    'تخطي التسجيل',
                    style: TextStyle(
                        color: Color(0xff274FEA),
                        fontFamily: 'Din',
                        fontWeight: FontWeight.bold),
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
