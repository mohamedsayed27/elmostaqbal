import 'package:flutter/material.dart';

import '../widgets/build_services_item.dart';

class ServicesComponent extends StatelessWidget {
  final List servicesList;
  const ServicesComponent({Key? key, required this.servicesList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height/3.2,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: size.height>=600? 3:4,
        ),
        itemBuilder: (context, index) {
          return ServicesItemWidget(departmentItemModel: servicesList[index]);
        },
        itemCount: servicesList.length,
      ),
    );
  }
}
