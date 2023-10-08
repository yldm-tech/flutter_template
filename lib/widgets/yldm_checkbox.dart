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

class YldmCheckboxListTile extends StatefulWidget {
  final String title;
  final String subTitle;
  final ImageProvider avatar;
  final Color? color;
  final ValueChanged<bool>? onChanged;

  const YldmCheckboxListTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.avatar,
    this.color,
    this.onChanged,
  });

  @override
  State<YldmCheckboxListTile> createState() => _YldmCheckboxListTileState();
}

class _YldmCheckboxListTileState extends State<YldmCheckboxListTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    var title = widget.title;
    if (title.length > 20) title = "${title.substring(0, 20)}...";
    var subTitle = widget.subTitle;
    if (subTitle.length > 60) subTitle = "${subTitle.substring(0, 60)}...";

    return GFCheckboxListTile(
      titleText: title,
      subTitleText: subTitle,
      avatar: GFAvatar(
        backgroundImage: widget.avatar,
      ),
      size: 25,
      activeBgColor: Colors.green,
      type: GFCheckboxType.circle,
      color: widget.color ?? Colors.grey[50],
      activeIcon: const Icon(Icons.check, size: 15, color: Colors.white),
      onChanged: (value) {
        setState(() {
          isChecked = value;
          widget.onChanged?.call(value);
        });
      },
      value: isChecked,
      inactiveIcon: null,
    );
  }
}
