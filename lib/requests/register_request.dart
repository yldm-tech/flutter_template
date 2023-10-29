import 'package:myetc/utils/http/base_request.dart';
import 'package:myetc/utils/yldm/yldm_util.dart';

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
    return YldmUtil.getUserToken(tokenKey);
  }
}
