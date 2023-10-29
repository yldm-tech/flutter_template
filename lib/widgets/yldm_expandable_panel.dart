import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:myetc/utils/state/yldm_state.dart';

class YldmExpandablePanel extends StatefulWidget {
  final Widget title;
  final Widget content;

  const YldmExpandablePanel({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  State<YldmExpandablePanel> createState() => _YldmExpandablePanelState();
}

class _YldmExpandablePanelState extends YldmState<YldmExpandablePanel>
    with SingleTickerProviderStateMixin {
  static final Animatable<double> _easeInTween =
      CurveTween(curve: Curves.easeIn);
  late final AnimationController controller;
  late final Animation<double> _heightFactor;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 200), vsync: this);
    _heightFactor = controller.drive(_easeInTween);
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GFAccordion(
      titleChild: widget.title,
      contentChild:
          Align(heightFactor: _heightFactor.value, child: widget.content),
      collapsedIcon: const Icon(Icons.keyboard_arrow_down),
      expandedIcon: const Icon(Icons.keyboard_arrow_up),
      collapsedTitleBackgroundColor: Colors.grey[200]!,
      expandedTitleBackgroundColor: Colors.grey[200]!,
      contentBackgroundColor: Colors.white,
      onToggleCollapsed: (value) {
        if (value) {
          controller.forward();
        } else {
          controller.reverse();
        }
      },
    );
  }
}
