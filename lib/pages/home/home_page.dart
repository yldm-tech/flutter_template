import 'package:flutter/material.dart';
import 'package:myetc/utils/state/yldm_state.dart';
import 'package:myetc/widgets/yldm_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends YldmState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [YldmTab(tabs: tabs)],
        ),
      ),
    );
  }
}

var tabs = [
  YldmTabItem('本年', const Text('本年')),
  YldmTabItem('本月', const Text('本月')),
  YldmTabItem('全部', const Text('全部')),
];
