import 'package:codefactory_flutter_riverpod/repository/multiples_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final autoDisposeModifierProvider = StreamProvider.autoDispose<List<int>>(
  (ref) => MultiplesRepository.getMultiplesStream(number: 10),
);
