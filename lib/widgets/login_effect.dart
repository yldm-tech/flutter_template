import 'package:bilibili/utils/state/yldm_state.dart';
import 'package:flutter/material.dart';

class LoginEffect extends StatefulWidget {
  final bool obscureText;

  const LoginEffect({super.key, this.obscureText = false});

  @override
  State<LoginEffect> createState() => _LoginEffectState();
}

class _LoginEffectState extends YldmState<LoginEffect> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        border: Border(
          bottom: BorderSide(color: Colors.grey[300]!),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            height: 90,
            image: AssetImage(widget.obscureText
                ? "assets/images/head_left_protect.png"
                : "assets/images/head_left.png"),
          ),
          const Image(
            height: 90,
            width: 90,
            image: AssetImage("assets/images/logo.png"),
          ),
          Image(
            height: 90,
            image: AssetImage(widget.obscureText
                ? "assets/images/head_right_protect.png"
                : "assets/images/head_right.png"),
          ),
        ],
      ),
    );
  }
}
