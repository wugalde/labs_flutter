import 'package:flutter/material.dart';
import 'package:labs_flutter/config/helpers/get_yes_no_answer.dart';
import 'package:labs_flutter/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final GetYesNoAnswer yesNo = GetYesNoAnswer();

  List<Message> messageList = [
    Message(text: "Hola mobile ... como estas ?", fromWho: FromWho.me),
    Message(text: "Bien", fromWho: FromWho.me),
  ];

  Future<void> herReplay() async {
    final herMsg = await yesNo.getAnswer();
    messageList.add(herMsg);

    notifyListeners();

    moveScrollToButton();
  }

  Future<void> sendMessage(String txt) async {
    if (txt.isEmpty) return;

    final newMsg = Message(text: txt, fromWho: FromWho.me);
    messageList.add(newMsg);

    if (txt.endsWith('?')) {
      herReplay();
    }

    notifyListeners();
    moveScrollToButton();
  }

  void moveScrollToButton() async {
    await Future.delayed(const Duration(microseconds: 10));
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
