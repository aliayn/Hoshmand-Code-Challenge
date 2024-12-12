// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:hoshmand_code_challenge/core/di/injection.dart' as _i193;
import 'package:hoshmand_code_challenge/data/api/api_client.dart' as _i764;
import 'package:hoshmand_code_challenge/data/api/api_service.dart' as _i656;
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
    gh.lazySingleton<_i764.ApiClient>(() => appModule.apiClient());
    gh.lazySingleton<_i656.ApiService>(
        () => appModule.apiService(gh<_i764.ApiClient>()));
    return this;
  }
}

class _$AppModule extends _i193.AppModule {}
