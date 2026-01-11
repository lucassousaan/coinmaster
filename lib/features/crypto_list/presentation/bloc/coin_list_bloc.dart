import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../domain/usecases/get_coins_usecase.dart';
import 'coin_list_event.dart';
import 'coin_list_state.dart';

@injectable
class CoinListBloc extends Bloc<CoinListEvent, CoinListState> {
  final GetCoinsUseCase _getCoinsUseCase;

  CoinListBloc(this._getCoinsUseCase) : super(const CoinListState.initial()) {
    on<CoinListEvent>((event, emit) async {
      await event.when(
        started: () async {
          emit(const CoinListState.loading());

          final result = await _getCoinsUseCase(NoParams());

          result.fold(
            (failure) => emit(CoinListState.error(message: failure.message)),
            (coins) => emit(CoinListState.success(coins: coins)),
          );
        },
      );
    });
  }
}
