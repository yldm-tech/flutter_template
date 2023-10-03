import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NativeEventChannelPage extends StatefulWidget {
  const NativeEventChannelPage({super.key});

  @override
  State<NativeEventChannelPage> createState() => _NativeEventChannelPageState();
}

class _NativeEventChannelPageState extends State<NativeEventChannelPage> {
  static const _eventChannel = EventChannel('event_channel');
  String? _message;

  @override
  void initState() {
    super.initState();
    _eventChannel.receiveBroadcastStream().listen((event) {
      print('接收到消息：$event');
      setState(() {
        setState(() {
          _message = event;
        });
      });
    }, onError: (error) {
      print(error);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Native EventChannel'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text(_message ?? '暂无消息'),
          ],
        ),
      ),
    );
  }
}
