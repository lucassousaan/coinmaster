import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../bloc/coin_list_bloc.dart';
import '../bloc/coin_list_event.dart';
import '../bloc/coin_list_state.dart';

class CoinPage extends StatelessWidget {
  const CoinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<CoinListBloc>()..add(const CoinListEvent.started()),
      child: Scaffold(
        appBar: AppBar(title: const Text('CoinMaster'), centerTitle: true),
        body: const _CoinView(),
      ),
    );
  }
}

class _CoinView extends StatelessWidget {
  const _CoinView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoinListBloc, CoinListState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (message) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error_outline, size: 60, color: Colors.red),
                const SizedBox(height: 10),
                Text(message),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    context.read<CoinListBloc>().add(
                      const CoinListEvent.started(),
                    );
                  },
                  child: const Text("Tentar Novamente"),
                ),
              ],
            ),
          ),
          success: (coins) {
            return ListView.separated(
              itemCount: coins.length,
              separatorBuilder: (_, __) => const Divider(),
              itemBuilder: (context, index) {
                final coin = coins[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage(coin.image),
                  ),
                  title: Text(
                    coin.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(coin.symbol.toUpperCase()),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "R\$ ${coin.currentPrice.toStringAsFixed(2)}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "${coin.priceChangeLastDay.toStringAsFixed(2)}%",
                        style: TextStyle(
                          color: coin.priceChangeLastDay >= 0
                              ? Colors.green
                              : Colors.red,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
