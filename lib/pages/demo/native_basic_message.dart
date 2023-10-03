import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NativeBasicMessagePage extends StatefulWidget {
  const NativeBasicMessagePage({super.key});

  @override
  State<NativeBasicMessagePage> createState() => _NativeBasicMessagePageState();
}

class _NativeBasicMessagePageState extends State<NativeBasicMessagePage> {
  static const _basicChannel =
      BasicMessageChannel<String>('basic_channel', StringCodec());
  String? _message;

  @override
  void initState() {
    super.initState();
  }

  // 发送消息给Native
  void _sendMessage(String message) async {
    String? result = await _basicChannel.send(message);
    print(result);
    setState(() {
      _message = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Native BasicMessageChannel'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                _sendMessage('Hello from Flutter');
              },
              child: const Text('发送消息'),
            ),
            Text(_message ?? '暂无消息'),
          ],
        ),
      ),
    );
  }
}
