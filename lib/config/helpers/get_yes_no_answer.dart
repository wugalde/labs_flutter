import 'package:dio/dio.dart';
import 'package:labs_flutter/domain/entities/message.dart';
import 'package:labs_flutter/infrastructure/models/yes_no_model.dart';

class GetYesNoAnswer {
  final dio = Dio();

  Future<Message> getAnswer() async {
    final response = await dio.get('https://yesno.wtf/api');
    final YesNoModel model = YesNoModel.froJsonMap(response.data);
    return model.toMessage();
  }
}
