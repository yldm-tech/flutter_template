import 'package:myetc/utils/http/base_request.dart';

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

  @override
  String getUserToken() {
    return '';
  }

  @override
  doRequest({Map<String, dynamic>? params}) {
    throw UnimplementedError();
  }
}
