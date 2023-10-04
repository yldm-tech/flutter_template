import '../utils/http/base_request.dart';

class NoticeRequest extends BaseRequest {
  @override
  bool needLogin() {
    return true;
  }

  @override
  HttpMethod method() {
    return HttpMethod.get;
  }

  @override
  String path() {
    return "/notice";
  }
}
