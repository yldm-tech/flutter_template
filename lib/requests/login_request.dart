import 'package:bilibili/utils/cache/yldm_cache.dart';
import 'package:bilibili/utils/http/base_request.dart';

class LoginRequest extends BaseRequest {
  @override
  bool needLogin() {
    return false;
  }

  @override
  HttpMethod method() {
    return HttpMethod.post;
  }

  @override
  String path() {
    return "user/login";
  }

  @override
  doRequest({Map<String, dynamic>? params}) async {
    var result = await super.doRequest(params: params);
    if (result['data'] != null) {
      var token = result['data']['accessToken'];
      YldmCache.getInstance().setString(tokenKey, token);
    }
    return result;
  }
}
