import 'package:bilibili/utils/http/core/yldm_net_adapter.dart';
import 'package:bilibili/utils/http/request/base_request.dart';

class MockAdapter extends YldmNetAdapter {
  @override
  Future<HiNetResponse<T>> send<T>(BaseRequest request) async {
    return Future<HiNetResponse<T>>.delayed(
      const Duration(milliseconds: 1000),
      () {
        // 假设 T 是 Map<String, dynamic> 类型的
        // 如果不是，请按照您的需求调整
        var data = {
          "code": 0,
          "message": "success",
          "statusCode": 401,
        } as T; // 这里做了一个类型转换，确保 data 是 T 类型的
        return HiNetResponse(data: data, statusCode: 200);
      },
    );
  }
}
