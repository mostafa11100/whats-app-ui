import 'package:chat_app/const/color_app.dart';
import 'package:chat_app/const/text_style.dart';
import 'package:chat_app/featurs/home/ui/home_widget/list_of_popmenu_buttons.dart';
import 'package:chat_app/featurs/home/ui/home_widget/prefer_sized_widget.dart';
import 'package:flutter/material.dart';

class SliverAppBArCustom extends StatefulWidget {
  const SliverAppBArCustom({super.key, required this.controller});

  final TabController controller;

  @override
  State<SliverAppBArCustom> createState() => _SliverAppBArCustomState();
}

class _SliverAppBArCustomState extends State<SliverAppBArCustom>
    with TickerProviderStateMixin {
  TabController? controler;
  bool floatt = true;
  @override
  void initState() {
    widget.controller.addListener(() {
      setState(() {
        ind = widget.controller.index.toInt();

        controler?.animateTo(ind);
      });
    });
    controler = TabController(length: 3, vsync: this);

    super.initState();
  }

  int ind = 0;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(top: 20),
      sliver: SliverAppBar(
          title: Text(
            "whatsapp",
            style: TextStyleConst.textstyle20,
          ),
          surfaceTintColor: ColorApp.prim2color,
          actions: [
            const Icon(
              Icons.photo_camera,
              color: Colors.white,
            ),
            const SizedBox(
              width: 20,
            ),
            const Icon(Icons.search, color: Colors.white),
            const SizedBox(
              width: 20,
            ),
            ListOfPopMenuButton(
              controller: widget.controller,
              inde: ind,
            )
          ],
          pinned: true,
          floating: ind != 0 ? false : true,
          backgroundColor: ColorApp.prim2color,
          expandedHeight: 120,
          bottom:
              bottom_preferredsiz(widget.controller, context, ind, controler)),
    );
  }
}
