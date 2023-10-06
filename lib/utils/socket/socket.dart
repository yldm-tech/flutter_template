import 'package:flutter/material.dart';

abstract class ISocket<T> {
  /// 打开连接
  ISocket open(String userId);

  /// 发送消息
  ISocket send(String msg);

  /// 关闭连接 同dispose
  ISocket close();

  /// 销毁 同close
  ISocket dispose();

  // 监听消息
  ISocket listen(ValueChanged<T> callback);

  // 错误回调
  ISocket onError(Object error);
}
