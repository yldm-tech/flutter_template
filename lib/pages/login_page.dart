import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_line_sdk/flutter_line_sdk.dart';
import 'package:myetc/application.dart';
import 'package:myetc/routers/routes.dart';
import 'package:myetc/utils/state/yldm_state.dart';
import 'package:myetc/utils/yldm/toast_util.dart';
import 'package:myetc/widgets/yldm_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends YldmState<LoginPage> {
  String username = '';
  String password = '';
  bool loginEnable = false;

  void _signIn() async {
    try {
      final result = await LineSDK.instance.login();
      // user id -> result.userProfile?.userId
      // user name -> result.userProfile?.displayName
      // user avatar -> result.userProfile?.pictureUrl
      debugPrint(result.userProfile?.userId);
      debugPrint(result.userProfile?.displayName);
      debugPrint(result.userProfile?.pictureUrl);
      if (!context.mounted) return;
    } on PlatformException catch (e) {
      ToastUtil.centerToast(e.toString(), context);
    }
  }

  _logout() async {
    try {
      await LineSDK.instance.logout();
    } on PlatformException catch (e) {
      debugPrint(e.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: ListView(
        children: [
          const SizedBox(
            height: 100,
          ),
          const Image(
            image: AssetImage('assets/images/hero.png'),
            height: 180,
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(bottom: 50, top: 50),
            child: const Column(
              children: [
                Text(
                  'MY ETC',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  'ETC請求書情報を迅速に把握する',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          YldmButton('ログイン', enabled: true, onPressed: () {
            _signIn();
          })
        ],
      ),
    ));
  }
}
