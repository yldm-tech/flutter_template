import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

/// 瀑布流组件示例数据
/// 依赖于 https://pub.dev/packages/flutter_staggered_grid_view
/// 如果这个库不好用了，可以考虑换一个更好用的
final List<YldmGridViewItem> gridDemoList = List.generate(
  200,
  (index) => YldmGridViewItem(
      id: index,
      title: "Item $index",
      height: Random().nextInt(150) + 50.5,
      color: Color.fromARGB(Random().nextInt(256), Random().nextInt(256),
          Random().nextInt(256), Random().nextInt(256))),
);

class YldmGridViewItem {
  final int id;
  final String title;
  final double height;
  final Color color;

  YldmGridViewItem({
    required this.id, // 唯一标识
    required this.title, // 标题
    required this.height, // 高度
    required this.color, // 背景颜色
  });
}

class YldmGridView extends StatefulWidget {
  final List<YldmGridViewItem> items; // 数据
  final int crossAxisCount; // 列数
  final double mainAxisSpacing; // 垂直间距
  final double crossAxisSpacing; // 水平间距

  const YldmGridView({
    super.key,
    required this.items,
    this.crossAxisCount = 3,
    this.mainAxisSpacing = 4,
    this.crossAxisSpacing = 4,
  });

  @override
  State<YldmGridView> createState() => _YldmGridViewState();
}

class _YldmGridViewState extends State<YldmGridView> {
  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
        itemCount: widget.items.length,
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        // the number of columns
        crossAxisCount: widget.crossAxisCount,
        // vertical gap between two items
        mainAxisSpacing: widget.mainAxisSpacing,
        // horizontal gap between two items
        crossAxisSpacing: widget.crossAxisSpacing,
        itemBuilder: (context, index) {
          var viewItem = widget.items[index];
          return Card(
            key: ValueKey(viewItem.id),
            color: viewItem.color,
            child: SizedBox(
              height: viewItem.height,
              child: Center(
                child: Text(viewItem.title),
              ),
            ),
          );
        });
  }
}
