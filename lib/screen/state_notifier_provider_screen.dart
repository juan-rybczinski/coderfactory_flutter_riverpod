import 'package:codefactory_flutter_riverpod/layout/default_layout.dart';
import 'package:codefactory_flutter_riverpod/riverpod/state_notifer_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StateNotifierProviderScreen extends ConsumerWidget {
  const StateNotifierProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(shoppingListProvider);

    return DefaultLayout(
      title: 'StateNotifierProviderScreen',
      body: ListView(
        children: items
            .map(
              (item) => CheckboxListTile(
                title: Text(item.name),
                value: item.hasBought,
                onChanged: (value) => ref
                    .watch(shoppingListProvider.notifier)
                    .toggleTodo(name: item.name),
              ),
            )
            .toList(),
      ),
    );
  }
}
