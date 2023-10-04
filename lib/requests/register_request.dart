import 'package:bilibili/utils/http/base_request.dart';
import 'package:bilibili/utils/yldm/yldm_util.dart';

class RegisterRequest extends BaseRequest {
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
    return "/user/register";
  }

  @override
  String? getUserToken() {
    return Yldm.getUserToken(tokenKey);
  }
}
