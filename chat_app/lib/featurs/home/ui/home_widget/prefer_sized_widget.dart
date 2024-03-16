import 'package:chat_app/classes/tableitem.dart';
import 'package:chat_app/const/color_app.dart';
import 'package:chat_app/const/heghtand_weidth.dart';
import 'package:flutter/material.dart';

PreferredSize bottom_preferredsiz(
    TabController controller, context, ind, controler) {
  return PreferredSize(
      preferredSize: Size(HandW.getwidth(context), 112 / 2),
      child: TabBar(
          labelColor: Colors.white,
          indicatorColor: ColorApp.buttoncolor,
          unselectedLabelColor: Colors.white,
          onTap: (i) {
            controller.animateTo(i,
                duration: const Duration(milliseconds: 0),
                curve: Curves.linear);
            ind = i;
          },
          controller: controler,
          tabs: listoftabs));
}
