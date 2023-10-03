import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NativeMethodChannelPage extends StatefulWidget {
  const NativeMethodChannelPage({super.key});

  @override
  State<NativeMethodChannelPage> createState() =>
      _NativeMethodChannelPageState();
}

class _NativeMethodChannelPageState extends State<NativeMethodChannelPage> {
  static const _methodChannel = MethodChannel('method_channel');
  dynamic message;
  final Map<String, dynamic> _arguments = <String, dynamic>{
    'message': 'Hello from Flutter',
    'version': '3.15.7',
    'language': 'Dart',
    "androidAPI": 34
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Native MethodChannel'),
      ),
      body: SafeArea(
          child: Column(
        children: [
          TextButton(
            onPressed: () async {
              String? result = await _methodChannel.invokeMethod(
                  'getPlatformVersion', _arguments);
              print(result);
              setState(() {
                message = result;
              });
            },
            child: const Text('发送消息'),
          ),
          Text(message ?? '暂无消息'),
        ],
      )),
    );
  }
}
