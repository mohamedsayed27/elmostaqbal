import 'package:flutter/material.dart';

import '../../data/models/shared_model.dart';

class OnlineCoursesWidget extends StatelessWidget {
  final SharedModel departmentItemModel;

  const OnlineCoursesWidget({Key? key, required this.departmentItemModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height/3.68,
      width: size.height/2.944,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
      ),
        child: Column(
          children: [
            Expanded(flex:3,child: Padding(
              padding: EdgeInsets.only(top: size.height/61.33),
              child: Image.asset(departmentItemModel.image,),
            )),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.height/73.4),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          departmentItemModel.label,
                          style: TextStyle(
                              fontFamily: 'Din',
                              fontSize: size.height/49.06,
                              color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                        Icon(Icons.bookmark_outlined,color: const Color(0xff2144D4),size:size.height/33)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/vuesax-linear-clock.png',height: size.height/46,width: size.height/46,),
                             Text('  16 ساعه',style: TextStyle(fontSize: size.height/56.615),)
                          ],
                        ),
                        Row(
                          children:  [
                            Icon(Icons.pages_outlined,size: size.height/40.888,),
                            Text(' 14 حصه',style: TextStyle(fontSize: size.height/56.615))
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
