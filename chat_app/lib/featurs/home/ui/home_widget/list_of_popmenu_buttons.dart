import 'package:chat_app/classes/list_ofpopupmenu.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListOfPopMenuButton extends StatefulWidget {
  ListOfPopMenuButton({super.key, this.inde = 0, this.controller});

  int? inde;
  TabController? controller;

  @override
  State<ListOfPopMenuButton> createState() => _ListOfPopMenuButtonState();
}

class _ListOfPopMenuButtonState extends State<ListOfPopMenuButton> {
  Widget? popUp;
  @override
  void initState() {
    popUp = listpop![widget.inde!];
    widget.controller?.addListener(() {
      if (mounted) {
        setState(() {
          popUp = listpop![widget.controller!.index];
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return popUp!;
  }
}
