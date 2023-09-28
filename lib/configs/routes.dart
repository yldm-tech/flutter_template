import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rent_app/handlers/home_handler.dart';
import 'package:flutter_rent_app/handlers/login_handler.dart';

import '../pages/not_found_page.dart';

class Routes {
  static const String home = '/home';
  static const String login = '/login';
  static void configureRoutes(FluroRouter router) { //处理未匹配到路由时展示的页面
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
          return const NotFoundPage();
        });
    router.define(login, handler: loginHandler);
    router.define(home, handler: homeHandler);
  }
}
