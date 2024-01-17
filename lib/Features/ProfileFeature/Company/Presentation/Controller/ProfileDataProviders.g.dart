// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ProfileDataProviders.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$companyProfileDataHash() =>
    r'23556b374699675082562ef4cbbbb3d5bf46d10b';

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

/// See also [companyProfileData].
@ProviderFor(companyProfileData)
const companyProfileDataProvider = CompanyProfileDataFamily();

/// See also [companyProfileData].
class CompanyProfileDataFamily
    extends Family<AsyncValue<CompanyResponseModel>> {
  /// See also [companyProfileData].
  const CompanyProfileDataFamily();

  /// See also [companyProfileData].
  CompanyProfileDataProvider call(
    String companyID,
  ) {
    return CompanyProfileDataProvider(
      companyID,
    );
  }

  @override
  CompanyProfileDataProvider getProviderOverride(
    covariant CompanyProfileDataProvider provider,
  ) {
    return call(
      provider.companyID,
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
  String? get name => r'companyProfileDataProvider';
}

/// See also [companyProfileData].
class CompanyProfileDataProvider
    extends AutoDisposeFutureProvider<CompanyResponseModel> {
  /// See also [companyProfileData].
  CompanyProfileDataProvider(
    String companyID,
  ) : this._internal(
          (ref) => companyProfileData(
            ref as CompanyProfileDataRef,
            companyID,
          ),
          from: companyProfileDataProvider,
          name: r'companyProfileDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$companyProfileDataHash,
          dependencies: CompanyProfileDataFamily._dependencies,
          allTransitiveDependencies:
              CompanyProfileDataFamily._allTransitiveDependencies,
          companyID: companyID,
        );

  CompanyProfileDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.companyID,
  }) : super.internal();

  final String companyID;

  @override
  Override overrideWith(
    FutureOr<CompanyResponseModel> Function(CompanyProfileDataRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CompanyProfileDataProvider._internal(
        (ref) => create(ref as CompanyProfileDataRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        companyID: companyID,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<CompanyResponseModel> createElement() {
    return _CompanyProfileDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CompanyProfileDataProvider && other.companyID == companyID;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, companyID.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CompanyProfileDataRef
    on AutoDisposeFutureProviderRef<CompanyResponseModel> {
  /// The parameter `companyID` of this provider.
  String get companyID;
}

class _CompanyProfileDataProviderElement
    extends AutoDisposeFutureProviderElement<CompanyResponseModel>
    with CompanyProfileDataRef {
  _CompanyProfileDataProviderElement(super.provider);

  @override
  String get companyID => (origin as CompanyProfileDataProvider).companyID;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
