import 'package:bilibili/utils/yldm/toast_util.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class YldmCheckbox extends StatefulWidget {
  final Color color;
  final double size;
  final String? title;
  final bool checked;
  final GFCheckboxType type;
  final ValueChanged<bool>? onChanged;

  const YldmCheckbox({
    super.key,
    this.title,
    this.color = Colors.red,
    this.size = 30,
    this.onChanged,
    this.checked = false,
    this.type = GFCheckboxType.square,
  });

  @override
  State<YldmCheckbox> createState() => _YldmCheckboxState();
}

class _YldmCheckboxState extends State<YldmCheckbox> {
  bool isChecked = false;

  @override
  void initState() {
    super.initState();
    isChecked = widget.checked;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(widget.title ?? "", style: const TextStyle(fontSize: 18)),
        GFCheckbox(
          size: widget.size,
          activeBgColor: widget.color,
          type: widget.type,
          onChanged: (value) {
            setState(() {
              isChecked = value;
              widget.onChanged?.call(value);
              ToastUtil.centerToast(value.toString(), context);
            });
          },
          value: isChecked,
          inactiveIcon: null,
        ),
      ],
    );
  }
}
