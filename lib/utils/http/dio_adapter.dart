import 'package:dio/dio.dart';
import 'package:myetc/utils/http/base_request.dart';
import 'package:myetc/utils/http/yldm_error.dart';
import 'package:myetc/utils/http/yldm_net_adapter.dart';

class DioAdapter extends YldmNetAdapter {
  @override
  Future<HiNetResponse<T>> send<T>(BaseRequest request) async {
    Response? response;
    var option = Options(headers: request.header);
    DioException? error;
    try {
      switch (request.method()) {
        case HttpMethod.get:
          response = await Dio().get(
            request.url().toString(),
            options: option,
          );
          break;
        case HttpMethod.post:
          response = await Dio().post(
            request.url().toString(),
            options: option,
            data: request.params,
          );
          break;
        case HttpMethod.delete:
          response = await Dio().delete(
            request.url().toString(),
            options: option,
            data: request.params,
          );
          break;
        case HttpMethod.put:
          response = await Dio().put(
            request.url().toString(),
            options: option,
            data: request.params,
          );
          break;
        case HttpMethod.patch:
          response = await Dio().patch(
            request.url().toString(),
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
      switch (response?.statusCode) {
        case 401:
          throw NeedAuth(response?.data['msg']);
        case 403:
          throw NeedLogin(response?.data['msg']);
        case 408:
          throw NetworkError('network error');
        case 500:
        default:
          throw HiNetError(
            response?.statusCode ?? 500,
            error.toString(),
            data: buildRes<T>(response, request),
          );
      }
    }
    return buildRes(response, request);
  }

  HiNetResponse<T> buildRes<T>(Response? response, BaseRequest request) {
    return HiNetResponse(
      data: response?.data,
      request: request,
      statusCode: response?.statusCode,
      statusMessage: response?.statusMessage,
      extra: response?.extra,
    );
  }
}
