import 'package:get_it/get_it.dart';
import 'package:hoshmand_code_challenge/core/di/injection.config.dart';
import 'package:hoshmand_code_challenge/data/provider/api/api_client.dart';
import 'package:hoshmand_code_challenge/data/provider/api/api_service.dart';
import 'package:hoshmand_code_challenge/data/repository/api_repository.dart';
import 'package:injectable/injectable.dart';

final _getIt = GetIt.instance;
T inject<T extends Object>() => _getIt.call();

@injectableInit
void configureDependencies() => _getIt.init();

@module
abstract class AppModule {
  @lazySingleton
  ApiClient apiClient() => ApiClient();

  @lazySingleton
  ApiService apiService(ApiClient apiClient) =>
      ApiService(apiClient);

  @lazySingleton
  ApiRepository apiRepository(ApiService apiService) =>
      ApiRepository(apiService);
}
