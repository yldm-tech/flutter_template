class NeedLogin extends HiNetError {
  NeedLogin(String message, {int code = 401, dynamic data})
      : super(code, message);
}

class NeedAuth extends HiNetError {
  NeedAuth(String message, {int code = 403, dynamic data})
      : super(code, message);
}

class HiNetError implements Exception {
  final int code;
  final String message;
  final dynamic data;

  HiNetError(this.code, this.message, {this.data});

  @override
  String toString() {
    return "HiNetError: code: $code, message: $message";
  }
}
