import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../screens/home_layout_screens/home_screen.dart';
import 'home_layout_state.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutState> {
  HomeLayoutCubit() : super(HomeLayoutInitial());

  static HomeLayoutCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  int selectIndex = -1;

  bool isShimmer = false;

  bool isTopAnimated = false;

  List homeScreensList = [
    const HomeScreen(),
    const Center(child: Text('department')),
    const Center(child: Text('courses')),
    const Center(child: Text('profile')),
  ];

  void changScreenIndex(int index) {
    currentIndex = index;
    emit(ChangeScreenIndexState());
  }

  void changeItemIndex(int index) {
    selectIndex = index;
    emit(ChangeIndexState());
  }

  Future changeLoadingShimmer() async{
    isShimmer = true;
    emit(ChangeShimmerToFalseState());

    Future.delayed(
      const Duration(seconds: 1),
        (){
        isShimmer = false;
        isTopAnimated = true;
        emit(ChangeShimmerToFalseState());
        }
    ).whenComplete(() {
      Future.delayed(
          const Duration(seconds: 1),
              (){
            isTopAnimated = false;
            emit(ChangeAnimationState());
          }
      );
    });
  }
}
