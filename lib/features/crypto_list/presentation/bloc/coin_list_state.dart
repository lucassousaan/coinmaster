import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/coin_entity.dart';

part 'coin_list_state.freezed.dart';

@freezed
class CoinListState with _$CoinListState {
  const factory CoinListState.initial() = _Initial;
  const factory CoinListState.loading() = _Loading;
  const factory CoinListState.success({required List<CoinEntity> coins}) =
      _Success;
  const factory CoinListState.error({required String message}) = _Error;
}
