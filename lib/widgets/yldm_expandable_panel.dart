import 'package:bilibili/utils/state/yldm_state.dart';
import 'package:flutter/material.dart';

class YldmExpandablePanel extends StatefulWidget {
  final String title;
  final String content;

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
  bool _expand = false;
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
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              _expand = !_expand;
              if (_expand) {
                controller.reverse();
              } else {
                controller.forward();
              }
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    widget.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Icon(_expand
                      ? Icons.keyboard_arrow_up_sharp
                      : Icons.keyboard_arrow_down_sharp),
                ),
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 8)),
          ClipRect(
            child: Align(
              alignment: Alignment.centerLeft,
              heightFactor: _heightFactor.value,
              child: Text(
                widget.content,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          )
        ],
      ),
    );
  }
}
