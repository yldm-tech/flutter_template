import 'package:bilibili/application.dart';
import 'package:bilibili/pages/navigator_page.dart';
import 'package:bilibili/routers/routes.dart';
import 'package:bilibili/utils/cache/yldm_cache.dart';
import 'package:bilibili/utils/yldm/color_util.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

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
    // cache
    YldmCache.preInit();
    // router
    final router = FluroRouter();
    Application.router = router; //一定要先写这行
    //再写这一行，因为我们在application中为给router初始值，如果先使用它肯定报错，所以要先赋值再使用
    Routes.configureRoutes(router);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      home: const NavigatorPage(),
      theme: ThemeData(
        primarySwatch: YldmColor.white,
        useMaterial3: true,
      ),
      onGenerateRoute: Application.router.generator, //全局注册
    );
  }
}
