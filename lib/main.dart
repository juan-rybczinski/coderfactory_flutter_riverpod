import 'package:codefactory_flutter_riverpod/riverpod/provider_observer.dart';
import 'package:codefactory_flutter_riverpod/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      observers: [
        Logger()
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    ),
  );
}
