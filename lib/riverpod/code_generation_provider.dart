import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'code_generation_provider.g.dart';

@riverpod
String greeting(GreetingRef ref) {
  return 'Hello, Code Generation!';
}

@riverpod
Future<String> greeting2(Greeting2Ref ref) async {
  await Future.delayed(const Duration(seconds: 3));

  return 'Hello, Juan!';
}

@Riverpod(
  keepAlive: true,
)
Future<String> greeting3(Greeting3Ref ref) async {
  await Future.delayed(const Duration(seconds: 3));

  return 'Hello, Rybczinski!';
}

@riverpod
int multiple(MultipleRef ref, {required int number1, required int number2}) {
  return number1 * number2;
}

@riverpod
class NumberStateNotifier extends _$NumberStateNotifier {
  @override
  int build() {
    return 0;
  }

  increment() {
    state++;
  }

  decrement() {
    state--;
  }
}