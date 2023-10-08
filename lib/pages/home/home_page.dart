import 'package:bilibili/pages/examples/accordion_page.dart';
import 'package:bilibili/pages/examples/animation_page.dart';
import 'package:bilibili/pages/examples/avatar_page.dart';
import 'package:bilibili/pages/examples/badge_page.dart';
import 'package:bilibili/pages/examples/border_page.dart';
import 'package:bilibili/pages/examples/bottom_sheet_page.dart';
import 'package:bilibili/pages/examples/button_page.dart';
import 'package:bilibili/pages/examples/card_page.dart';
import 'package:bilibili/pages/examples/checkbox_page.dart';
import 'package:bilibili/pages/examples/example_typography.dart';
import 'package:bilibili/pages/examples/intro_screen_page.dart';
import 'package:bilibili/pages/examples/loading_page.dart';
import 'package:bilibili/pages/examples/processor_page.dart';
import 'package:bilibili/pages/examples/radio_box_page.dart';
import 'package:bilibili/pages/examples/rating_page.dart';
import 'package:bilibili/pages/examples/search_box_page.dart';
import 'package:bilibili/pages/examples/slider_page.dart';
import 'package:bilibili/pages/examples/switch_page.dart';
import 'package:bilibili/utils/state/yldm_state.dart';
import 'package:bilibili/widgets/yldm_tab.dart';
import 'package:flutter/material.dart';

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
  YldmTabItem("按钮", const ExampleButtonPage()),
  YldmTabItem("徽章", const ExampleBadgePage()),
  YldmTabItem("头像", const ExampleAvatarPage()),
  YldmTabItem("卡片", const ExampleCardPage()),
  YldmTabItem("轮播", const ExampleSliderPage()),
  YldmTabItem("开关", const ExampleSwitchPage()),
  YldmTabItem("版式", const ExampleTypographyPage()),
  YldmTabItem("手风琴", const ExampleAccordionPage()),
  YldmTabItem("搜索框", const ExampleSearchBoxPage()),
  YldmTabItem("评分", const ExampleRatingPage()),
  YldmTabItem("加载动画", const ExampleLoadingPage()),
  YldmTabItem("进度条", const ExampleProcessorPage()),
  YldmTabItem("动画", const ExampleAnimationPage()),
  YldmTabItem("边框", const ExampleBorderPage()),
  YldmTabItem("底部弹窗", const ExampleBottomSheetPage()),
  YldmTabItem("单选框", const ExampleCheckBoxPage()),
  YldmTabItem("多选框", const ExampleRadioPage()),
  YldmTabItem("引导页", const ExampleIntroPage()),
];
