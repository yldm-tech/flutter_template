import 'package:bilibili/utils/http/core/dio_adapter.dart';
import 'package:bilibili/utils/http/core/yldm_error.dart';
import 'package:bilibili/utils/http/request/base_request.dart';

class YldmNet {
  YldmNet._();

  static YldmNet? _instance;

  static YldmNet getInstance() {
    _instance ??= YldmNet._();
    return _instance!;
  }

  Future fire(BaseRequest request) async {
    var response = await send(request);
    var result = response.data;
    var status = response.statusCode;
    switch (status) {
      case 200:
        return result;
      case 401:
        throw NeedLogin("请先登录");
      case 403:
        throw NeedAuth(result.toString(), data: result);
      default:
        throw HiNetError(status, result.toString(), data: result);
    }
  }

  Future<dynamic> send<T>(BaseRequest request) async {
    var adapter = DioAdapter();
    return adapter.send(request);
  }

}
