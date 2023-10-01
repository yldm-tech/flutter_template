import 'package:bilibili/http/request/base_request.dart';

class TestRequest extends BaseRequest {
  @override
  bool needLogin() {
    return false;
  }

  @override
  HttpMethod method() {
    return HttpMethod.get;
  }

  @override
  String path() {
    return "uapi/test/test";
  }
}
