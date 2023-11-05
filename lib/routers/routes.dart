import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:myetc/application.dart';
import 'package:myetc/pages/home/home_page.dart';
import 'package:myetc/pages/login_page.dart';
import 'package:myetc/pages/navigator_page.dart';
import 'package:myetc/pages/not_found_page.dart';
import 'package:myetc/pages/register_page.dart';

class Routes {
  static const String root = 'root';
  static const String home = '/home';
  static const String login = '/login';
  static const String register = '/register';

  static void configureRoutes(FluroRouter router) {
    //处理未匹配到路由时展示的页面
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return const NotFoundPage();
    });

    // root
    router.define(root, handler: Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return const NavigatorPage();
    }));

    // register
    router.define(register, handler: Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return RegisterPage(
        onJumpLogin: () {
          Application.router.navigateTo(context!, Routes.login);
        },
      );
    }));

    //login
    router.define(login, handler: Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return const LoginPage();
    }));

    // home
    router.define(home, handler: Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return const HomePage();
    }));
  }
}
