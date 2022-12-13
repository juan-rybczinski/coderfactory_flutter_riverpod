import 'package:codefactory_flutter_riverpod/model/shopping_item_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final shoppingListProvider =
    StateNotifierProvider<ShoppingItemNotifier, List<ShoppingItemModel>>(
        (ref) => ShoppingItemNotifier());

class ShoppingItemNotifier extends StateNotifier<List<ShoppingItemModel>> {
  ShoppingItemNotifier()
      : super([
          const ShoppingItemModel(
            name: '김치',
            quantity: 3,
            hasBought: false,
            isSpicy: true,
          ),
          const ShoppingItemModel(
            name: '라면',
            quantity: 5,
            hasBought: false,
            isSpicy: true,
          ),
          const ShoppingItemModel(
            name: '불닭소스',
            quantity: 1,
            hasBought: false,
            isSpicy: true,
          ),
          const ShoppingItemModel(
            name: '삼겹살',
            quantity: 10,
            hasBought: false,
            isSpicy: false,
          ),
          const ShoppingItemModel(
            name: '수박',
            quantity: 2,
            hasBought: false,
            isSpicy: false,
          ),
          const ShoppingItemModel(
            name: '카스테라',
            quantity: 5,
            hasBought: false,
            isSpicy: false,
          ),
        ]);

  void toggleTodo({required String name}) {
    state = state
        .map((item) => item.name == name
            ? item.copyWith(hasBought: !item.hasBought)
            : item)
        .toList();
  }
}
