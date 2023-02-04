import 'package:codefactory_flutter_riverpod/layout/default_layout.dart';
import 'package:codefactory_flutter_riverpod/riverpod/code_generation_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CodeGenerationScreen extends ConsumerWidget {
  const CodeGenerationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final greeting = ref.watch(greetingProvider);

    return DefaultLayout(
      title: 'CodeGenerationScreen',
      body: Column(
        children: [
          Text('State: $greeting')
        ],
      ),
    );
  }
}
