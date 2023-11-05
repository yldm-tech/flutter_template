import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myetc/application.dart';
import 'package:myetc/routers/routes.dart';

class LaunchPage extends StatefulWidget {
  const LaunchPage({super.key});

  @override
  State<LaunchPage> createState() => _LaunchPageState();
}

class _LaunchPageState extends State<LaunchPage> {
  late Timer _timer;
  int _current = 5;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _current--;
      });
      if (_current <= 0) {
        gotoRootPage();
      }
    });
  }

  void gotoRootPage() {
    Application.router.navigateTo(context, Routes.root, replace: true);
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: const AssetImage('assets/images/common/page.png'),
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top,
            right: 10,
            child: _clipButton(),
          )
        ],
      ),
    );
  }

  Widget _clipButton() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
        width: 50,
        height: 50,
        color: Colors.black.withAlpha(50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "跳过",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            InkWell(
              onTap: gotoRootPage,
              child: Text(
                "$_current秒",
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
