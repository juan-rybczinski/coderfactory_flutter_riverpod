import 'package:codefactory_flutter_riverpod/layout/default_layout.dart';
import 'package:codefactory_flutter_riverpod/riverpod/code_generation_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CodeGenerationScreen extends ConsumerWidget {
  const CodeGenerationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final greeting = ref.watch(greetingProvider);
    final greeting2 = ref.watch(greeting2Provider);
    final greeting3 = ref.watch(greeting3Provider);
    final multiple = ref.watch(multipleProvider(
      number1: 10,
      number2: 20,
    ));
    final number = ref.watch(numberStateNotifierProvider);

    return DefaultLayout(
      title: 'CodeGenerationScreen',
      body: Column(
        children: [
          Text('State: $greeting'),
          greeting2.when(
            data: (data) => Text(
              data.toString(),
              textAlign: TextAlign.center,
            ),
            error: (err, stack) => Text(
              'Error: $err',
              textAlign: TextAlign.center,
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
          greeting3.when(
            data: (data) => Text(
              data.toString(),
              textAlign: TextAlign.center,
            ),
            error: (err, stack) => Text(
              'Error: $err',
              textAlign: TextAlign.center,
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
          Text('State: $multiple'),
          Text('Number: $number'),
          Row(
            children: [
              ElevatedButton(
                onPressed: () =>
                    ref.read(numberStateNotifierProvider.notifier).increment(),
                child: Text('Increment'),
              ),
              ElevatedButton(
                onPressed: () =>
                    ref.read(numberStateNotifierProvider.notifier).decrement(),
                child: Text('Decrement'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
