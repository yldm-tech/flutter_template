import 'package:bilibili/requests/login_request.dart';
import 'package:bilibili/requests/registration_request.dart';
import 'package:bilibili/utils/db/yldm_cache.dart';
import 'package:bilibili/utils/http/core/yldm_net.dart';
import 'package:bilibili/utils/http/request/base_request.dart';

class LoginService {
  static const boardingPass = 'boarding-pass';

  static login(String username, String password) async {
    return _send(username, password);
  }

  static registration(
      String username, String password, String imoocId, String orderId) async {
    return _send(username, password, imoocId: imoocId, orderId: orderId);
  }

  static _send(String username, String password, {imoocId, orderId}) async {
    BaseRequest request;
    if (imoocId != null && orderId != null) {
      request = RegistrationRequest();
    } else {
      request = LoginRequest();
    }

    request.add("userName", username).add("password", password);
    if (imoocId != null && orderId != null) {
      request.add("imoocId", imoocId).add("orderId", orderId);
    }
    var result = await YldmNet.getInstance().fire(request);

    if (result['code'] == 0 && result['data'] != null) {
      YldmCache.getInstance().setString(boardingPass, result['data']);
    }
    return result;
  }

  static getBoardingPass() {
    return YldmCache.getInstance().get(boardingPass);
  }
}
