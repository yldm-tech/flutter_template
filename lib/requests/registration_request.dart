import '../utils/http/request/base_request.dart';

class RegistrationRequest extends BaseRequest {
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
    return "uapi/user/registration";
  }
}