import 'package:bilibili/utils/state/yldm_state.dart';
import 'package:bilibili/widgets/yldm_banner.dart';
import 'package:bilibili/widgets/yldm_navigation_bar.dart';
import 'package:bilibili/widgets/yldm_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends YldmState<HomePage> {
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
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            YldmNavigationBar(
              color: Colors.white,
              height: 50,
              style: StatusStyle.dark,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.grey[200],
                          child: const Image(
                            height: 30,
                            width: 30,
                            image: AssetImage('assets/images/bilibili.png'),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Container(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              height: 32,
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                              ),
                              child: const Icon(
                                Icons.search,
                                color: Colors.grey,
                              )),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.explore_outlined,
                      color: Colors.grey,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: Icon(
                        Icons.mail_outline,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ),
            YldmTab(
                tabs: tabs,
                views: tabs.map((tab) {
                  return Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        YldmBanner(
                          bannerList: bannerDemoData,
                          padding: const EdgeInsets.all(10),
                        ),
                      ],
                    ),
                  );
                }).toList()),
          ],
        ),
      ),
    );
  }
}
