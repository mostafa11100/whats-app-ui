import 'package:chat_app/approuter.dart';
import 'package:chat_app/const/heghtand_weidth.dart';
import 'package:chat_app/const/text_style.dart';
import 'package:chat_app/functions/check_validator.dart';
import 'package:chat_app/utililtze/text_andbutton.dart';
import 'package:chat_app/utililtze/text_button.dart';
import 'package:chat_app/utililtze/text_feild_custom.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
              ),
              Form(
                onChanged: () {
                  checkvalidator(formkey);
                },
                key: formkey,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Opacity(
                          opacity: .6,
                          child: Text(
                            'user name',
                            style: TextStyleConst.textstyle15,
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFeildCustom(
                      hint: "pleass enter user name",
                      h: 45,
                      w: HandW.getwidth(context),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Opacity(
                          opacity: .6,
                          child: Text(
                            'password',
                            style: TextStyleConst.textstyle15,
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFeildCustom(
                      hint: "pleass enter pasword",
                      h: 45,
                      w: HandW.getwidth(context),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: TextButtonCustom(
                        h: 40,
                        w: 100,
                        text: "Log in",
                        ontap: () {
                          checkvalidator(formkey);
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    TextAndBUTTON(
                      t1: 'don' 't have acount?',
                      t2: "sign up",
                      ontap: () {
                        GoRouter.of(context).push(AppRouter.signup);
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
