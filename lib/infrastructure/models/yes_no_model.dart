// quicktype.io

import 'package:labs_flutter/domain/entities/message.dart';

class YesNoModel {
  String answer;
  bool forced;
  String image;

  YesNoModel({required this.answer, required this.forced, required this.image});

  factory YesNoModel.froJsonMap(Map<String, dynamic> json) => YesNoModel(
        answer: json['answer'],
        forced: json['forced'],
        image: json['image'],
      );

  Message toMessage() => Message(
      text: answer == 'yes' ? 'Si' : 'No', img: image, fromWho: FromWho.hers);
}
