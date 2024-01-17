// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CompanyEditBusinessEntityController.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$companyEditBusinessEntityControllerHash() =>
    r'af89395588c78406e3a8d953a8504c7420f1dabc';

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

abstract class _$CompanyEditBusinessEntityController
    extends BuildlessAutoDisposeNotifier<CompanyEditBusinessEntity> {
  late final ({String name, String phoneNumber}) data;

  CompanyEditBusinessEntity build(
    ({String name, String phoneNumber}) data,
  );
}

/// See also [CompanyEditBusinessEntityController].
@ProviderFor(CompanyEditBusinessEntityController)
const companyEditBusinessEntityControllerProvider =
    CompanyEditBusinessEntityControllerFamily();

/// See also [CompanyEditBusinessEntityController].
class CompanyEditBusinessEntityControllerFamily
    extends Family<CompanyEditBusinessEntity> {
  /// See also [CompanyEditBusinessEntityController].
  const CompanyEditBusinessEntityControllerFamily();

  /// See also [CompanyEditBusinessEntityController].
  CompanyEditBusinessEntityControllerProvider call(
    ({String name, String phoneNumber}) data,
  ) {
    return CompanyEditBusinessEntityControllerProvider(
      data,
    );
  }

  @override
  CompanyEditBusinessEntityControllerProvider getProviderOverride(
    covariant CompanyEditBusinessEntityControllerProvider provider,
  ) {
    return call(
      provider.data,
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
  String? get name => r'companyEditBusinessEntityControllerProvider';
}

/// See also [CompanyEditBusinessEntityController].
class CompanyEditBusinessEntityControllerProvider
    extends AutoDisposeNotifierProviderImpl<CompanyEditBusinessEntityController,
        CompanyEditBusinessEntity> {
  /// See also [CompanyEditBusinessEntityController].
  CompanyEditBusinessEntityControllerProvider(
    ({String name, String phoneNumber}) data,
  ) : this._internal(
          () => CompanyEditBusinessEntityController()..data = data,
          from: companyEditBusinessEntityControllerProvider,
          name: r'companyEditBusinessEntityControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$companyEditBusinessEntityControllerHash,
          dependencies: CompanyEditBusinessEntityControllerFamily._dependencies,
          allTransitiveDependencies: CompanyEditBusinessEntityControllerFamily
              ._allTransitiveDependencies,
          data: data,
        );

  CompanyEditBusinessEntityControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.data,
  }) : super.internal();

  final ({String name, String phoneNumber}) data;

  @override
  CompanyEditBusinessEntity runNotifierBuild(
    covariant CompanyEditBusinessEntityController notifier,
  ) {
    return notifier.build(
      data,
    );
  }

  @override
  Override overrideWith(CompanyEditBusinessEntityController Function() create) {
    return ProviderOverride(
      origin: this,
      override: CompanyEditBusinessEntityControllerProvider._internal(
        () => create()..data = data,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        data: data,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<CompanyEditBusinessEntityController,
      CompanyEditBusinessEntity> createElement() {
    return _CompanyEditBusinessEntityControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CompanyEditBusinessEntityControllerProvider &&
        other.data == data;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, data.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CompanyEditBusinessEntityControllerRef
    on AutoDisposeNotifierProviderRef<CompanyEditBusinessEntity> {
  /// The parameter `data` of this provider.
  ({String name, String phoneNumber}) get data;
}

class _CompanyEditBusinessEntityControllerProviderElement
    extends AutoDisposeNotifierProviderElement<
        CompanyEditBusinessEntityController,
        CompanyEditBusinessEntity> with CompanyEditBusinessEntityControllerRef {
  _CompanyEditBusinessEntityControllerProviderElement(super.provider);

  @override
  ({String name, String phoneNumber}) get data =>
      (origin as CompanyEditBusinessEntityControllerProvider).data;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
