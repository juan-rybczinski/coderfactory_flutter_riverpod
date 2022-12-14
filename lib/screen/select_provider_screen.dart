import 'package:codefactory_flutter_riverpod/layout/default_layout.dart';
import 'package:codefactory_flutter_riverpod/riverpod/select_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectProviderScreen extends ConsumerWidget {
  const SelectProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(selectProvider.select((value) => value.name));
    ref.listen(selectProvider.select((value) => value.isSpicy), (previous, next) {
      print(next);
    });

    return DefaultLayout(
      title: 'SelectProviderScreen',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            name,
            textAlign: TextAlign.center,
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () => ref.read(selectProvider.notifier).toggleItemName(),
                  child: Text('Toggle name'),
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: ElevatedButton(
                  onPressed: () => ref.read(selectProvider.notifier).toggleIsSpicy(),
                  child: Text('Toggle isSpicy'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
