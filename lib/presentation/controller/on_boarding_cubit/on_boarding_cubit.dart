import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/boarding_model.dart';
import 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());
  static OnBoardingCubit get(context) => BlocProvider.of(context);
  List<BoardingModel> boarding = [
    const BoardingModel(
      img: 'assets/images/image-skip@3x.png',
      title: 'النجاح والتفوق',
      bodyTitle:
      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص',
    ),
    const BoardingModel(
      img: 'assets/images/images@3x.png',
      title: 'التعلم الاكاديمى',
      bodyTitle:
      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص',
    ),
  ];

  bool isLast = false;
  void changePageIndexMethod(int index){
    if (index == boarding.length - 1) {
        isLast = true;
        emit(ChangeBoardingIndex());
    } else {
        isLast = false;
        emit(ChangeBoardingIndex());
    }
  }
}
