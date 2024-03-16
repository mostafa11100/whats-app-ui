import 'package:chat_app/const/color_app.dart';
import 'package:chat_app/functions/add_tolistof_popmenu.dart';
import 'package:flutter/material.dart';

class PopUpMenuCustom extends StatefulWidget {
  const PopUpMenuCustom(
      {super.key, required this.onselected, required this.items});
  final Function(dynamic) onselected;
  final List items;

  @override
  State<PopUpMenuCustom> createState() => _PopUpMenuCustomState();
}

class _PopUpMenuCustomState extends State<PopUpMenuCustom> {
  List<PopupMenuItem> list = [];
  @override
  void initState() {
    list = AddToListOfPopMenuButton(widget.items);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        onSelected: widget.onselected,
        color: ColorApp.primcolor,
        icon: const Icon(
          Icons.more_vert,
          color: Colors.white,
        ),
        itemBuilder: (c) {
          return list;
        });
  }
}
