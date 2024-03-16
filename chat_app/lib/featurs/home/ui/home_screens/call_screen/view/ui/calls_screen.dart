import 'package:chat_app/const/heghtand_weidth.dart';
import 'package:chat_app/const/text_style.dart';
import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        // height: HandW.getheight(context),
        width: HandW.getwidth(context),
        child: -ListView.builder(
            itemCount: 20,
            itemBuilder: (c, i) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: const NetworkImage(
                        "https://assets.vogue.in/photos/5ce435fecc50be4b0d1402b4/1:1/w_1080,h_1080,c_limit/Shivani-the-Indian-artist-from-Now-United.jpg"),
                    backgroundColor: const Color.fromARGB(255, 240, 3, 3),
                    radius: HandW.getheight(context) / 30,
                  ),
                  title: Text(
                    "elhon",
                    style: TextStyleConst.textstyle21,
                  ),
                  subtitle: Text("25 febr,7:20 am "),
                ),
              );
            }));
  }
}
