import 'package:myetc/utils/http/example/test_request.dart';
import 'package:myetc/utils/http/yldm_net.dart';
import 'package:test/test.dart';

void main() {
  testHttp();
}

void testHttp() {
  test("testHttpApi", () async {
    YldmNet.isDio = false;
    var res = await YldmNet.getInstance()
        .fire(TestRequest().add("course-flag", "fa").add("requestPrams", "22"));
    expect(res['data']['msg'], "SUCCESS.");
  });
}
