
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rent_app/pages/login_page.dart';

var loginHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      // final args = params['id']!.first; //接收传的参数
      return const LoginPage();
    }
);