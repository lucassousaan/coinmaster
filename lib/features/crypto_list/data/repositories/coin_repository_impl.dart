import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/coin_entity.dart';
import '../../domain/repositories/coin_repository.dart';
import '../datasources/coin_datasource.dart';

@LazySingleton(as: ICoinRepository)
class CoinRepositoryImpl implements ICoinRepository {
  final CoinDatasource _datasource;

  CoinRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, List<CoinEntity>>> getCoins() async {
    try {
      final models = await _datasource.getCoins();
      final entities = models.map((coin) => coin.toEntity()).toList();
      return Right(entities);
    } on DioException catch (e) {
      switch (e.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.connectionError:
          return const Left(ConnectionFailure());

        case DioExceptionType.badResponse:
          return const Left(ServerFailure('Erro ao buscar dados no servidor'));

        default:
          return Left(UnknownFailure());
      }
    } catch (e) {
      return Left(UnknownFailure());
    }
  }
}
