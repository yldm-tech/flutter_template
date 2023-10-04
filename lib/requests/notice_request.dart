import 'package:bilibili/utils/yldm.dart';

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

  @override
  String getUserToken() {
    return Yldm.getUserToken(tokenKey);
  }
}
