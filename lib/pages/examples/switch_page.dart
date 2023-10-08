import 'package:bilibili/utils/yldm/toast_util.dart';
import 'package:bilibili/widgets/yldm_container.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ExampleSwitchPage extends StatefulWidget {
  const ExampleSwitchPage({super.key});

  @override
  State<ExampleSwitchPage> createState() => _ExampleSwitchPageState();
}

class _ExampleSwitchPageState extends State<ExampleSwitchPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        container('ios'),
        iosSwitch(),
        container('android'),
        androidSwitch(),
        container('方形'),
        squareSwitch(),
        container('自定义'),
        customSwitch(),
      ],
    );
  }

  iosSwitch() {
    return Wrap(
      children: [
        YldmContainer(child: toggle(GFToggleType.ios, Colors.green)),
        YldmContainer(child: toggle(GFToggleType.ios, Colors.blue)),
        YldmContainer(child: toggle(GFToggleType.ios, Colors.orange)),
        YldmContainer(child: toggle(GFToggleType.ios, Colors.pink)),
        YldmContainer(child: toggle(GFToggleType.ios, Colors.purple)),
        YldmContainer(child: toggle(GFToggleType.ios, Colors.red)),
      ],
    );
  }

  androidSwitch() {
    return Wrap(
      children: [
        YldmContainer(child: toggle(GFToggleType.android, Colors.green)),
        YldmContainer(child: toggle(GFToggleType.android, Colors.blue)),
        YldmContainer(child: toggle(GFToggleType.android, Colors.orange)),
        YldmContainer(child: toggle(GFToggleType.android, Colors.pink)),
        YldmContainer(child: toggle(GFToggleType.android, Colors.purple)),
        YldmContainer(child: toggle(GFToggleType.android, Colors.red)),
      ],
    );
  }

  squareSwitch() {
    return Wrap(
      children: [
        YldmContainer(child: toggle(GFToggleType.square, Colors.green)),
        YldmContainer(child: toggle(GFToggleType.square, Colors.blue)),
        YldmContainer(child: toggle(GFToggleType.square, Colors.orange)),
        YldmContainer(child: toggle(GFToggleType.square, Colors.pink)),
        YldmContainer(child: toggle(GFToggleType.square, Colors.purple)),
        YldmContainer(child: toggle(GFToggleType.square, Colors.red)),
      ],
    );
  }

  customSwitch() {
    return Wrap(
      children: [
        YldmContainer(child: toggle(GFToggleType.custom, Colors.green)),
        YldmContainer(child: toggle(GFToggleType.custom, Colors.blue)),
        YldmContainer(child: toggle(GFToggleType.custom, Colors.orange)),
        YldmContainer(child: toggle(GFToggleType.custom, Colors.pink)),
        YldmContainer(child: toggle(GFToggleType.custom, Colors.purple)),
        YldmContainer(child: toggle(GFToggleType.custom, Colors.red)),
      ],
    );
  }

  toggle(GFToggleType type, Color color) {
    return GFToggle(
      onChanged: onChange,
      type: type,
      enabledTrackColor: color,
      value: true,
    );
  }

  onChange(val) {
    toast(val.toString());
  }

  toast(content) {
    ToastUtil.centerToast(content, context);
  }

  container(String title) {
    return Container(
      padding: const EdgeInsets.only(left: 10, top: 20, bottom: 5),
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
