import 'package:chat_app/const/heghtand_weidth.dart';
import 'package:chat_app/featurs/home/ui/home_screens/call_screen/view/ui/calls_screen.dart';
import 'package:chat_app/featurs/home/ui/home_screens/chat_screen/veiw/ui/chatui_screen.dart';
import 'package:chat_app/featurs/home/ui/home_screens/story_screen/view/ui/story_screen.dart';
import 'package:flutter/material.dart';

class ListOfScreens extends StatelessWidget {
  const ListOfScreens({super.key, required this.controller});

  final TabController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: HandW.getwidth(context),
        child: TabBarView(
          controller: controller,
          children: const [CHATSCREEN(), StoryComponent(), CallsScreen()],
        ),
      ),
    );
  }
}
