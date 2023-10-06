import 'package:bilibili/utils/state/yldm_state.dart';
import 'package:flutter/material.dart';

class YldmTabItem {
  final String tabTitle;
  final Widget child;

  YldmTabItem(this.tabTitle, this.child);
}

class YldmTab extends StatefulWidget {
  final List<YldmTabItem> tabs;

  const YldmTab({super.key, required this.tabs});

  @override
  State<YldmTab> createState() => _YldmTabState();
}

class _YldmTabState extends YldmState<YldmTab>
    with AutomaticKeepAliveClientMixin, TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: widget.tabs.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Expanded(
      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: TabBar(
              isScrollable: true,
              controller: tabController,
              labelStyle: const TextStyle(fontSize: 16),
              labelPadding: const EdgeInsets.only(left: 20, right: 20),
              indicator: const UnderlineTabIndicator(
                borderSide: BorderSide(color: Colors.pink, width: 2),
              ),
              tabs: widget.tabs.map<Tab>((tab) {
                return Tab(
                  text: tab.tabTitle,
                );
              }).toList(),
            ),
          ),
          Flexible(
              child: TabBarView(
            controller: tabController,
            children: widget.tabs.map<Widget>((tab) {
              return tab.child;
            }).toList(),
          ))
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

var demoTabs = [
  YldmTabItem('推荐', const Text('推荐')),
  YldmTabItem('热门', const Text('热门')),
  YldmTabItem('番剧', const Text('番剧')),
  YldmTabItem('影视', const Text('影视')),
  YldmTabItem('时尚', const Text('时尚')),
  YldmTabItem('电台', const Text('电台')),
  YldmTabItem('国创', const Text('国创')),
  YldmTabItem('直播', const Text('直播')),
  YldmTabItem('相簿', const Text('相簿')),
  YldmTabItem('游戏中心', const Text('游戏中心')),
  YldmTabItem('话题中心', const Text('话题中心')),
  YldmTabItem('专栏', const Text('专栏')),
  YldmTabItem('活动中心', const Text('活动中心')),
  YldmTabItem('课堂', const Text('课堂')),
];
