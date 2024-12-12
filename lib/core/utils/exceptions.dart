import 'package:dio/dio.dart';

import '../locale/locale_keys.dart';

class DataException implements Exception {
  DataException({required this.message});

  String message = "";

  DataException.fromDioError(DioExceptionType dioError) {
    switch (dioError) {
      case DioExceptionType.cancel:
        message = LocaleKeys.errorRequestCancelled;
        break;
      case DioExceptionType.connectionTimeout:
        message = LocaleKeys.errorConnectionTimeout;
        break;
      case DioExceptionType.receiveTimeout:
        message = LocaleKeys.errorReceiveTimeout;
        break;
      case DioExceptionType.unknown:
        // message = _handleError(dioError.response!.statusCode!);
        break;
      case DioExceptionType.sendTimeout:
        message = LocaleKeys.errorSendTimeout;
        break;
      default:
        message = LocaleKeys.errorInternetConnection;
        break;
    }
  }

  String _handleError(int statusCode) {
    switch (statusCode) {
      case 400:
        return LocaleKeys.errorBadRequest;
      case 403:
        return LocaleKeys.errorForbidden;
      case 404:
        return LocaleKeys.errorRequestNotFound;
      case 500:
        return LocaleKeys.errorInternalServer;
      default:
        return LocaleKeys.errorSomethingWentWrong;
    }
  }

  @override
  String toString() => message;
}
