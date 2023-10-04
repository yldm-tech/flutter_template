import 'package:bilibili/requests/register_request.dart';
import 'package:bilibili/utils/yldm/string_util.dart';
import 'package:bilibili/widgets/login_effect.dart';
import 'package:bilibili/widgets/yldm_appbar.dart';
import 'package:bilibili/widgets/yldm_button.dart';
import 'package:bilibili/widgets/yldm_input.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback onJumpLogin;

  const RegisterPage({super.key, required this.onJumpLogin});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var isPassword = false;
  bool loginEnable = false;
  String username = '';
  String password = '';
  String rePassword = '';

  checkInput() {
    var checked = StringUtil.isNotEmpty(username) &&
        StringUtil.isNotEmpty(password) &&
        StringUtil.isNotEmpty(rePassword) &&
        password == rePassword;
    if (checked) {
      setState(() {
        loginEnable = true;
      });
    } else {
      setState(() {
        loginEnable = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar("注册", "登陆", widget.onJumpLogin),
        body: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ListView(
            children: [
              LoginEffect(obscureText: isPassword),
              LoginInput(
                "用户名",
                hint: "请输入用户名",
                lineStretch: true,
                onChanged: (text) {
                  username = text;
                  checkInput();
                },
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
                onChanged: (text) {
                  password = text;
                  checkInput();
                },
                onFocus: (text) {
                  setState(() {
                    isPassword = true;
                  });
                },
              ),
              LoginInput(
                "重复密码",
                hint: "请再次输入密码",
                lineStretch: true,
                obscureText: true,
                onChanged: (text) {
                  rePassword = text;
                  checkInput();
                },
                onFocus: (text) {
                  setState(() {
                    isPassword = true;
                  });
                },
              ),
              YldmButton('注册', enabled: loginEnable, onPressed: () async {
                var result = await RegisterRequest().doRequest(params: {
                  "username": username,
                  "password": password,
                });
                if (result['success']) {
                  widget.onJumpLogin();
                }
              })
            ],
          ),
        ));
  }
}
