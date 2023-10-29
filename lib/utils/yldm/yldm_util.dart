import 'package:flutter/foundation.dart';
import 'package:myetc/utils/cache/yldm_cache.dart';

class YldmUtil {
  static void log(log) {
    if (kDebugMode) {
      print("yldm_net: $log");
    }
  }

  static getUserToken(tokenKey) {
    return YldmCache.getInstance().get(tokenKey);
  }
}
