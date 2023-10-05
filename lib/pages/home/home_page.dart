import 'package:bilibili/widgets/yldm_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tabs = [
    '推荐',
    '热门',
    '番剧',
    '影视',
    '时尚',
    '电台',
    '国创',
    '直播',
    '相簿',
    '游戏中心',
    '话题中心',
    '专栏',
    '活动中心',
    '课堂'
  ];

  @override
  Widget build(BuildContext context) {
    return YldmTab(
        tabs: tabs,
        views: tabs.map((tab) {
          return Container(
            alignment: Alignment.center,
            child: Text(tab),
          );
        }).toList());
  }
}
