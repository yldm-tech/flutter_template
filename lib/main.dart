import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_line_sdk/flutter_line_sdk.dart';
import 'package:myetc/application.dart';
import 'package:myetc/pages/login_page.dart';
import 'package:myetc/routers/routes.dart';
import 'package:myetc/utils/cache/yldm_cache.dart';
import 'package:myetc/utils/yldm/color_util.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  LineSDK.instance.setup("${2000201666}").then((_) {
    debugPrint("LineSDK Prepared");
  });
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
      home: const LoginPage(),
      theme: ThemeData(
        primarySwatch: YldmColor.white,
        useMaterial3: true,
      ),
      onGenerateRoute: Application.router.generator, //全局注册
    );
  }
}
