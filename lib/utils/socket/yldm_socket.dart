import 'package:flutter/material.dart';
import 'package:myetc/utils/socket/socket.dart';
import 'package:myetc/utils/yldm/yldm_util.dart';
import 'package:web_socket_channel/io.dart';

class YldmSocket implements ISocket {
  String wsUrl; // ws://localhost:8080/ws
  IOWebSocketChannel? _channel;

  YldmSocket(this.wsUrl);

  @override
  ISocket close() {
    _channel?.sink.close();
    return this;
  }

  @override
  ISocket dispose() {
    _channel?.sink.close();
    return this;
  }

  @override
  ISocket listen(ValueChanged callback) {
    _channel?.stream.listen((event) {
      callback(event);
    });
    return this;
  }

  @override
  ISocket open(String userId) {
    _channel = IOWebSocketChannel.connect(
      wsUrl,
      headers: {'Connection': 'upgrade', 'Upgrade': 'websocket'},
      pingInterval: const Duration(seconds: 10),
    );
    _channel?.stream.handleError(onError);
    return this;
  }

  @override
  ISocket send(String msg) {
    _channel?.sink.add(msg);
    return this;
  }

  @override
  ISocket onError(Object error) {
    YldmUtil.log(error);
    return this;
  }
}
