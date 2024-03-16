import 'package:chat_app/const/text_style.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
List<PopupMenuItem> AddToListOfPopMenuButton(List items) {
  List<PopupMenuItem> list = [];
  int i = 0;
  for (var element in items) {
    list.add(PopupMenuItem(
      value: i,
      child: Text(
        element,
        style: TextStyleConst.textstyle15,
      ),
    ));
    i++;
  }
  return list;
}
