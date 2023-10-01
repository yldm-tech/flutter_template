import 'package:bilibili/utils/http/request/base_request.dart';

class TestHttpRequest extends BaseRequest {
  @override
  bool needLogin() {
    return false;
  }

  @override
  String path() {
    return "uapi/test/test";
  }
}
