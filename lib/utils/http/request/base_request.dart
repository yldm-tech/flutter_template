import 'package:bilibili/services/login_service.dart';

enum HttpMethod { get, post, put, delete, patch }

/// 接口文档地址
/// https://api.devio.org/uapi/swagger-ui.html
abstract class BaseRequest {
  String? pathParams;

  var useHttps = true;

  String path();

  bool needLogin();

  Map<String, String> params = {};

  Map<String, String> header = {
    'course-flag': 'fa',
    'auth-token': 'ZmEtMjAyMS0wNC0wMiAyMToyMTo0Ni1mYQ==fa',
  };

  // 请求方法
  HttpMethod method() {
    return HttpMethod.get;
  }

  // 接口
  // fixme 这里为了通用性，不应该直接写死，应该通过环境变量来配置
  String authority() {
    return "api.devio.org";
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
      // fixme 这里为了通用性，不应该直接依赖登录模块,应该通过拦截器来实现
      addHeader(
        LoginService.boardingPass,
        LoginService.getBoardingPass() ?? "",
      );
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
