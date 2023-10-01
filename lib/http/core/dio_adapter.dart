import 'package:bilibili/http/core/yldm_error.dart';
import 'package:bilibili/http/core/yldm_net_adapter.dart';
import 'package:bilibili/http/request/base_request.dart';
import 'package:dio/dio.dart';

class DioAdapter extends YldmNetAdapter {
  @override
  Future<HiNetResponse<T>> send<T>(BaseRequest request) async {
    Response<dynamic>? response;
    var option = Options(headers: request.header);
    DioException? error;
    try {
      switch (request.method()) {
        case HttpMethod.get:
          response = await Dio().get(
            request.url(),
            options: option,
          );
          break;
        case HttpMethod.post:
          response = await Dio().post(
            request.url(),
            options: option,
            data: request.params,
          );
          break;
        case HttpMethod.delete:
          response = await Dio().delete(
            request.url(),
            options: option,
            data: request.params,
          );
          break;
        case HttpMethod.put:
          response = await Dio().put(
            request.url(),
            options: option,
            data: request.params,
          );
          break;
        case HttpMethod.patch:
          response = await Dio().patch(
            request.url(),
            options: option,
            data: request.params,
          );
          break;
      }
    } on DioException catch (e) {
      error = e;
      response = e.response;
    }

    if (error != null) {
      throw HiNetError(response?.statusCode ?? -1, error.toString(),
          data: buildRes<T>(response, request));
    }
    return buildRes(response, request);
  }

  buildRes<T>(Response? response, BaseRequest request) {
    return HiNetResponse(
      data: response?.data,
      request: request,
      statusCode: response?.statusCode,
      statusMessage: response?.statusMessage,
      extra: response?.extra,
    );
  }
}
