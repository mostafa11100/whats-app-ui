import 'package:chat_app/classes/listof_icons.dart';
import 'package:chat_app/const/color_app.dart';
import 'package:chat_app/const/text_style.dart';
import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';

class FloatActionBottomCustom extends StatefulWidget {
  const FloatActionBottomCustom({super.key, required this.controller});
  final TabController controller;

  @override
  State<FloatActionBottomCustom> createState() =>
      _FloatActionBottomCustomState();
}

class _FloatActionBottomCustomState extends State<FloatActionBottomCustom>
    with TickerProviderStateMixin {
  Animation? _animation;

  AnimationController? _animationController;
  int? index = 0;
  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(microseconds: 1000));
    CurvedAnimation curvedanimation =
        CurvedAnimation(parent: _animationController!, curve: Curves.linear);
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedanimation);
    // if (controller!.indexIsChanging) {
    //   setState(() {});
    // }
    // _animation!.isCompleted;

    widget.controller.addListener(() {
      if (mounted) {
        setState(() {
          index = widget.controller.index;
          if (_animationController!.isCompleted) {
            _animationController!.reverse();
          }
          if (index == 1) {
            _animationController!.forward();
          }
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionBubble(
      items: [
        Bubble(
            icon: Icons.edit_rounded,
            iconColor: Colors.white,
            title: "",
            titleStyle: TextStyleConst.textstyle17,
            bubbleColor: const Color.fromARGB(255, 114, 113, 113),
            onPress: () {}),
      ],
      onPress: () {},
      iconData: listoficons[index!],
      iconColor: ColorApp.prim2color,
      backGroundColor: ColorApp.buttoncolor,
      animation: _animation!,
    );
  }
}
