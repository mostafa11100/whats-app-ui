import 'package:chat_app/const/heghtand_weidth.dart';
import 'package:chat_app/featurs/home/ui/home_widget/chat_user.dart';
import 'package:flutter/material.dart';

class LastOfChats extends StatelessWidget {
  const LastOfChats({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: 20,
        itemBuilder: (context, i) {
          return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: InkWell(
                  onTap: () {
                    print(i);
                  },
                  child: CHATUSERHOME()));
        });
  }
}
