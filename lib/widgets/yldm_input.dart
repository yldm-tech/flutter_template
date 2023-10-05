import 'package:bilibili/utils/state/yldm_state.dart';
import 'package:bilibili/utils/yldm/color_util.dart';
import 'package:flutter/material.dart';

class LoginInput extends StatefulWidget {
  const LoginInput(
    this.title, // title
    {
    this.hint, // 提示
    this.onChanged, // 输入回调
    this.onFocus, // 聚焦回调
    this.lineStretch = false, // 底部线条是否拉伸
    this.obscureText = false, // 是否隐藏输入内容(密码)
    this.keyboardType = TextInputType.text, // 键盘类型
    super.key,
  });

  final String title;
  final String? hint;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFocus;
  final bool lineStretch;
  final bool obscureText;
  final TextInputType keyboardType;

  @override
  State<LoginInput> createState() => _LoginInputState();
}

class _LoginInputState extends YldmState<LoginInput> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      if (widget.onFocus != null) {
        widget.onFocus!(
          _focusNode.hasFocus ? widget.title : '',
        );
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 80,
              child: Text(
                widget.title,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            Expanded(
              child: TextField(
                onChanged: widget.onChanged,
                focusNode: _focusNode,
                keyboardType: widget.keyboardType,
                obscureText: widget.obscureText,
                autofocus: !widget.obscureText,
                cursorColor: YldmColor.primary,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
                decoration: InputDecoration(
                  hintText: widget.hint ?? widget.title,
                  border: InputBorder.none,
                  hintStyle: const TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                  ),
                  contentPadding: const EdgeInsets.only(left: 20, right: 20),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            left: !widget.lineStretch ? 15 : 0,
          ),
          child: const Divider(
            height: 1,
            thickness: 0.5,
          ),
        )
      ],
    );
  }
}
