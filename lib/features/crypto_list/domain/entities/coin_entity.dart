import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_entity.freezed.dart';

@freezed
abstract class CoinEntity with _$CoinEntity {
  const factory CoinEntity({
    required String id,
    required String symbol,
    required String name,
    required String image,
    required double currentPrice,
    required double priceChangeLastDay,
  }) = _CoinEntity;
}
