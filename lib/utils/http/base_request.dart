import 'package:bilibili/utils/http/yldm_net.dart';
import 'package:bilibili/utils/yldm/yldm_util.dart';

enum HttpMethod { get, post, put, delete, patch }

/// 接口文档地址
/// https://api.devio.org/uapi/swagger-ui.html
abstract class BaseRequest<T> {
  String? pathParams;
  String tokenKey = "authorization";

  var useHttps = false;

  String path();

  bool needLogin();

  Map<String, String> params = {};

  Map<String, String> header = {};

  // 请求方法
  HttpMethod method() {
    return HttpMethod.get;
  }

  void httpOrHttps(bool useHttps) {
    this.useHttps = useHttps;
  }

  String? getUserToken() {
    return Yldm.getUserToken(tokenKey);
  }

  Future<Map> doRequest({Map<String, dynamic>? params}) async {
    params?.forEach((key, value) {
      add(key, value);
    });
    Yldm.log(url());
    return await YldmNet.getInstance().fire(this);
  }

  // 接口
  // fixme 这里为了通用性，不应该直接写死，应该通过环境变量来配置
  String authority() {
    return "127.0.0.1:8005";
  }

  // 拼接url
  Uri url() {
    Uri uri;
    var pathStr = path();
    // 拼接path参数
    if (pathParams != null) {
      if (path().endsWith("/")) {
        pathStr = "${path()}$pathParams";
      } else {
        pathStr = "${path()}/$pathParams";
      }
    }
    // http和https的切换
    if (useHttps) {
      uri = Uri.https(authority(), pathStr, params);
    } else {
      uri = Uri.http(authority(), pathStr, params);
    }

    if (needLogin()) {
      addHeader(tokenKey, 'Bearer ${getUserToken()}');
    }
    return uri;
  }

  // 添加参数
  BaseRequest add(String key, Object value) {
    params[key] = value.toString();
    return this;
  }

  // 添加header参数
  BaseRequest addHeader(String key, Object value) {
    if (value == "") return this;
    header[key] = value.toString();
    return this;
  }
}
