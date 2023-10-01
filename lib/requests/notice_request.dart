import 'package:bilibili/utils/http/request/base_request.dart';

class NoticeRequest extends BaseRequest {
  @override
  bool needLogin() {
    return true;
  }

  @override
  String path() {
    return "uapi/notice";
  }
}
