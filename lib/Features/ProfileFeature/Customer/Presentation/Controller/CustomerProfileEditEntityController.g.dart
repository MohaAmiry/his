// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CustomerProfileEditEntityController.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$customerProfileEditEntityControllerHash() =>
    r'f5805cc126dec8911339a002043a871fd9a1891d';

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

abstract class _$CustomerProfileEditEntityController
    extends BuildlessAutoDisposeNotifier<CustomerEditEntity> {
  late final ({String name, String phoneNumber}) editEntity;

  CustomerEditEntity build(
    ({String name, String phoneNumber}) editEntity,
  );
}

/// See also [CustomerProfileEditEntityController].
@ProviderFor(CustomerProfileEditEntityController)
const customerProfileEditEntityControllerProvider =
    CustomerProfileEditEntityControllerFamily();

/// See also [CustomerProfileEditEntityController].
class CustomerProfileEditEntityControllerFamily
    extends Family<CustomerEditEntity> {
  /// See also [CustomerProfileEditEntityController].
  const CustomerProfileEditEntityControllerFamily();

  /// See also [CustomerProfileEditEntityController].
  CustomerProfileEditEntityControllerProvider call(
    ({String name, String phoneNumber}) editEntity,
  ) {
    return CustomerProfileEditEntityControllerProvider(
      editEntity,
    );
  }

  @override
  CustomerProfileEditEntityControllerProvider getProviderOverride(
    covariant CustomerProfileEditEntityControllerProvider provider,
  ) {
    return call(
      provider.editEntity,
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
  String? get name => r'customerProfileEditEntityControllerProvider';
}

/// See also [CustomerProfileEditEntityController].
class CustomerProfileEditEntityControllerProvider
    extends AutoDisposeNotifierProviderImpl<CustomerProfileEditEntityController,
        CustomerEditEntity> {
  /// See also [CustomerProfileEditEntityController].
  CustomerProfileEditEntityControllerProvider(
    ({String name, String phoneNumber}) editEntity,
  ) : this._internal(
          () => CustomerProfileEditEntityController()..editEntity = editEntity,
          from: customerProfileEditEntityControllerProvider,
          name: r'customerProfileEditEntityControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$customerProfileEditEntityControllerHash,
          dependencies: CustomerProfileEditEntityControllerFamily._dependencies,
          allTransitiveDependencies: CustomerProfileEditEntityControllerFamily
              ._allTransitiveDependencies,
          editEntity: editEntity,
        );

  CustomerProfileEditEntityControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.editEntity,
  }) : super.internal();

  final ({String name, String phoneNumber}) editEntity;

  @override
  CustomerEditEntity runNotifierBuild(
    covariant CustomerProfileEditEntityController notifier,
  ) {
    return notifier.build(
      editEntity,
    );
  }

  @override
  Override overrideWith(CustomerProfileEditEntityController Function() create) {
    return ProviderOverride(
      origin: this,
      override: CustomerProfileEditEntityControllerProvider._internal(
        () => create()..editEntity = editEntity,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        editEntity: editEntity,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<CustomerProfileEditEntityController,
      CustomerEditEntity> createElement() {
    return _CustomerProfileEditEntityControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CustomerProfileEditEntityControllerProvider &&
        other.editEntity == editEntity;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, editEntity.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CustomerProfileEditEntityControllerRef
    on AutoDisposeNotifierProviderRef<CustomerEditEntity> {
  /// The parameter `editEntity` of this provider.
  ({String name, String phoneNumber}) get editEntity;
}

class _CustomerProfileEditEntityControllerProviderElement
    extends AutoDisposeNotifierProviderElement<
        CustomerProfileEditEntityController,
        CustomerEditEntity> with CustomerProfileEditEntityControllerRef {
  _CustomerProfileEditEntityControllerProviderElement(super.provider);

  @override
  ({String name, String phoneNumber}) get editEntity =>
      (origin as CustomerProfileEditEntityControllerProvider).editEntity;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
