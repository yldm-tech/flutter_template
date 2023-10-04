import 'package:bilibili/utils/http/base_request.dart';
import 'package:bilibili/utils/http/dio_adapter.dart';
import 'package:bilibili/utils/http/http_adapter.dart';
import 'package:bilibili/utils/http/yldm_error.dart';
import 'package:bilibili/utils/http/yldm_net_adapter.dart';
import 'package:bilibili/utils/yldm/yldm_util.dart';

class YldmNet {
  YldmNet._();

  static var isDio = true;

  static YldmNet? _instance;

  static YldmNet getInstance() {
    _instance ??= YldmNet._();
    return _instance!;
  }

  Future<Map> fire(BaseRequest request) async {
    var response = await send(request);
    var result = response.data;
    var status = response.statusCode;
    switch (status) {
      case 200:
      case 201:
        return result;
      case 401:
        throw NeedLogin("请先登录");
      case 403:
        throw NeedAuth(result.toString(), data: result);
      default:
        throw HiNetError(status!, result.toString(), data: result);
    }
  }

  Future<HiNetResponse<T>> send<T>(BaseRequest request) async {
    YldmNetAdapter adapter;
    if (isDio) {
      adapter = DioAdapter();
    } else {
      adapter = HttpAdapter();
    }
    Yldm.printLog("url:${request.url()}");
    Yldm.printLog("method:${request.method()}");
    Yldm.printLog("header:${request.header}");
    Yldm.printLog("params:${request.params}");
    Yldm.printLog("pathParams:${request.pathParams}");
    Yldm.printLog("needLogin:${request.needLogin()}");
    return adapter.send(request);
  }
}
