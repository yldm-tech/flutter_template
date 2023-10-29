import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/getwidget.dart';
import 'package:myetc/utils/yldm/toast_util.dart';
import 'package:myetc/widgets/yldm_container.dart';

class ExampleButtonPage extends StatefulWidget {
  const ExampleButtonPage({super.key});

  @override
  State<ExampleButtonPage> createState() => _ExampleButtonPageState();
}

class _ExampleButtonPageState extends State<ExampleButtonPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        container('方形按钮'),
        squareButton(),
        container('圆形按钮'),
        circleButton(),
        container('边框按钮'),
        outlineButton(),
        container('图标按钮'),
        iconButton(),
        container('文字图标按钮'),
        textIconButton(),
        container('社交按钮'),
        socialCircleButton(),
      ],
    );
  }

  squareButton() {
    return Wrap(
      children: [
        YldmContainer(
          child: GFButton(
            color: Colors.blue,
            size: GFSize.SMALL,
            onPressed: () => toast('primary'),
            text: "primary",
            textStyle: const TextStyle(color: Colors.white),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.red,
            size: GFSize.SMALL,
            onPressed: () => toast('danger'),
            text: "danger",
            textStyle: const TextStyle(color: Colors.white),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.grey,
            size: GFSize.SMALL,
            onPressed: () => toast('default'),
            text: "default",
            textStyle: const TextStyle(color: Colors.white),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.green,
            size: GFSize.SMALL,
            onPressed: () => toast('success'),
            text: "success",
            textStyle: const TextStyle(color: Colors.white),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.orange,
            size: GFSize.SMALL,
            onPressed: () => toast('warning'),
            text: "warning",
            textStyle: const TextStyle(color: Colors.white),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.pink,
            onPressed: () => toast('pink'),
            text: "pink",
            size: GFSize.SMALL,
            textStyle: const TextStyle(color: Colors.white),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.black,
            onPressed: () => toast('dark'),
            size: GFSize.SMALL,
            text: "dark",
            textStyle: const TextStyle(color: Colors.white),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.purple,
            size: GFSize.SMALL,
            onPressed: () => toast('purple'),
            text: "purple",
            textStyle: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }

  ///
  //      borderShape: RoundedRectangleBorder(
  //          borderRadius: BorderRadius.circular(50),
  //        ),
  ///
  circleButton() {
    return Wrap(
      children: [
        YldmContainer(
          child: GFButton(
            color: Colors.blue,
            size: GFSize.SMALL,
            borderShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            onPressed: () => toast('primary'),
            text: "primary",
            textStyle: const TextStyle(color: Colors.white),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.red,
            size: GFSize.SMALL,
            onPressed: () => toast('danger'),
            text: "danger",
            borderShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            textStyle: const TextStyle(color: Colors.white),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.grey,
            size: GFSize.SMALL,
            borderShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            onPressed: () => toast('default'),
            text: "default",
            textStyle: const TextStyle(color: Colors.white),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.green,
            size: GFSize.SMALL,
            borderShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            onPressed: () => toast('success'),
            text: "success",
            textStyle: const TextStyle(color: Colors.white),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.orange,
            size: GFSize.SMALL,
            borderShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            onPressed: () => toast('warning'),
            text: "warning",
            textStyle: const TextStyle(color: Colors.white),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.pink,
            borderShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            onPressed: () => toast('pink'),
            text: "pink",
            size: GFSize.SMALL,
            textStyle: const TextStyle(color: Colors.white),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.black,
            onPressed: () => toast('dark'),
            size: GFSize.SMALL,
            borderShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            text: "dark",
            textStyle: const TextStyle(color: Colors.white),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.purple,
            size: GFSize.SMALL,
            borderShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            onPressed: () => toast('purple'),
            text: "purple",
            textStyle: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }

  /// type: GFButtonType.outline
  /// 不能用borderShape: RoundedRectangleBorder
  outlineButton() {
    return Wrap(
      children: [
        YldmContainer(
          child: GFButton(
            color: Colors.blue,
            size: GFSize.SMALL,
            type: GFButtonType.outline,
            onPressed: () => toast('primary'),
            text: "primary",
            textStyle: const TextStyle(color: Colors.blue),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.red,
            size: GFSize.SMALL,
            onPressed: () => toast('danger'),
            text: "danger",
            type: GFButtonType.outline,
            textStyle: const TextStyle(color: Colors.red),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.grey,
            size: GFSize.SMALL,
            type: GFButtonType.outline,
            onPressed: () => toast('default'),
            text: "default",
            textStyle: const TextStyle(color: Colors.grey),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.green,
            size: GFSize.SMALL,
            type: GFButtonType.outline,
            onPressed: () => toast('success'),
            text: "success",
            textStyle: const TextStyle(color: Colors.green),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.orange,
            size: GFSize.SMALL,
            type: GFButtonType.outline,
            onPressed: () => toast('warning'),
            text: "warning",
            textStyle: const TextStyle(color: Colors.orange),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.pink,
            type: GFButtonType.outline,
            onPressed: () => toast('pink'),
            text: "pink",
            size: GFSize.SMALL,
            textStyle: const TextStyle(color: Colors.pink),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.black,
            onPressed: () => toast('dark'),
            size: GFSize.SMALL,
            type: GFButtonType.outline,
            text: "dark",
            textStyle: const TextStyle(color: Colors.black),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.purple,
            size: GFSize.SMALL,
            type: GFButtonType.outline,
            onPressed: () => toast('purple'),
            text: "purple",
            textStyle: const TextStyle(color: Colors.purple),
          ),
        ),
      ],
    );
  }

  ///
  //          icon: const Icon(
  //               Icons.settings,
  //               size: 20,
  //               color: Colors.white,
  //             ),
  ///
  textIconButton() {
    return Wrap(
      children: [
        YldmContainer(
          child: GFButton(
            color: Colors.blue,
            icon: const Icon(
              Icons.add_to_drive_outlined,
              size: 20,
              color: Colors.white,
            ),
            onPressed: () => toast('primary'),
            text: "primary",
            textStyle: const TextStyle(color: Colors.white),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.red,
            icon: const Icon(
              Icons.file_download_done_rounded,
              size: 20,
              color: Colors.white,
            ),
            onPressed: () => toast('danger'),
            text: "danger",
            textStyle: const TextStyle(color: Colors.white),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.grey,
            icon: const Icon(
              Icons.delete_forever,
              size: 20,
              color: Colors.white,
            ),
            onPressed: () => toast('default'),
            text: "default",
            textStyle: const TextStyle(color: Colors.white),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.green,
            icon: const Icon(
              Icons.chair,
              size: 20,
              color: Colors.white,
            ),
            onPressed: () => toast('success'),
            text: "success",
            textStyle: const TextStyle(color: Colors.white),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.orange,
            icon: const Icon(
              Icons.face,
              size: 20,
              color: Colors.white,
            ),
            onPressed: () => toast('warning'),
            text: "warning",
            textStyle: const TextStyle(color: Colors.white),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.pink,
            onPressed: () => toast('pink'),
            text: "pink",
            icon: const Icon(
              Icons.battery_1_bar,
              size: 20,
              color: Colors.white,
            ),
            textStyle: const TextStyle(color: Colors.white),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.black,
            onPressed: () => toast('dark'),
            text: "dark",
            icon: const Icon(
              Icons.account_circle_outlined,
              size: 20,
              color: Colors.white,
            ),
            textStyle: const TextStyle(color: Colors.white),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.purple,
            icon: const Icon(
              Icons.settings,
              size: 20,
              color: Colors.white,
            ),
            onPressed: () => toast('purple'),
            text: "purple",
            textStyle: const TextStyle(color: Colors.white),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.cyan,
            icon: const Icon(
              Icons.adb_rounded,
              size: 20,
              color: Colors.white,
            ),
            onPressed: () => toast('purple'),
            text: "purple",
            textStyle: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }

  ///
  //          icon: const Icon(
  //               Icons.settings,
  //               size: 20,
  //               color: Colors.white,
  //             ),
  ///
  iconButton() {
    return Wrap(
      children: [
        YldmContainer(
          child: GFIconButton(
            color: Colors.blue,
            icon: const Icon(
              Icons.access_alarm,
              size: 20,
              color: Colors.white,
            ),
            onPressed: () => toast('danger'),
          ),
        ),
        YldmContainer(
          child: GFIconButton(
            color: Colors.red,
            icon: const Icon(
              Icons.file_download_done_rounded,
              size: 20,
              color: Colors.white,
            ),
            onPressed: () => toast('danger'),
          ),
        ),
        YldmContainer(
          child: GFIconButton(
            color: Colors.grey,
            icon: const Icon(
              Icons.delete_forever,
              size: 20,
              color: Colors.white,
            ),
            onPressed: () => toast('default'),
          ),
        ),
        YldmContainer(
          child: GFIconButton(
            color: Colors.green,
            icon: const Icon(
              Icons.chair,
              size: 20,
              color: Colors.white,
            ),
            onPressed: () => toast('success'),
          ),
        ),
        YldmContainer(
          child: GFIconButton(
            color: Colors.orange,
            icon: const Icon(
              Icons.face,
              size: 20,
              color: Colors.white,
            ),
            onPressed: () => toast('warning'),
          ),
        ),
        YldmContainer(
          child: GFIconButton(
            color: Colors.pink,
            onPressed: () => toast('pink'),
            icon: const Icon(
              Icons.battery_1_bar,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
        YldmContainer(
          child: GFIconButton(
            color: Colors.black,
            onPressed: () => toast('dark'),
            icon: const Icon(
              Icons.account_circle_outlined,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
        YldmContainer(
          child: GFIconButton(
            color: Colors.blue,
            icon: const Icon(
              Icons.access_alarm,
              size: 20,
              color: Colors.blue,
            ),
            type: GFButtonType.outline2x,
            onPressed: () => toast('danger'),
          ),
        ),
        YldmContainer(
          child: GFIconButton(
            color: Colors.red,
            icon: const Icon(
              Icons.file_download_done_rounded,
              size: 20,
              color: Colors.red,
            ),
            type: GFButtonType.outline2x,
            onPressed: () => toast('danger'),
          ),
        ),
        YldmContainer(
          child: GFIconButton(
            color: Colors.grey,
            type: GFButtonType.outline2x,
            icon: const Icon(
              Icons.delete_forever,
              size: 20,
              color: Colors.grey,
            ),
            onPressed: () => toast('default'),
          ),
        ),
        YldmContainer(
          child: GFIconButton(
            color: Colors.green,
            icon: const Icon(
              Icons.chair,
              size: 20,
              color: Colors.green,
            ),
            type: GFButtonType.outline2x,
            onPressed: () => toast('success'),
          ),
        ),
        YldmContainer(
          child: GFIconButton(
            color: Colors.orange,
            icon: const Icon(
              Icons.face,
              size: 20,
              color: Colors.orange,
            ),
            type: GFButtonType.outline2x,
            onPressed: () => toast('warning'),
          ),
        ),
        YldmContainer(
          child: GFIconButton(
            color: Colors.pink,
            onPressed: () => toast('pink'),
            type: GFButtonType.outline2x,
            icon: const Icon(
              Icons.battery_1_bar,
              size: 20,
              color: Colors.pink,
            ),
          ),
        ),
        YldmContainer(
          child: GFIconButton(
            color: Colors.black,
            onPressed: () => toast('dark'),
            type: GFButtonType.outline2x,
            icon: const Icon(
              Icons.breakfast_dining_rounded,
              size: 20,
              color: Colors.black,
            ),
          ),
        ),
        YldmContainer(
          child: GFIconButton(
            color: Colors.indigoAccent,
            icon: const Icon(
              Icons.facebook,
              size: 20,
              color: Colors.white,
            ),
            onPressed: () => toast('facebook'),
          ),
        ),
        YldmContainer(
          child: GFIconButton(
            color: Colors.green,
            icon: const Icon(
              FontAwesomeIcons.whatsapp,
              size: 20,
              color: Colors.white,
            ),
            onPressed: () => toast('whatsapp'),
          ),
        ),
        YldmContainer(
          child: GFIconButton(
            color: Colors.green,
            icon: const Icon(
              Icons.android,
              size: 20,
              color: Colors.white,
            ),
            onPressed: () => toast('android'),
          ),
        ),
        YldmContainer(
          child: GFIconButton(
            color: Colors.red,
            icon: const Icon(
              FontAwesomeIcons.weibo,
              size: 20,
              color: Colors.white,
            ),
            onPressed: () => toast('weibo'),
          ),
        ),
        YldmContainer(
          child: GFIconButton(
            color: Colors.green,
            icon: const Icon(
              Icons.wechat,
              size: 20,
              color: Colors.white,
            ),
            onPressed: () => toast('wechat'),
          ),
        ),
        YldmContainer(
          child: GFIconButton(
            color: Colors.lightBlue,
            onPressed: () => toast('twitter'),
            icon: const Icon(
              FontAwesomeIcons.twitter,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
        YldmContainer(
          child: GFIconButton(
            color: Colors.black,
            onPressed: () => toast('github'),
            icon: const Icon(
              FontAwesomeIcons.github,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
        YldmContainer(
          child: GFIconButton(
            color: Colors.black12,
            onPressed: () => toast('google'),
            icon: const Icon(
              FontAwesomeIcons.google,
              size: 20,
              color: Colors.redAccent,
            ),
          ),
        ),
        YldmContainer(
          child: GFIconButton(
            color: Colors.blue,
            onPressed: () => toast('dropbox'),
            icon: const Icon(
              FontAwesomeIcons.dropbox,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
        YldmContainer(
          child: GFIconButton(
            color: Colors.green,
            onPressed: () => toast('line'),
            icon: const Icon(
              FontAwesomeIcons.line,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
        YldmContainer(
          child: GFIconButton(
            color: Colors.black12,
            onPressed: () => toast('instagram'),
            icon: const Icon(
              FontAwesomeIcons.instagram,
              size: 20,
              color: Colors.pinkAccent,
            ),
          ),
        ),
        YldmContainer(
          child: GFIconButton(
            color: Colors.black12,
            onPressed: () => toast('youtube'),
            icon: const Icon(
              FontAwesomeIcons.youtube,
              size: 20,
              color: Colors.pinkAccent,
            ),
          ),
        ),
        YldmContainer(
          child: GFIconButton(
            color: Colors.blueAccent,
            onPressed: () => toast('linkedin'),
            icon: const Icon(
              FontAwesomeIcons.linkedin,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
        YldmContainer(
          child: GFIconButton(
            color: Colors.blue,
            onPressed: () => toast('telegram'),
            icon: const Icon(
              FontAwesomeIcons.telegram,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  socialCircleButton() {
    return Wrap(
      children: [
        YldmContainer(
          child: GFButton(
            color: Colors.indigoAccent,
            text: 'facebook',
            fullWidthButton: true,
            icon: const Icon(
              Icons.facebook,
              size: 20,
              color: Colors.white,
            ),
            onPressed: () => toast('facebook'),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.green,
            text: 'whatsapp',
            fullWidthButton: true,
            icon: const Icon(
              FontAwesomeIcons.whatsapp,
              size: 20,
              color: Colors.white,
            ),
            onPressed: () => toast('whatsapp'),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.green,
            text: 'android',
            fullWidthButton: true,
            icon: const Icon(
              Icons.android,
              size: 20,
              color: Colors.white,
            ),
            onPressed: () => toast('android'),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.red,
            text: 'weibo',
            fullWidthButton: true,
            icon: const Icon(
              FontAwesomeIcons.weibo,
              size: 20,
              color: Colors.white,
            ),
            onPressed: () => toast('weibo'),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.green,
            text: 'wechat',
            fullWidthButton: true,
            icon: const Icon(
              Icons.wechat,
              size: 20,
              color: Colors.white,
            ),
            onPressed: () => toast('wechat'),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.lightBlue,
            text: 'twitter',
            fullWidthButton: true,
            onPressed: () => toast('twitter'),
            icon: const Icon(
              FontAwesomeIcons.twitter,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.black,
            text: 'github',
            fullWidthButton: true,
            onPressed: () => toast('github'),
            icon: const Icon(
              FontAwesomeIcons.github,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.blue,
            text: 'dropbox',
            onPressed: () => toast('dropbox'),
            fullWidthButton: true,
            icon: const Icon(
              FontAwesomeIcons.dropbox,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.green,
            onPressed: () => toast('line'),
            text: 'line',
            fullWidthButton: true,
            icon: const Icon(
              FontAwesomeIcons.line,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.blueAccent,
            text: 'linkedin',
            fullWidthButton: true,
            onPressed: () => toast('linkedin'),
            icon: const Icon(
              FontAwesomeIcons.linkedin,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
        YldmContainer(
          child: GFButton(
            color: Colors.blue,
            onPressed: () => toast('telegram'),
            text: 'telegram',
            fullWidthButton: true,
            icon: const Icon(
              FontAwesomeIcons.telegram,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  toast(content) {
    ToastUtil.centerToast(content, context);
  }

  container(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
