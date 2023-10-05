import 'package:bilibili/utils/state/yldm_state.dart';
import 'package:bilibili/widgets/yldm_banner.dart';
import 'package:flutter/material.dart';

class RankPage extends StatefulWidget {
  const RankPage({super.key});

  @override
  State<RankPage> createState() => _RankPageState();
}

class _RankPageState extends YldmState<RankPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: YldmBanner(
        bannerList: bannerDemoData,
      ),
    ));
  }
}
