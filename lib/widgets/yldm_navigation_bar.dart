import 'package:flutter/material.dart';
import 'package:status_bar_control/status_bar_control.dart';

enum StatusStyle { light, dark }

/// 自定义导航栏
/// 依赖于 https://pub.dev/packages/status_bar_control
class YldmNavigationBar extends StatelessWidget {
  final StatusStyle style;
  final Color color;
  final double height;
  final Widget child;

  const YldmNavigationBar(
      {super.key,
      this.style = StatusStyle.dark,
      this.color = Colors.white,
      this.height = 46,
      required this.child});

  _setStatusBar() async {
    await StatusBarControl.setColor(color);
    await StatusBarControl.setStyle(style == StatusStyle.dark
        ? StatusBarStyle.DARK_CONTENT
        : StatusBarStyle.LIGHT_CONTENT);
  }

  @override
  Widget build(BuildContext context) {
    _setStatusBar();
    var top = MediaQuery.of(context).padding.top;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: top + height,
      padding: EdgeInsets.only(top: top),
      decoration: BoxDecoration(color: color),
      child: child,
    );
  }
}
