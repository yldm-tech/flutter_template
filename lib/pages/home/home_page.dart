import 'package:bilibili/application.dart';
import 'package:bilibili/requests/notice_request.dart';
import 'package:bilibili/utils/cache/yldm_cache.dart';
import 'package:bilibili/utils/http/example/test_request.dart';
import 'package:bilibili/utils/http/yldm_error.dart';
import 'package:bilibili/utils/http/yldm_net.dart';
import 'package:bilibili/utils/yldm/yldm_util.dart';
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

  void testRegister() async {
    Application.router.navigateTo(context, '/register');
  }

  void testLogin() async {
    Application.router.navigateTo(context, '/login');
  }

  void testNotice() async {
    try {
      var result = await NoticeRequest().doRequest();
      Yldm.printLog(result);
    } on NotFound catch (e) {
      Yldm.printLog('needLogin: $e');
    } on NeedLogin catch (e) {
      Yldm.printLog('needLogin: $e');
    } on NeedAuth catch (e) {
      Yldm.printLog('needAuth: $e');
    } on HiNetError catch (e) {
      Yldm.printLog('hiNetError: $e');
    }
  }

  void testGetCache() {
    Yldm.printLog(YldmCache.getInstance().get<String>("name"));
    Yldm.printLog(YldmCache.getInstance().get<int>("age"));
    Yldm.printLog(YldmCache.getInstance().getKeys());
  }

  @override
  Widget build(BuildContext context) {
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
              onPressed: testRegister,
              child: const Text("注册"),
            ),
            TextButton(
              onPressed: testLogin,
              child: const Text("登陆"),
            ),
            TextButton(
              onPressed: testNotice,
              child: const Text("Notice"),
            )
          ],
        ),
      ),
    );
  }
}
