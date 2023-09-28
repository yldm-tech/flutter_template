import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

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
    final router = FluroRouter();
    Application.router = router; //一定要先写这行
    Routes.configureRoutes(router); //再写这一行，因为我们在application中为给router初始值，如果先使用它肯定报错，所以要先赋值再使用
  }
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Application.router.generator, //全局注册
    );
  }
}
