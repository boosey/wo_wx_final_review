// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobs_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$jobsRepositoryHash() => r'6a99aa53c7d6230957922055be359f3cce9b9b6c';

/// See also [jobsRepository].
@ProviderFor(jobsRepository)
final jobsRepositoryProvider = AutoDisposeProvider<JobsRepository>.internal(
  jobsRepository,
  name: r'jobsRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$jobsRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef JobsRepositoryRef = AutoDisposeProviderRef<JobsRepository>;
String _$jobHash() => r'547b913d14e367ff7a0c19fcd5b21f7a2c141b12';

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

typedef JobRef = AutoDisposeFutureProviderRef<Job>;

/// See also [job].
@ProviderFor(job)
const jobProvider = JobFamily();

/// See also [job].
class JobFamily extends Family<AsyncValue<Job>> {
  /// See also [job].
  const JobFamily();

  /// See also [job].
  JobProvider call({
    required String jobId,
  }) {
    return JobProvider(
      jobId: jobId,
    );
  }

  @override
  JobProvider getProviderOverride(
    covariant JobProvider provider,
  ) {
    return call(
      jobId: provider.jobId,
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
  String? get name => r'jobProvider';
}

/// See also [job].
class JobProvider extends AutoDisposeFutureProvider<Job> {
  /// See also [job].
  JobProvider({
    required this.jobId,
  }) : super.internal(
          (ref) => job(
            ref,
            jobId: jobId,
          ),
          from: jobProvider,
          name: r'jobProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$jobHash,
          dependencies: JobFamily._dependencies,
          allTransitiveDependencies: JobFamily._allTransitiveDependencies,
        );

  final String jobId;

  @override
  bool operator ==(Object other) {
    return other is JobProvider && other.jobId == jobId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, jobId.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
