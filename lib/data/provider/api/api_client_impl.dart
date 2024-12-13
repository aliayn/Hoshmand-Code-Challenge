part of 'api_client.dart';

class _ApiClientImpl implements ApiClient {
  _ApiClientImpl() {
    _dio = _initDio;
  }

  late final Dio _dio;

  Dio get _initDio => Dio(BaseOptions(
        baseUrl: _Api.baseUrl,
        connectTimeout: Duration(seconds: 30),
        sendTimeout: Duration(seconds: 30),
        receiveTimeout: Duration(seconds: 30),
        followRedirects: false,
      ));

  @override
  Future<List<UnitModel>> getAllUnits() async {
    try {
      final response = await _dio.get(_Api.units);
      return (response.data as List).map((e) => UnitModel.fromJson(e)).toList();
    } on DioException catch (e) {
      throw DataException.fromDioError(e);
    }
  }
}
