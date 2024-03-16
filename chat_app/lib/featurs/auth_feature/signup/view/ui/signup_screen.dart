import 'package:chat_app/approuter.dart';
import 'package:chat_app/const/color_app.dart';
import 'package:chat_app/const/heghtand_weidth.dart';
import 'package:chat_app/const/text_style.dart';

import 'package:chat_app/featurs/auth_feature/signup/view/ui/signup_widget/signup_body.dart';
import 'package:chat_app/utililtze/text_andbutton.dart';
import 'package:chat_app/utililtze/text_button.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          height: HandW.getheight(context),
          width: HandW.getwidth(context),
          child: ListView(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                      onPressed: () {
                        GoRouter.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: ColorApp.textcolor,
                      ))),
              SizedBox(
                height: HandW.getheight(context) / 10,
              ),
              Center(
                child: Text(
                  "Sign Up",
                  style: TextStyleConst.textstyle20,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SingupBody(),
              TextButtonCustom(
                w: 100,
                h: 40,
                text: "Sign Up",
                ontap: () {},
              ),
              TextAndBUTTON(
                t1: 'have already acount?',
                t2: "log in",
                ontap: () {
                  GoRouter.of(context).push(AppRouter.defult);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
