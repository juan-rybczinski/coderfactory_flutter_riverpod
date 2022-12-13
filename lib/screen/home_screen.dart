import 'package:codefactory_flutter_riverpod/layout/default_layout.dart';
import 'package:codefactory_flutter_riverpod/screen/future_provider_screen.dart';
import 'package:codefactory_flutter_riverpod/screen/state_notifier_provider_screen.dart';
import 'package:codefactory_flutter_riverpod/screen/state_provider_screen.dart';
import 'package:codefactory_flutter_riverpod/screen/stream_provider_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'HomeScreen',
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => StateProviderScreen(),
              ),
            ),
            child: Text('StateProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => StateNotifierProviderScreen(),
              ),
            ),
            child: Text('StateNotifierProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => FutureProviderScreen(),
              ),
            ),
            child: Text('FutureProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => StreamProviderScreen(),
              ),
            ),
            child: Text('StreamProviderScreen'),
          ),
        ],
      ),
    );
  }
}
