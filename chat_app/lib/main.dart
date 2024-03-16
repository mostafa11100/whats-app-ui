import 'package:chat_app/approuter.dart';
import 'package:chat_app/const/color_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      routerConfig: AppRouter.routs,
      darkTheme: ThemeData(scaffoldBackgroundColor: ColorApp.prim2color),
    );
  }
}
