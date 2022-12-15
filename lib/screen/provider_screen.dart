import 'package:codefactory_flutter_riverpod/layout/default_layout.dart';
import 'package:codefactory_flutter_riverpod/riverpod/provider.dart';
import 'package:codefactory_flutter_riverpod/riverpod/state_notifer_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProviderScreen extends ConsumerWidget {
  const ProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(filteredShoppingListItem);

    return DefaultLayout(
      actions: [
        PopupMenuButton<IsSpicyFilterState>(
          itemBuilder: (_) => IsSpicyFilterState.values.map(
                (state) => PopupMenuItem(
              value: state,
              child: Text(state.name),
            ),
          ).toList(),
          onSelected: (isSpicy) => ref.read(isSpicyFilterProvider.notifier).update((state) => isSpicy),
        ),
      ],
      title: 'ProviderScreen',
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
