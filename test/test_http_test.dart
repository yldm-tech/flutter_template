import 'package:bilibili/utils/http/core/yldm_net.dart';
import 'package:bilibili/utils/http/request/example/test_request.dart';
import 'package:test/test.dart';

void main() {
  testHttp();
}

void testHttp() {
  test("testHttpApi", () async {
    YldmNet.isDio = false;
    var res = await YldmNet.getInstance()
        .fire(TestRequest().add("course-flag", "fa").add("requestPrams", "22"));
    expect(res['msg'], "SUCCESS.");
  });
}
