import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:myetc/utils/yldm/toast_util.dart';
import 'package:myetc/widgets/yldm_checkbox.dart';

class ExampleCheckBoxPage extends StatefulWidget {
  const ExampleCheckBoxPage({super.key});

  @override
  State<ExampleCheckBoxPage> createState() => _ExampleCheckBoxPageState();
}

class _ExampleCheckBoxPageState extends State<ExampleCheckBoxPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        container("方形"),
        const Row(
          children: [
            YldmCheckbox(checked: true, color: Colors.red),
            YldmCheckbox(checked: true, color: Colors.orange),
            YldmCheckbox(checked: true, color: Colors.blue),
            YldmCheckbox(checked: true, color: Colors.greenAccent),
            YldmCheckbox(checked: true, color: Colors.purple),
            YldmCheckbox(checked: true, color: Colors.lightGreen),
            YldmCheckbox(checked: true, color: Colors.pink),
          ],
        ),
        container("圆角"),
        const Row(
          children: [
            YldmCheckbox(
                checked: true, type: GFCheckboxType.basic, color: Colors.red),
            YldmCheckbox(
                checked: true,
                type: GFCheckboxType.basic,
                color: Colors.orange),
            YldmCheckbox(
                checked: true, type: GFCheckboxType.basic, color: Colors.blue),
            YldmCheckbox(
                checked: true,
                type: GFCheckboxType.basic,
                color: Colors.greenAccent),
            YldmCheckbox(
                checked: true,
                type: GFCheckboxType.basic,
                color: Colors.purple),
            YldmCheckbox(
                checked: true,
                type: GFCheckboxType.basic,
                color: Colors.lightGreen),
            YldmCheckbox(
                checked: true, type: GFCheckboxType.basic, color: Colors.pink),
          ],
        ),
        container("圆形"),
        const Row(
          children: [
            YldmCheckbox(
              checked: true,
              type: GFCheckboxType.circle,
              color: Colors.red,
            ),
            YldmCheckbox(
              checked: true,
              type: GFCheckboxType.circle,
              color: Colors.orange,
            ),
            YldmCheckbox(
              checked: true,
              type: GFCheckboxType.circle,
              color: Colors.blue,
            ),
            YldmCheckbox(
              checked: true,
              type: GFCheckboxType.circle,
              color: Colors.greenAccent,
            ),
            YldmCheckbox(
              checked: true,
              type: GFCheckboxType.circle,
              color: Colors.purple,
            ),
            YldmCheckbox(
              checked: true,
              type: GFCheckboxType.circle,
              color: Colors.lightGreen,
            ),
            YldmCheckbox(
              checked: true,
              type: GFCheckboxType.circle,
              color: Colors.pink,
            ),
            YldmCheckbox(
              checked: true,
              type: GFCheckboxType.circle,
              color: Colors.green,
            ),
            YldmCheckbox(
              checked: true,
              type: GFCheckboxType.circle,
              color: Colors.deepPurple,
            ),
            YldmCheckbox(
              checked: true,
              type: GFCheckboxType.circle,
              color: Colors.lime,
            ),
            YldmCheckbox(
              checked: true,
              type: GFCheckboxType.circle,
              color: Colors.cyan,
            ),
            YldmCheckbox(
              checked: true,
              type: GFCheckboxType.circle,
              color: Colors.indigoAccent,
            ),
          ],
        ),
        container("带标题"),
        const Column(
          children: [
            YldmCheckbox(
              title: "男",
              checked: true,
            ),
            YldmCheckbox(
              title: "女",
              checked: true,
            ),
          ],
        ),
        container("可选择卡片"),
        const Column(
          children: [
            YldmCheckboxListTile(
                title: "Hercle, habitio albus!.",
                subTitle: "Hercle, habitio albus!.",
                avatar: AssetImage("assets/images/avatar.png")),
            YldmCheckboxListTile(
                title: "Placidus mons solite prensionems consilium est.",
                subTitle:
                    "Brush each side of the lobster with three tablespoons of pork shoulder.",
                avatar: AssetImage("assets/images/avatar.png")),
            YldmCheckboxListTile(
                title:
                    "Try fluffing loaf tossed with crême fraîche, varnished with celery.",
                subTitle: "It is a lunar faith, sir.",
                avatar: AssetImage("assets/images/avatar.png")),
            YldmCheckboxListTile(
                title: "Sunt urbses perdere.",
                subTitle: "The sea is a green, mysterious place.",
                avatar: AssetImage("assets/images/avatar.png")),
          ],
        )
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
