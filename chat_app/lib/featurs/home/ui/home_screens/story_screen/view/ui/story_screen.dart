import 'package:chat_app/const/text_style.dart';
import 'package:chat_app/featurs/home/ui/home_screens/story_screen/view/ui/story_screen_widget/pop_upmenuitem_custom.dart';
import 'package:chat_app/featurs/home/ui/home_screens/story_screen/view/ui/story_screen_widget/storys_list_custom.dart';
import 'package:flutter/material.dart';

class StoryComponent extends StatelessWidget {
  const StoryComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: ListTile(
                leading: Text(
                  "status",
                  style: TextStyleConst.textstyle22,
                ),
                trailing: PopUpMenuCustom(
                  onselected: (i) {
                    // ignore: avoid_print
                    print(i);
                  },
                  items: const ["story privacy"],
                ))),
        StoryScreen(),
      ],
    );
  }
}
