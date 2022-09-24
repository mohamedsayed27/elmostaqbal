import 'package:flutter/material.dart';

import '../widgets/build_drawer_widget.dart';
import 'home_layout.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  late double xOffset;
  late double yOffset;
  late double scaleFactor;
  late double padding;
  late bool isDrawerOpen;
  bool isDragging = false;

  @override
  void initState() {
    super.initState();
    closeDrawer();
  }

  void closeDrawer() {
    setState(() {
      xOffset = 0;
      yOffset = 0;
      scaleFactor = 1;
      padding = 0;
      isDrawerOpen = false;
    });
  }

  int selectedIndex = 0;

  void changeIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xff4262E5),
          body: Stack(
            children: [
              buildDrawerWidget(
                  selectedIndex: selectedIndex, onPress: changeIndex),
              buildHomeLayout(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDrawerWidget(
      {required int selectedIndex, required Function(int index) onPress}) {
    return DrawerWidget(selectedIndex: selectedIndex, onPress: onPress);
  }

  Widget buildHomeLayout(context) {
    final Size size = MediaQuery.of(context).size;
    void openDrawer() {
      setState(() {
        xOffset = size.height / -4.088;
        yOffset = size.height / 9.2;
        scaleFactor = 0.8;
        padding = size.height / 29.44;
        isDrawerOpen = true;
      });
    }

    return AnimatedContainer(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(padding)),
      clipBehavior: Clip.antiAlias,
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: const Duration(milliseconds: 100),
      child: GestureDetector(
          onTap: closeDrawer,
          onHorizontalDragUpdate: (details) {
            if (!isDragging) return;
            const delta = 1;
            if (details.delta.dx < delta) {
              openDrawer();
            } else if (details.delta.dx > -delta) {
              closeDrawer();
            }
            isDragging = false;
          },
          onHorizontalDragStart: (details) => isDragging = true,
          child: AbsorbPointer(
              absorbing: isDrawerOpen,
              child: HomeLayout(openDrawer: openDrawer))),
    );
  }
}
