import 'package:flutter/material.dart';

class YldmTab extends StatefulWidget {
  final List<String> tabs;
  final List<Widget> views;

  const YldmTab({super.key, required this.tabs, required this.views});

  @override
  State<YldmTab> createState() => _YldmTabState();
}

class _YldmTabState extends State<YldmTab>
    with AutomaticKeepAliveClientMixin, TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: widget.tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: SafeArea(
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
                    text: tab,
                  );
                }).toList(),
              ),
            ),
            Flexible(
                child: TabBarView(
              controller: tabController,
              children: widget.views,
            ))
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
