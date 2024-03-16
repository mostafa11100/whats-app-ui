import 'package:chat_app/const/color_app.dart';
import 'package:chat_app/const/heghtand_weidth.dart';
import 'package:chat_app/const/text_style.dart';
import 'package:chat_app/featurs/home/ui/home_widget/floatingaction_bottom_custom.dart';
import 'package:chat_app/featurs/home/ui/home_widget/home_listofscreens.dart';
import 'package:chat_app/featurs/home/ui/home_widget/sliver_appBar.dart';
import 'package:flutter/material.dart';
import 'package:floating_action_bubble/floating_action_bubble.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  @override
  void initState() {
    controller = TabController(length: 3, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatActionBottomCustom(
        controller: controller!,
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBArCustom(
            controller: controller!,
          ),
          SliverToBoxAdapter(
              child: SizedBox(
            height: HandW.getheight(context) * (166 / 9.9),
            child: ListOfScreens(
              controller: controller!,
            ),
          ))
        ],
      ),
    );
  }
}
