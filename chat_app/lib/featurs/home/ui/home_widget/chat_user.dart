import 'package:chat_app/const/color_app.dart';
import 'package:chat_app/const/heghtand_weidth.dart';
import 'package:chat_app/const/text_style.dart';
import 'package:chat_app/featurs/home/ui/home_widget/status_message_icon.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CHATUSERHOME extends StatelessWidget {
  CHATUSERHOME({super.key});

  int? st = 0;
  String? title, suptitle, time, count;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: HandW.getwidth(context),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: const NetworkImage(
              "https://assets.vogue.in/photos/5ce435fecc50be4b0d1402b4/1:1/w_1080,h_1080,c_limit/Shivani-the-Indian-artist-from-Now-United.jpg"),
          backgroundColor: const Color.fromARGB(255, 240, 3, 3),
          radius: HandW.getheight(context) / 30,
        ),
        title: SizedBox(
          // width: 40,
          //color: Colors.deepOrange,
          child: Text(
            "yassmen",
            maxLines: 1,
            style: TextStyleConst.textstyle18,
          ),
        ),
        subtitle: Row(children: [
          StatusMessageIcon(
            status: 2,
          ),
          Opacity(
              opacity: .6,
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text(
                  "ok don't wory",
                  maxLines: 1,
                  style: TextStyleConst.textstyle12,
                ),
              ))
        ]),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Opacity(
              opacity: .6,
              child: Text(
                "yestarday",
                maxLines: 1,
                style: TextStyleConst.textstyle12,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Visibility(
              visible: count == null ? false : true,
              child: CircleAvatar(
                radius: HandW.getwidth(context) / 25,
                backgroundColor: ColorApp.buttoncolor,
                child: Text(
                  "${count ?? 0}",
                  style: TextStyleConst.textstyle12
                      .copyWith(color: ColorApp.prim2color),
                ),
              ),
            )
          ],
        ),
        // minVerticalPadding: 10,
        // contentPadding: const EdgeInsets.symmetric(horizontal: 30),
        isThreeLine: true,
      ),
    );
  }
}
