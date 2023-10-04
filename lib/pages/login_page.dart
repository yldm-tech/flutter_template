import 'package:bilibili/application.dart';
import 'package:bilibili/requests/login_request.dart';
import 'package:bilibili/routers/routes.dart';
import 'package:bilibili/utils/yldm/string_util.dart';
import 'package:bilibili/widgets/login_effect.dart';
import 'package:bilibili/widgets/yldm_appbar.dart';
import 'package:bilibili/widgets/yldm_button.dart';
import 'package:bilibili/widgets/yldm_input.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var isPassword = false;
  String username = '';
  String password = '';
  bool loginEnable = false;

  checkInput() {
    var checked =
        StringUtil.isNotEmpty(username) && StringUtil.isNotEmpty(password);
    if (checked) {
      setState(() {
        loginEnable = true;
      });
    } else {
      setState(() {
        loginEnable = false;
      });
    }
    print(loginEnable);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar("登陆", "注册", () {
          Application.router.navigateTo(context, Routes.register);
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
                onChanged: (text) {
                  username = text;
                  checkInput();
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
                    checkInput();
                  });
                },
              ),
              YldmButton(
                '登陆',
                enabled: loginEnable,
                onPressed: () {
                  LoginRequest().doRequest(params: {
                    "username": username,
                    "password": password,
                  }).then((result) => {
                        if (result['success'])
                          {
                            Application.router.navigateTo(
                              context,
                              Routes.home,
                              clearStack: true,
                            ),
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('登陆成功!'),
                              ),
                            ),
                          }
                      });
                },
              )
            ],
          ),
        ));
  }
}
