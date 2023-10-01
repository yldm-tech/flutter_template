import 'package:bilibili/requests/test_request.dart';
import 'package:bilibili/utils/http/core/yldm_net.dart';
import 'package:bilibili/utils/yldm.dart';
import 'package:test/test.dart';

void main() {
  testHttp();
}

void testHttp() {
  test("testHttpApi", () async {
    var request = TestHttpRequest();
    request.add("course-flag", "fa");
    request.add("requestPrams", "22");
    var response = await YldmNet.getInstance().fire(request);
    Yldm.printLog(response);
    expect(response.data.toString(), "success");
  });
}
