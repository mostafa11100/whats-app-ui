import 'package:chat_app/featurs/home/ui/home_screens/chat_screen/veiw/ui/chat_widget/archievd_widget.dart';
import 'package:chat_app/featurs/home/ui/home_screens/chat_screen/veiw/ui/chat_widget/list_of_chats.dart';
import 'package:flutter/material.dart';

class CHATSCREEN extends StatelessWidget {
  const CHATSCREEN({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Archivedwidget(),
        ),
        const LastOfChats()
      ],
    );
  }
}
