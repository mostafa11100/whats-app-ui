import 'package:chat_app/const/color_app.dart';
import 'package:chat_app/const/text_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextButtonCustom extends StatelessWidget {
  TextButtonCustom(
      {super.key,
      this.color = const Color.fromARGB(255, 79, 163, 82),
      this.text,
      this.h = 40,
      this.w = 100,
      this.ontap});
  Color color;
  String? text;
  double h, w;
  void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: h,
        width: w,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text!,
            style: TextStyleConst.textstyle15.copyWith(
                color: ColorApp.prim2color, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
