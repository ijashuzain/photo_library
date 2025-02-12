// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:photo_library/src/core/constants/api_endpoints.dart' as _i333;
import 'package:photo_library/src/core/services/api_services/api_service.dart'
    as _i154;
import 'package:photo_library/src/core/services/api_services/config/url_config.dart'
    as _i541;
import 'package:photo_library/src/data/repositories/photos_repository_impl.dart'
    as _i135;
import 'package:photo_library/src/domain/repositories/photos_repository.dart'
    as _i471;
import 'package:photo_library/src/presentation/blocs/home_bloc/home_bloc.dart'
    as _i602;

const String _dev = 'dev';
const String _local = 'local';
const String _prod = 'prod';

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
    gh.lazySingleton<_i541.UrlConfiguration>(
      () => _i541.DevelopmentUrlConfiguration(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i541.UrlConfiguration>(
      () => _i541.LocalUrlConfiguration(),
      registerFor: {_local},
    );
    gh.singleton<_i333.ApiEndpoints>(
        () => _i333.ApiEndpoints(gh<_i541.UrlConfiguration>()));
    gh.singleton<_i154.Api>(() => _i154.Api(gh<_i541.UrlConfiguration>()));
    gh.lazySingleton<_i541.UrlConfiguration>(
      () => _i541.ProductionUrlConfiguration(),
      registerFor: {_prod},
    );
    gh.factory<_i471.PhotosRepository>(() => _i135.PhotosRepositoryImpl(
          gh<_i154.Api>(),
          gh<_i333.ApiEndpoints>(),
        ));
    gh.factory<_i602.HomeBloc>(
        () => _i602.HomeBloc(gh<_i471.PhotosRepository>()));
    return this;
  }
}
