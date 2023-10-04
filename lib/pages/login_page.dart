import 'package:bilibili/widgets/login_effect.dart';
import 'package:bilibili/widgets/yldm_appbar.dart';
import 'package:bilibili/widgets/yldm_input.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var isPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar("注册", "登陆", () {
          print("登陆");
        }),
        body: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ListView(
            children: [
              LoginEffect(obscureText: isPassword),
              LoginInput(
                "用户名",
                hint: "请输入用户名",
                lineStretch: true,
                onFocus: (text) {
                  setState(() {
                    isPassword = false;
                  });
                },
              ),
              LoginInput(
                "密    码",
                hint: "请输入密码",
                lineStretch: true,
                obscureText: true,
                onFocus: (text) {
                  setState(() {
                    isPassword = true;
                  });
                },
              ),
            ],
          ),
        ));
  }
}
