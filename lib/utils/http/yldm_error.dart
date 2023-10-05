class NeedLogin extends HiNetError {
  NeedLogin(String message, {int code = 401, dynamic data})
      : super(code, message);
}

class NeedAuth extends HiNetError {
  NeedAuth(String message, {int code = 403, dynamic data})
      : super(code, message);
}

class NotFound extends HiNetError {
  NotFound(String message, {int code = 404, dynamic data})
      : super(code, message);
}

class NetworkError extends HiNetError {
  NetworkError(String message, {int code = 408, dynamic data})
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