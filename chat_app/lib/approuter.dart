import 'package:chat_app/featurs/auth_feature/signup/view/ui/signup_screen.dart';
import 'package:chat_app/featurs/home/ui/home_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static String defult = '/';
  static String login = '/login';
  static String signup = '/signup';
  static GoRouter routs = GoRouter(routes: [
    GoRoute(
        path: '/',
        builder: (c, s) {
          return const HomeScreen();
        }),
    GoRoute(
        path: signup,
        builder: (c, s) {
          return const SignUpScreen();
        }),
  ]);
}
