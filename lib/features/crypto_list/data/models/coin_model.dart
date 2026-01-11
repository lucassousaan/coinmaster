import 'package:coinmaster/features/crypto_list/domain/entities/coin_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_model.freezed.dart';
part 'coin_model.g.dart';

@freezed
abstract class CoinModel with _$CoinModel {
  const CoinModel._();

  const factory CoinModel({
    required String id,
    required String symbol,
    required String name,
    required String image,
    @JsonKey(name: 'current_price') required double currentPrice,
    @JsonKey(name: 'price_change_percentage_24h')
    required double priceChangeLastDay,
  }) = _CoinModel;

  factory CoinModel.fromJson(Map<String, dynamic> json) =>
      _$CoinModelFromJson(json);

  CoinEntity toEntity() {
    return CoinEntity(
      id: id,
      symbol: symbol,
      name: name,
      image: image,
      currentPrice: currentPrice,
      priceChangeLastDay: priceChangeLastDay,
    );
  }
}
