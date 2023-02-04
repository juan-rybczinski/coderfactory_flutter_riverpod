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
