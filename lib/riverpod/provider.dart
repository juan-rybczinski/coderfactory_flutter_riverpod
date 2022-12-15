import 'package:codefactory_flutter_riverpod/model/shopping_item_model.dart';
import 'package:codefactory_flutter_riverpod/riverpod/state_notifer_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final filteredShoppingListItem = Provider<List<ShoppingItemModel>>((ref) {
  final items = ref.watch(shoppingListProvider);
  final isSpicy = ref.watch(isSpicyFilterProvider);

  if (isSpicy == IsSpicyFilterState.all) {
    return items;
  }

  return isSpicy == IsSpicyFilterState.notSpicy
      ? items.where((item) => !item.isSpicy).toList()
      : items.where((item) => item.isSpicy).toList();
});

enum IsSpicyFilterState {
  notSpicy,
  spicy,
  all,
}

final isSpicyFilterProvider =
    StateProvider<IsSpicyFilterState>((ref) => IsSpicyFilterState.all);
