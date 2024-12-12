// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:hoshmand_code_challenge/app/repository_impl.dart' as _i754;
import 'package:hoshmand_code_challenge/core/di/injection.dart' as _i193;
import 'package:hoshmand_code_challenge/data/provider/api/api_client.dart'
    as _i43;
import 'package:hoshmand_code_challenge/data/provider/api/api_service.dart'
    as _i921;
import 'package:hoshmand_code_challenge/data/repository/api_repository.dart'
    as _i169;
import 'package:hoshmand_code_challenge/domain/repository/repository.dart'
    as _i538;
import 'package:hoshmand_code_challenge/presentation/home/bloc/home_bloc.dart'
    as _i556;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.factory<_i556.HomeBloc>(() => _i556.HomeBloc());
    gh.lazySingleton<_i43.ApiClient>(() => appModule.apiClient());
    gh.lazySingleton<_i921.ApiService>(
        () => appModule.apiService(gh<_i43.ApiClient>()));
    gh.lazySingleton<_i169.ApiRepository>(
        () => appModule.apiRepository(gh<_i921.ApiService>()));
    gh.lazySingleton<_i538.Repository>(
        () => _i754.RepositoryImpl(gh<_i169.ApiRepository>()));
    return this;
  }
}

class _$AppModule extends _i193.AppModule {}
