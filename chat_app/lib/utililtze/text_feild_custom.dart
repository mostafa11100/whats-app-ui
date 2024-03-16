import 'package:chat_app/const/color_app.dart';
import 'package:chat_app/const/text_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFeildCustom extends StatelessWidget {
  TextFeildCustom(
      {super.key,
      this.hint = "",
      this.h = 40.0,
      this.w = 300.0,
      this.controller});
  String hint;
  double h, w;
  TextEditingController? controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: ColorApp.primcolor),
      width: w,
      height: h,
      child: TextFormField(
        validator: (s) {
          if (s == null || s.isEmpty) return "can't be null";
          return null;
        },
        style: TextStyleConst.textstyle14,
        cursorColor: ColorApp.textcolor,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          hintText: hint,
          hintStyle: TextStyleConst.textstyle14
              .copyWith(color: const Color.fromARGB(213, 128, 151, 161)),
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
