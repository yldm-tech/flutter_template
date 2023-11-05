import 'package:flutter/material.dart';
import 'package:myetc/pages/favorite/favorite_page.dart';
import 'package:myetc/pages/home/home_page.dart';
import 'package:myetc/pages/music/music_page.dart';
import 'package:myetc/pages/my/my_page.dart';
import 'package:myetc/pages/plugins/plugin_page.dart';
import 'package:myetc/pages/video/video_page.dart';
import 'package:myetc/utils/state/yldm_state.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({super.key});

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends YldmState<NavigatorPage> {
  PageController controller = PageController(initialPage: 0);
  int _currentIndex = 0;

  Widget _createMediaButton() {
    return Container(
      color: Colors.transparent,
      margin: const EdgeInsets.only(top: 58),
      width: 44,
      height: 44,
      child: FloatingActionButton(
        onPressed: () => {
          debugPrint("点击了发布按钮"),
        },
        child: Image.asset("assets/images/icons/create_media.png"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    bottomItem(String text, String icon, int index) {
      return BottomNavigationBarItem(
        icon: Image(
            image: AssetImage('assets/images/icons/$icon.png'), width: 24),
        activeIcon: Image(
            image: AssetImage('assets/images/icons/${icon}_active.png'),
            width: 24),
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
            bottomItem('首页', "home", 0),
            bottomItem('音乐', "music", 3),
            bottomItem('', "create_media", 1),
            bottomItem('小视频', "tiny_video", 2),
            bottomItem('我的', "profile", 3),
          ]),
      floatingActionButton: _createMediaButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (value) => {
          setState(() {
            _currentIndex = value;
          })
        },
        children: [
          const HomePage(),
          const MusicPage(),
          Container(),
          const VideoPage(),
          const MyPage(),
        ],
      ),
    );
  }
}
