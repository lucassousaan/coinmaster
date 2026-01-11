import 'package:coinmaster/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../entities/coin_entity.dart';
import '../repositories/coin_repository.dart';

@injectable
class GetCoinsUseCase implements UseCase<List<CoinEntity>, NoParams> {
  final ICoinRepository repository;

  GetCoinsUseCase(this.repository);

  @override
  Future<Either<Failure, List<CoinEntity>>> call(NoParams params) {
    return repository.getCoins();
  }
}
