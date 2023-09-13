// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_controller_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tecHash() => r'dc6e34f62509ad40d15092a4d2794d2680c08734';

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
    TextFieldId fieldId, {
    int i = 0,
    int j = 0,
  }) {
    return TecProvider(
      fieldId,
      i: i,
      j: j,
    );
  }

  @override
  TecProvider getProviderOverride(
    covariant TecProvider provider,
  ) {
    return call(
      provider.fieldId,
      i: provider.i,
      j: provider.j,
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
    this.fieldId, {
    this.i = 0,
    this.j = 0,
  }) : super.internal(
          (ref) => tec(
            ref,
            fieldId,
            i: i,
            j: j,
          ),
          from: tecProvider,
          name: r'tecProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$tecHash,
          dependencies: TecFamily._dependencies,
          allTransitiveDependencies: TecFamily._allTransitiveDependencies,
        );

  final TextFieldId fieldId;
  final int i;
  final int j;

  @override
  bool operator ==(Object other) {
    return other is TecProvider &&
        other.fieldId == fieldId &&
        other.i == i &&
        other.j == j;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, fieldId.hashCode);
    hash = _SystemHash.combine(hash, i.hashCode);
    hash = _SystemHash.combine(hash, j.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
