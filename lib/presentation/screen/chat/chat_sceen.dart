import 'package:flutter/material.dart';
import 'package:labs_flutter/domain/entities/message.dart';
import 'package:labs_flutter/presentation/providers/chat/chat_provider.dart';
import 'package:labs_flutter/presentation/widgets/chat/her_message_bubble.dart';
import 'package:labs_flutter/presentation/widgets/chat/my_message_bubble.dart';
import 'package:labs_flutter/presentation/widgets/shared/message_field_box.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://raw.githubusercontent.com/wugalde/labs_flutter/main/assets/chapter-mobile.png'),
          ),
        ),
        title: const Text('Backend Chat'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatPrivider = context.watch<ChatProvider>();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: chatPrivider.chatScrollController,
                itemCount: chatPrivider.messageList.length,
                itemBuilder: (context, index) {
                  Message message = chatPrivider.messageList[index];
                  return (message.fromWho == FromWho.hers)
                      ? HerMessageBubble(message: message)
                      : MyMessageBubble(message: message);
                },
              ),
            ),
            MessageFieldBox(
              // onValue: (value) => chatPrivider.sendMessage(value),
              onValue: chatPrivider.sendMessage,
            ),
          ],
        ),
      ),
    );
  }
}
