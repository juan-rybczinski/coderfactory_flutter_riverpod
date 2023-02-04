import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'code_generation_provider.g.dart';

@riverpod
String greeting(GreetingRef ref) {
  return 'Hello, Code Generation!';
}