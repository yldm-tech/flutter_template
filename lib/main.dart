import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:template/pages/home/home_page.dart';

import 'application.dart';
import 'configs/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Application.router = FluroRouter();
    Routes.configureRoutes(Application.router);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      home: const HomePage(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Application.router.generator, //全局注册
    );
  }
}
