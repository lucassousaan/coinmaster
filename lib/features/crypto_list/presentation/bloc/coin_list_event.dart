import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_list_event.freezed.dart';

@freezed
class CoinListEvent with _$CoinListEvent {
  const factory CoinListEvent.started() = _Started;
}
