import 'package:codefactory_flutter_riverpod/repository/multiples_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final multiplesFutureProvider = FutureProvider<List<int>>((ref) async {
  return await MultiplesRepository.getMultiplesFuture(number: 10);
});