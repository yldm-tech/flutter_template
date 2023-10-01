import 'package:bilibili/http/core/yldm_error.dart';
import 'package:bilibili/http/core/yldm_net.dart';
import 'package:bilibili/http/request/test_request.dart';
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
      YldmNet.printLog(result);
    } on NeedLogin catch (e) {
      YldmNet.printLog('needLogin: $e');
    } on NeedAuth catch (e) {
      YldmNet.printLog('needAuth: $e');
    } on HiNetError catch (e) {
      YldmNet.printLog('hiNetError: $e');
    }
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
              onPressed: _incrementCounter,
              child: const Text("发送请求"),
            )
          ],
        ),
      ),
    );
  }
}
