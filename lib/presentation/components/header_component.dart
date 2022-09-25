import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HeaderComponent extends StatelessWidget {
  final double topColumn;
  final double topImage;
  const HeaderComponent({Key? key, required this.topColumn, required this.topImage, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
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
          AnimatedPositioned(
              left: size.height/-9.8133,
              top: topImage/*size.height/-10*/,
              duration: const Duration(seconds: 1),
              child: Image.asset(
                'assets/images/picture.png',
                height: size.height / 2.2,
                width: size.height / 2.374,
              )),
          AnimatedPositioned(
            duration: const Duration(seconds: 1),
            top: topColumn/*size.height / 12.266*/,
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
    );
  }
}

class HeaderComponentShimmer extends StatelessWidget {
  const HeaderComponentShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Shimmer.fromColors(baseColor: Colors.grey[300]!, highlightColor: Colors.grey[100]!, child: Container(
      height: size.height / 5,
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,
      ),
    ));
  }
}
