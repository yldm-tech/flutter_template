import 'package:bilibili/pages/favorite/favorite_page.dart';
import 'package:bilibili/pages/home/home_page.dart';
import 'package:bilibili/pages/my/my_page.dart';
import 'package:bilibili/pages/plugins/plugin_page.dart';
import 'package:bilibili/utils/state/yldm_state.dart';
import 'package:bilibili/utils/yldm/color_util.dart';
import 'package:flutter/material.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({super.key});

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends YldmState<NavigatorPage> {
  PageController controller = PageController(initialPage: 0);
  final _defaultColor = Colors.grey;
  final _activeColor = YldmColor.primary;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    bottomItem(String text, IconData icon, int index) {
      return BottomNavigationBarItem(
        icon: Icon(icon, color: _defaultColor),
        activeIcon: Icon(icon, color: _activeColor),
        label: text,
      );
    }

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (value) => {
                setState(() {
                  _currentIndex = value;
                }),
                controller.jumpToPage(value)
              },
          items: [
            bottomItem('首页', Icons.home, 0),
            bottomItem('插件', Icons.flutter_dash_rounded, 1),
            bottomItem('收藏', Icons.favorite, 2),
            bottomItem('我的', Icons.mood, 3),
          ]),
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (value) => {
          setState(() {
            _currentIndex = value;
          })
        },
        children: const [
          HomePage(),
          PluginPage(),
          FavoritePage(),
          MyPage(),
        ],
      ),
    );
  }
}
