import 'package:flutter/material.dart';
import 'package:status_bar_control/status_bar_control.dart';

enum StatusStyle { light, dark }

/// 自定义导航栏
/// 依赖于 https://pub.dev/packages/status_bar_control
/// 用法：
// YldmNavigationBar(
//               color: Colors.white,
//               height: 50,
//               style: StatusStyle.dark,
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 15, right: 15),
//                 child: Row(
//                   children: [
//                     InkWell(
//                       onTap: () {
//                         Navigator.pop(context);
//                       },
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(30),
//                         child: Container(
//                           padding: const EdgeInsets.all(8),
//                           color: Colors.grey[200],
//                           child: const Image(
//                             height: 30,
//                             width: 30,
//                             image: AssetImage('assets/images/bilibili.png'),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 10, right: 10),
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(16),
//                           child: Container(
//                               padding:
//                                   const EdgeInsets.only(left: 10, right: 10),
//                               height: 32,
//                               alignment: Alignment.centerLeft,
//                               decoration: BoxDecoration(
//                                 color: Colors.grey[200],
//                               ),
//                               child: const Icon(
//                                 Icons.search,
//                                 color: Colors.grey,
//                               )),
//                         ),
//                       ),
//                     ),
//                     const Icon(
//                       Icons.explore_outlined,
//                       color: Colors.grey,
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.only(left: 5, right: 5),
//                       child: Icon(
//                         Icons.mail_outline,
//                         color: Colors.grey,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
///
class YldmNavigationBar extends StatelessWidget {
  final StatusStyle style;
  final Color color;
  final double height;
  final Widget child;

  const YldmNavigationBar({super.key,
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
    var top = MediaQuery
        .of(context)
        .padding
        .top;
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      height: top + height,
      padding: EdgeInsets.only(top: top),
      decoration: BoxDecoration(color: color),
      child: child,
    );
  }
}
