import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:template/pages/login_page.dart';

import '../pages/home/home_page.dart';
import '../pages/not_found_page.dart';
import '../pages/room/room_detail.dart';

class Routes {
  static const String home = '/home';
  static const String login = '/login';
  static const String roomDetail = '/room/:roomId';
  static void configureRoutes(FluroRouter router) {
    router.define(login, handler: loginHandler);
    router.define(home, handler: homeHandler);
    router.define(roomDetail, handler: roomDetailHandler);
    //处理未匹配到路由时展示的页面
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return const NotFoundPage();
    });
  }
}

var loginHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const LoginPage();
});

var roomDetailHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  final args = params['roomId']!.first; //接收传的参数
  return RoomDetailPage(roomId: args);
});

var homeHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const HomePage();
});
