import 'package:bilibili/widgets/yldm_input.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: ListView(
        children: [
          LoginInput("用户名", hint: "请输入用户名", lineStretch: true,
              onChanged: (text) {
            print("用户名：$text");
          }),
          LoginInput("密    码",
              hint: "请输入密码",
              lineStretch: true,
              obscureText: true, onChanged: (text) {
            print("用户名：$text");
          })
        ],
      ),
    ));
  }
}
