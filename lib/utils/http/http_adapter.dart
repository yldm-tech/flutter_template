import 'dart:convert' as convert;

import 'package:bilibili/utils/http/base_request.dart';
import 'package:bilibili/utils/http/yldm_net_adapter.dart';
import 'package:http/http.dart' as http;

class HttpAdapter extends YldmNetAdapter {
  @override
  Future<HiNetResponse<T>> send<T>(BaseRequest request) async {
    http.Response? response;
    switch (request.method()) {
      case HttpMethod.get:
        response = await http.get(
          request.url(),
          headers: request.header,
        );
      case HttpMethod.post:
        response = await http.post(
          request.url(),
          headers: request.header,
          body: request.params,
        );
      case HttpMethod.delete:
        response = await http.delete(
          request.url(),
          headers: request.header,
          body: request.params,
        );
      case HttpMethod.put:
        response = await http.put(
          request.url(),
          headers: request.header,
          body: request.params,
        );
      default:
        throw Exception("不支持的请求方式");
    }
    return buildRes<T>(response);
  }

  HiNetResponse<T> buildRes<T>(http.Response? response) {
    if (response == null) {
      throw Exception("response is null");
    }
    final statusCode = response.statusCode;
    final body = convert.jsonDecode(response.body) as T;
    if (statusCode == 200) {
      return HiNetResponse<T>(
          data: body, statusCode: statusCode, statusMessage: "success");
    } else {
      throw Exception("statusCode: $statusCode, body: $body");
    }
  }
}
