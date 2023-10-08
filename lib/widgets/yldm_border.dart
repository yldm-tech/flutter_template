import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

enum YldmBorderType {
  dashed,
  longDashed,
  solid,
  dotted,
}

class YldmBorder extends StatelessWidget {
  final GFBorderType shape;
  final Widget child;
  final YldmBorderType type;
  final Color color;

  const YldmBorder({
    super.key,
    required this.shape,
    required this.child,
    this.type = YldmBorderType.solid,
    this.color = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    var line = [2.0, 1.0];
    switch (type) {
      case YldmBorderType.dashed:
        line = [10, 3];
        break;
      case YldmBorderType.dotted:
        line = [2, 1];
        break;
      case YldmBorderType.solid:
        line = [1, 0];
        break;
      case YldmBorderType.longDashed:
        line = [20, 3];
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: GFBorder(
        color: color,
        dashedLine: line,
        type: shape,
        child: child,
      ),
    );
  }
}
