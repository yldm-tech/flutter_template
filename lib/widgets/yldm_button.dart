import 'package:bilibili/utils/state/yldm_state.dart';
import 'package:bilibili/utils/yldm/color_util.dart';
import 'package:flutter/material.dart';

class YldmButton extends StatefulWidget {
  final String title;
  final bool enabled;
  final VoidCallback onPressed;

  const YldmButton(
    this.title, {
    this.enabled = false,
    required this.onPressed,
    super.key,
  });

  @override
  State<YldmButton> createState() => _YldmButtonState();
}

class _YldmButtonState extends YldmState<YldmButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) {
              return widget.enabled
                  ? YldmColor.primary
                  : YldmColor.primary.withAlpha(100);
            },
          ),
          foregroundColor: MaterialStateProperty.resolveWith(
            (states) {
              return widget.enabled ? Colors.white : Colors.white70;
            },
          ),
        ),
        onPressed: () {
          if (widget.enabled) {
            widget.onPressed();
          }
        },
        child: Text(widget.title),
      ),
    );
  }
}
