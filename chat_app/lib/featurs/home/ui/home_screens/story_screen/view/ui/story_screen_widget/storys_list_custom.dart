import 'package:chat_app/const/text_style.dart';
import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StoryScreen extends StatelessWidget {
  StoryScreen({super.key});
//  String? title;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: 20,
        itemBuilder: (contexxt, i) {
          return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                  title: Text(
                    "mostafa salem",
                    style: TextStyleConst.textstyle20,
                  ),
                  leading: FDottedLine(
                    color: Colors.white,
                    height: 70.0,
                    width: 70.0,
                    strokeWidth: 2.0,
                    dottedLength: 10.0,
                    space: 2.0,

                    /// Set corner
                    corner: FDottedLineCorner.all(60),
                    child: const SizedBox(
                        width: 60,
                        height: 80,
                        child: Image(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/1200px-Google_%22G%22_logo.svg.png"))),
                  )));
        });
  }
}
