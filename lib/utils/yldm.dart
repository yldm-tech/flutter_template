import 'package:bilibili/utils/db/yldm_cache.dart';
import 'package:flutter/foundation.dart';

class Yldm {
  static void printLog(log) {
    if (kDebugMode) {
      print("yldm_net: $log");
    }
  }

  static getUserToken(tokenKey) {
    return YldmCache.getInstance().get(tokenKey);
  }
}
