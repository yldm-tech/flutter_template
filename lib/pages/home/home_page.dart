import 'package:bilibili/utils/db/yldm_cache.dart';
import 'package:bilibili/utils/http/core/yldm_error.dart';
import 'package:bilibili/utils/http/core/yldm_net.dart';
import 'package:bilibili/utils/http/request/test_request.dart';
import 'package:bilibili/utils/yldm.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void _incrementCounter() async {
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


  void testGetCache(){
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
              onPressed: _incrementCounter,
              child: const Text("发送请求"),
            )
          ],
        ),
      ),
    );
  }
}
