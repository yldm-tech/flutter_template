import 'package:bilibili/utils/state/yldm_state.dart';
import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends YldmState<MyPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text('My Page'),
    ));
  }
}
