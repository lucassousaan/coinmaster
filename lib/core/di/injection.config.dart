// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/crypto_list/data/datasources/coin_datasource.dart'
    as _i362;
import '../../features/crypto_list/data/repositories/coin_repository_impl.dart'
    as _i511;
import '../../features/crypto_list/domain/repositories/coin_repository.dart'
    as _i993;
import '../../features/crypto_list/domain/usecases/get_coins_usecase.dart'
    as _i323;
import '../../features/crypto_list/presentation/bloc/coin_list_bloc.dart'
    as _i175;
import '../network/network_module.dart' as _i200;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final networkModule = _$NetworkModule();
  gh.lazySingleton<_i361.Dio>(() => networkModule.dio);
  gh.factory<_i362.CoinDatasource>(() => _i362.CoinDatasource(gh<_i361.Dio>()));
  gh.lazySingleton<_i993.ICoinRepository>(
      () => _i511.CoinRepositoryImpl(gh<_i362.CoinDatasource>()));
  gh.factory<_i323.GetCoinsUseCase>(
      () => _i323.GetCoinsUseCase(gh<_i993.ICoinRepository>()));
  gh.factory<_i175.CoinListBloc>(
      () => _i175.CoinListBloc(gh<_i323.GetCoinsUseCase>()));
  return getIt;
}

class _$NetworkModule extends _i200.NetworkModule {}
