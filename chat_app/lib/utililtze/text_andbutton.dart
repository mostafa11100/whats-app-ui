import 'package:chat_app/const/color_app.dart';
import 'package:chat_app/const/text_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextAndBUTTON extends StatelessWidget {
  TextAndBUTTON({super.key, this.ontap, required this.t1, required this.t2});
  void Function()? ontap;
  final String t1, t2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Opacity(
            opacity: .6,
            child: Text(
              t1,
              style: TextStyleConst.textstyle15,
            )),
        TextButton(
            onPressed: ontap,
            child: Text(
              t2,
              style: TextStyleConst.textstyle15
                  .copyWith(color: ColorApp.buttoncolor),
            ))
      ],
    );
  }
}
