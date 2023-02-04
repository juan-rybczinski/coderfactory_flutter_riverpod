// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_generation_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String _$greetingHash() => r'4f40131d8c5361fe85cc6e2bffb14c8048c5b02d';

/// See also [greeting].
final greetingProvider = AutoDisposeProvider<String>(
  greeting,
  name: r'greetingProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$greetingHash,
);
typedef GreetingRef = AutoDisposeProviderRef<String>;
String _$greeting2Hash() => r'cfd2d2d115b6c1a1e93eebc84d6142a38e37e3cd';

/// See also [greeting2].
final greeting2Provider = AutoDisposeFutureProvider<String>(
  greeting2,
  name: r'greeting2Provider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$greeting2Hash,
);
typedef Greeting2Ref = AutoDisposeFutureProviderRef<String>;
String _$greeting3Hash() => r'c13ff21cfec2524b0ff8e476986191b5c4b0c21c';

/// See also [greeting3].
final greeting3Provider = FutureProvider<String>(
  greeting3,
  name: r'greeting3Provider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$greeting3Hash,
);
typedef Greeting3Ref = FutureProviderRef<String>;
String _$multipleHash() => r'ca9bea088167afabecf19e4c8ad59e6e556170d7';

/// See also [multiple].
class MultipleProvider extends AutoDisposeProvider<int> {
  MultipleProvider({
    required this.number1,
    required this.number2,
  }) : super(
          (ref) => multiple(
            ref,
            number1: number1,
            number2: number2,
          ),
          from: multipleProvider,
          name: r'multipleProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$multipleHash,
        );

  final int number1;
  final int number2;

  @override
  bool operator ==(Object other) {
    return other is MultipleProvider &&
        other.number1 == number1 &&
        other.number2 == number2;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, number1.hashCode);
    hash = _SystemHash.combine(hash, number2.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef MultipleRef = AutoDisposeProviderRef<int>;

/// See also [multiple].
final multipleProvider = MultipleFamily();

class MultipleFamily extends Family<int> {
  MultipleFamily();

  MultipleProvider call({
    required int number1,
    required int number2,
  }) {
    return MultipleProvider(
      number1: number1,
      number2: number2,
    );
  }

  @override
  AutoDisposeProvider<int> getProviderOverride(
    covariant MultipleProvider provider,
  ) {
    return call(
      number1: provider.number1,
      number2: provider.number2,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'multipleProvider';
}
