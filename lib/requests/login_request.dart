import 'package:bilibili/utils/db/yldm_cache.dart';
import 'package:bilibili/utils/http/base_request.dart';
import 'package:bilibili/utils/yldm.dart';

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
  String getUserToken() {
    return Yldm.getUserToken(tokenKey);
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
