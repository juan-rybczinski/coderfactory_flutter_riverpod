import 'package:codefactory_flutter_riverpod/repository/multiples_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final multiplesStreamProvider = StreamProvider<List<int>>((ref) {
  return MultiplesRepository.getMultiplesStream(number: 10);
});