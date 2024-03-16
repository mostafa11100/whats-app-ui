import 'package:chat_app/const/heghtand_weidth.dart';
import 'package:chat_app/const/text_style.dart';
import 'package:chat_app/functions/check_validator.dart';
import 'package:chat_app/utililtze/text_feild_custom.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SingupBody extends StatelessWidget {
  SingupBody({super.key});
  TextEditingController controllerusername = TextEditingController();
  TextEditingController controlleremail = TextEditingController();
  TextEditingController controllerpassword = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      onChanged: () {
        checkvalidator(formkey);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
              opacity: .7,
              child: Text(
                'user name',
                style: TextStyleConst.textstyle15,
              )),
          const SizedBox(
            height: 15,
          ),
          TextFeildCustom(
            w: HandW.getwidth(context) - 20,
            hint: "enter user name",
            controller: controllerusername,
          ),
          const SizedBox(
            height: 30,
          ),
          Opacity(
              opacity: .7,
              child: Text(
                'email',
                style: TextStyleConst.textstyle15,
              )),
          const SizedBox(
            height: 15,
          ),
          TextFeildCustom(
            w: HandW.getwidth(context) - 20,
            hint: "enter your email",
            controller: controlleremail,
          ),
          const SizedBox(
            height: 30,
          ),
          Opacity(
              opacity: .7,
              child: Text(
                'password',
                style: TextStyleConst.textstyle15,
              )),
          const SizedBox(
            height: 15,
          ),
          TextFeildCustom(
            w: HandW.getwidth(context) - 20,
            hint: "enter your passowrd",
            controller: controllerpassword,
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
