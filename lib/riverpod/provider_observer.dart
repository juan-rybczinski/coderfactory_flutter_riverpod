import 'package:flutter_riverpod/flutter_riverpod.dart';

class Logger extends ProviderObserver {
  @override
  void didAddProvider(
      ProviderBase provider, Object? value, ProviderContainer container) {
    print(
        '[Provider added] provider: $provider / value: $value / container: $container');
  }

  @override
  void didDisposeProvider(ProviderBase provider, ProviderContainer container) {
    print('[Provider disposed] provider: $provider / container: $container');
  }

  @override
  void didUpdateProvider(ProviderBase provider, Object? previousValue,
      Object? newValue, ProviderContainer container) {
    print(
        '[Provider updated] provider: $provider / $previousValue -> $newValue / container: $container');
  }
}
