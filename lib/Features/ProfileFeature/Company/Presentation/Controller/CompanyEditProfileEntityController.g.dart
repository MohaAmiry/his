// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CompanyEditProfileEntityController.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$companyEditProfileEntityControllerHash() =>
    r'376562f6a5e8c42c2cbb8d76cf57b66a46a09e4e';

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

abstract class _$CompanyEditProfileEntityController
    extends BuildlessAutoDisposeNotifier<Map<CompanyService, ServiceEntity>> {
  late final Map<CompanyService, ServiceModel> val;

  Map<CompanyService, ServiceEntity> build(
    Map<CompanyService, ServiceModel> val,
  );
}

/// See also [CompanyEditProfileEntityController].
@ProviderFor(CompanyEditProfileEntityController)
const companyEditProfileEntityControllerProvider =
    CompanyEditProfileEntityControllerFamily();

/// See also [CompanyEditProfileEntityController].
class CompanyEditProfileEntityControllerFamily
    extends Family<Map<CompanyService, ServiceEntity>> {
  /// See also [CompanyEditProfileEntityController].
  const CompanyEditProfileEntityControllerFamily();

  /// See also [CompanyEditProfileEntityController].
  CompanyEditProfileEntityControllerProvider call(
    Map<CompanyService, ServiceModel> val,
  ) {
    return CompanyEditProfileEntityControllerProvider(
      val,
    );
  }

  @override
  CompanyEditProfileEntityControllerProvider getProviderOverride(
    covariant CompanyEditProfileEntityControllerProvider provider,
  ) {
    return call(
      provider.val,
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
  String? get name => r'companyEditProfileEntityControllerProvider';
}

/// See also [CompanyEditProfileEntityController].
class CompanyEditProfileEntityControllerProvider
    extends AutoDisposeNotifierProviderImpl<CompanyEditProfileEntityController,
        Map<CompanyService, ServiceEntity>> {
  /// See also [CompanyEditProfileEntityController].
  CompanyEditProfileEntityControllerProvider(
    Map<CompanyService, ServiceModel> val,
  ) : this._internal(
          () => CompanyEditProfileEntityController()..val = val,
          from: companyEditProfileEntityControllerProvider,
          name: r'companyEditProfileEntityControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$companyEditProfileEntityControllerHash,
          dependencies: CompanyEditProfileEntityControllerFamily._dependencies,
          allTransitiveDependencies: CompanyEditProfileEntityControllerFamily
              ._allTransitiveDependencies,
          val: val,
        );

  CompanyEditProfileEntityControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.val,
  }) : super.internal();

  final Map<CompanyService, ServiceModel> val;

  @override
  Map<CompanyService, ServiceEntity> runNotifierBuild(
    covariant CompanyEditProfileEntityController notifier,
  ) {
    return notifier.build(
      val,
    );
  }

  @override
  Override overrideWith(CompanyEditProfileEntityController Function() create) {
    return ProviderOverride(
      origin: this,
      override: CompanyEditProfileEntityControllerProvider._internal(
        () => create()..val = val,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        val: val,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<CompanyEditProfileEntityController,
      Map<CompanyService, ServiceEntity>> createElement() {
    return _CompanyEditProfileEntityControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CompanyEditProfileEntityControllerProvider &&
        other.val == val;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, val.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CompanyEditProfileEntityControllerRef
    on AutoDisposeNotifierProviderRef<Map<CompanyService, ServiceEntity>> {
  /// The parameter `val` of this provider.
  Map<CompanyService, ServiceModel> get val;
}

class _CompanyEditProfileEntityControllerProviderElement
    extends AutoDisposeNotifierProviderElement<
        CompanyEditProfileEntityController, Map<CompanyService, ServiceEntity>>
    with CompanyEditProfileEntityControllerRef {
  _CompanyEditProfileEntityControllerProviderElement(super.provider);

  @override
  Map<CompanyService, ServiceModel> get val =>
      (origin as CompanyEditProfileEntityControllerProvider).val;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
