part of 'api_client.dart';

class _ApiClientImpl implements ApiClient {
  _ApiClientImpl() {
    dio = initDio;
  }

  late final Dio dio;

  Dio get initDio => Dio(BaseOptions(
      connectTimeout: Duration(seconds: 30),
      sendTimeout: Duration(seconds: 30),
      receiveTimeout: Duration(seconds: 30),
      followRedirects: false,
      validateStatus: ((status) => status != 401)))
    ..interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        if (!options.path.contains('http')) {
          options.path = '${_Api.baseUrl}${options.path}';
        }
        options.headers['accept'] = 'application/json';
        options.headers['Content-Type'] = 'application/json';
        return handler.next(options);
      },
      onError: (DioException error, handler) async {
        return handler.next(error);
      },
    ));

  @override
  Future<List<Unit>> getAllUnits() async {
    try {
      final response = await dio.get(_Api.units);
      return (response.data as List).map((e) => Unit.fromJson(e)).toList();
    } on DioException catch (e) {
      throw DataException.fromDioError(e);
    }
  }
}
