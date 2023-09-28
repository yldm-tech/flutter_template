
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rent_app/pages/home/home_page.dart';

var homeHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      // final args = params['id']!.first; //接收传的参数
      return const HomePage();
    }
);