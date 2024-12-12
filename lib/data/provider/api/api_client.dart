import 'package:dio/dio.dart';

part 'api_client_impl.dart';

class _Api {
  static const String baseUrl = '';
}

abstract class ApiClient {
  factory ApiClient() = _ApiClientImpl;

}
