import 'package:equatable/equatable.dart';

class BoardingModel extends Equatable {
  final String img;
  final String bodyTitle;
  final String title;

  const BoardingModel({
    required this.title,
    required this.img,
    required this.bodyTitle,
  });

  @override
  List<Object> get props => [
        img,
        bodyTitle,
        title,
      ];
}
