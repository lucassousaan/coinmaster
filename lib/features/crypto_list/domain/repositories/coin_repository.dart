import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/coin_entity.dart';

abstract class ICoinRepository {
  Future<Either<Failure, List<CoinEntity>>> getCoins();
}
