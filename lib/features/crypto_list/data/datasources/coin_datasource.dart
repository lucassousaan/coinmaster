import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../models/coin_model.dart';

part 'coin_datasource.g.dart';

@injectable
@RestApi()
abstract class CoinDatasource {
  @factoryMethod
  factory CoinDatasource(Dio dio) = _CoinDatasource;

  @GET('/coins/markets')
  Future<List<CoinModel>> getCoins({
    @Query('vs_currency') String currency = 'brl',
    @Query('order') String order = 'market_cap_desc',
    @Query('per_page') int perPage = 20,
    @Query('page') int page = 1,
    @Query('sparkline') bool sparkline = false,
  });
}
