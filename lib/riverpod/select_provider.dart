import 'package:codefactory_flutter_riverpod/model/shopping_item_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectProvider = StateNotifierProvider<SelectNotifier, ShoppingItemModel>(
    (ref) => SelectNotifier());

class SelectNotifier extends StateNotifier<ShoppingItemModel> {
  SelectNotifier()
      : super(
          ShoppingItemModel(
            name: '김치',
            quantity: 1,
            hasBought: false,
            isSpicy: false,
          ),
        );

  void toggleItemName() {
    if (state.name == '김치') {
      state = state.copyWith(name: '피자');
    } else {
      state = state.copyWith(name: '김치');
    }
  }

  void toggleIsSpicy() {
    state = state.copyWith(isSpicy: !state.isSpicy);
  }
}
