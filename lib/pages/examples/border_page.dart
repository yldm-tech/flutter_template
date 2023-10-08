import 'package:bilibili/widgets/yldm_border.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ExampleBorderPage extends StatefulWidget {
  const ExampleBorderPage({super.key});

  @override
  State<ExampleBorderPage> createState() => _ExampleBorderPageState();
}

class _ExampleBorderPageState extends State<ExampleBorderPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        border("方形实线", GFBorderType.rect, YldmBorderType.solid),
        border("方形点线", GFBorderType.rect, YldmBorderType.dotted),
        border("方形虚线", GFBorderType.rect, YldmBorderType.dashed),
        border("方形长虚线", GFBorderType.rect, YldmBorderType.longDashed),
        Row(
          children: [
            border("实线", GFBorderType.circle, YldmBorderType.solid),
            border("点线", GFBorderType.circle, YldmBorderType.dotted),
            border("虚线", GFBorderType.circle, YldmBorderType.dashed),
            border("长虚线", GFBorderType.circle, YldmBorderType.longDashed),
          ],
        ),
        border("椭圆实线", GFBorderType.oval, YldmBorderType.solid),
        border("椭圆点线", GFBorderType.oval, YldmBorderType.dotted),
        border("椭圆虚线", GFBorderType.oval, YldmBorderType.dashed),
        border("椭圆长虚线", GFBorderType.oval, YldmBorderType.longDashed),
      ],
    );
  }

  border(String title, GFBorderType shape, YldmBorderType type) {
    return YldmBorder(
      shape: shape,
      type: type,
      child: Text(title),
    );
  }
}
