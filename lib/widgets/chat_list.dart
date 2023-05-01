import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsapp_full_stack/colors.dart';
import 'package:whatsapp_full_stack/info.dart';
import 'package:whatsapp_full_stack/widgets/my_message_card.dart';
import 'package:whatsapp_full_stack/widgets/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]["isMe"] == true) {
          return MyMessageCard(
            message: messages[index]["text"].toString(),
            date: messages[index]["time"].toString(),
          );
        }
        return SenderMessageCard(
            message: messages[index]["text"].toString(),
            date: messages[index]["time"].toString());
      },
    );
  }
}
