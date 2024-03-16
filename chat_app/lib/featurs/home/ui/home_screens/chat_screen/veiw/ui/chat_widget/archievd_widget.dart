import 'package:chat_app/const/color_app.dart';
import 'package:chat_app/const/heghtand_weidth.dart';
import 'package:chat_app/const/text_style.dart';
import 'package:flutter/material.dart';

class Archivedwidget extends StatelessWidget {
  Archivedwidget({super.key, this.count = "9"});

  String count;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: HandW.getwidth(context),
        //  height: 30,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            children: [
              Icon(
                Icons.archive,
                color: ColorApp.textcolor,
              ),
              const SizedBox(
                width: 25,
              ),
              Text(
                "Archived",
                style: TextStyleConst.textstyle20,
              ),
              const Spacer(),
              Text(
                count,
                style: TextStyleConst.textstyle15
                    .copyWith(color: ColorApp.buttoncolor),
              )
            ],
          ),
        ));
  }
}
