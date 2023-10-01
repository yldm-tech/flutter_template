enum HttpMethod { get, post, put, delete, patch }

/// 接口文档地址
/// https://api.devio.org/uapi/swagger-ui.html
abstract class BaseRequest {
  var pathParams;

  var useHttps = true;

  String path();

  bool needLogin();

  Map<String, String> params = {};

  Map<String, dynamic> header = {};

  // 请求方法
  HttpMethod method() {
    return HttpMethod.get;
  }

  // 接口
  String authority() {
    return "api.devio.org";
  }

  // 拼接url
  String url() {
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
    return uri.toString();
  }

  // 添加参数
  BaseRequest add(String key, Object value) {
    params[key] = value.toString();
    return this;
  }

  // 添加header参数
  BaseRequest addHeader(String key, Object value) {
    header[key] = value.toString();
    return this;
  }
}
