// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_controller_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tecHash() => r'1ae0b493c56dfd49490e5b45ba0b16c9381f2aaf';

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

typedef TecRef = AutoDisposeProviderRef<TextEditingController>;

/// See also [tec].
@ProviderFor(tec)
const tecProvider = TecFamily();

/// See also [tec].
class TecFamily extends Family<TextEditingController> {
  /// See also [tec].
  const TecFamily();

  /// See also [tec].
  TecProvider call(
    String fieldId,
  ) {
    return TecProvider(
      fieldId,
    );
  }

  @override
  TecProvider getProviderOverride(
    covariant TecProvider provider,
  ) {
    return call(
      provider.fieldId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'tecProvider';
}

/// See also [tec].
class TecProvider extends AutoDisposeProvider<TextEditingController> {
  /// See also [tec].
  TecProvider(
    this.fieldId,
  ) : super.internal(
          (ref) => tec(
            ref,
            fieldId,
          ),
          from: tecProvider,
          name: r'tecProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$tecHash,
          dependencies: TecFamily._dependencies,
          allTransitiveDependencies: TecFamily._allTransitiveDependencies,
        );

  final String fieldId;

  @override
  bool operator ==(Object other) {
    return other is TecProvider && other.fieldId == fieldId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, fieldId.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
