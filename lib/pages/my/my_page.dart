import 'package:bilibili/utils/state/yldm_state.dart';
import 'package:bilibili/widgets/yldm_cached_network_image.dart';
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
      child: YldmCachedNetworkImage(
          url: "https://static.yldm.tech/uPic/bilibili/banner3.png"),
    ));
  }
}
