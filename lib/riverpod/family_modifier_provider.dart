import 'package:codefactory_flutter_riverpod/repository/multiples_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final familyModifierProvider =
    FutureProvider.family<List<int>, int>((ref, number) async {
  return MultiplesRepository.getMultiplesFuture(number: number);
});
