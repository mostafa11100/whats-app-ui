import 'package:chat_app/const/pop_up_itemsname.dart';
import 'package:chat_app/featurs/home/ui/home_screens/story_screen/view/ui/story_screen_widget/pop_upmenuitem_custom.dart';
import 'package:flutter/material.dart';

class PopMenuButtonchat extends StatelessWidget {
  const PopMenuButtonchat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    print("widget 0");
    return PopUpMenuCustom(onselected: (i) {}, items: list[0]);
  }
}

class PopMenuButtonstory extends StatelessWidget {
  const PopMenuButtonstory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    print("widget1");
    return PopUpMenuCustom(onselected: (i) {}, items: list[1]);
  }
}

class PopMenuButtoncalls extends StatelessWidget {
  const PopMenuButtoncalls({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    print("widget2");
    return PopUpMenuCustom(onselected: (i) {}, items: list[2]);
  }
}
