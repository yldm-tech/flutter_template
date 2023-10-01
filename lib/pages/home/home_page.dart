import 'package:bilibili/services/login_service.dart';
import 'package:bilibili/utils/db/yldm_cache.dart';
import 'package:bilibili/utils/http/core/yldm_error.dart';
import 'package:bilibili/utils/http/core/yldm_net.dart';
import 'package:bilibili/utils/http/request/example/test_request.dart';
import 'package:bilibili/utils/yldm.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void incrementCounter() async {
    TestRequest request = TestRequest();
    request.add("course-flag", "flutter").add("requestPrams", "22");
    try {
      var result = await YldmNet.getInstance().fire(request);
      Yldm.printLog(result);
    } on NeedLogin catch (e) {
      Yldm.printLog('needLogin: $e');
    } on NeedAuth catch (e) {
      Yldm.printLog('needAuth: $e');
    } on HiNetError catch (e) {
      Yldm.printLog('hiNetError: $e');
    }
  }

  void testNotice() async {
    try {
      var result = await YldmNet.getInstance().fire(
          TestRequest().add("course-flag", "fa").add("requestPrams", "22"));
      Yldm.printLog(result);
    } on NeedLogin catch (e) {
      Yldm.printLog('needLogin: $e');
    } on NeedAuth catch (e) {
      Yldm.printLog('needAuth: $e');
    } on HiNetError catch (e) {
      Yldm.printLog('hiNetError: $e');
    }
  }

  void testRegister() async {
    var result =
        await LoginService.registration("yldm", "12345", "imoocId", "orderId");
    Yldm.printLog(result);
  }

  void testLogin() async {
    var result = await LoginService.login("yldm", "12345");
    Yldm.printLog(result);
  }

  void testGetCache() {
    Yldm.printLog(YldmCache.getInstance().get<String>("name"));
    Yldm.printLog(YldmCache.getInstance().get<int>("age"));
    Yldm.printLog(YldmCache.getInstance().getKeys());
  }

  @override
  Widget build(BuildContext context) {
    testGetCache();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'bilibili',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            TextButton(
              onPressed: testNotice,
              child: const Text("发送请求"),
            ),
            TextButton(
              onPressed: testLogin,
              child: const Text("注册"),
            ),
            TextButton(
              onPressed: testLogin,
              child: const Text("登陆"),
            )
          ],
        ),
      ),
    );
  }
}
