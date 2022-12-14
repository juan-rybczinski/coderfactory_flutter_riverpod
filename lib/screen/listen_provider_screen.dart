import 'package:codefactory_flutter_riverpod/layout/default_layout.dart';
import 'package:codefactory_flutter_riverpod/riverpod/listen_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListenProviderScreen extends ConsumerStatefulWidget {
  const ListenProviderScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ListenProviderScreen> createState() =>
      _ListenProviderScreenState();
}

class _ListenProviderScreenState extends ConsumerState<ListenProviderScreen>
    with SingleTickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    super.initState();

    controller = TabController(
      length: 10,
      vsync: this,
      initialIndex: ref.read(listenProvider)
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<int>(listenProvider, (previous, next) {
      if (previous != next) {
        controller.animateTo(next);
      }
    });
    return DefaultLayout(
      title: 'ListenProviderScreen',
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: List.generate(
          10,
          (index) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'TAB: ${index + 1}',
                textAlign: TextAlign.center,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => ref
                          .read(listenProvider.notifier)
                          .update((state) => state == 0 ? state : state - 1),
                      child: Text('앞으로'),
                    ),
                  ),
                  const SizedBox(
                    width: 16.0,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => ref
                          .read(listenProvider.notifier)
                          .update((state) => state == 10 ? state : state + 1),
                      child: Text('뒤로'),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
