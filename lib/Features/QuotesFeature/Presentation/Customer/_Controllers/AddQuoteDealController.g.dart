// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AddQuoteDealController.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$addQuoteDealControllerHash() =>
    r'06ff633fde81e4288faa4cb19415c0663d1dd506';

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

abstract class _$AddQuoteDealController
    extends BuildlessAutoDisposeAsyncNotifier<List<OfferModel>> {
  late final RequestModel requestModel;

  FutureOr<List<OfferModel>> build(
    RequestModel requestModel,
  );
}

/// See also [AddQuoteDealController].
@ProviderFor(AddQuoteDealController)
const addQuoteDealControllerProvider = AddQuoteDealControllerFamily();

/// See also [AddQuoteDealController].
class AddQuoteDealControllerFamily
    extends Family<AsyncValue<List<OfferModel>>> {
  /// See also [AddQuoteDealController].
  const AddQuoteDealControllerFamily();

  /// See also [AddQuoteDealController].
  AddQuoteDealControllerProvider call(
    RequestModel requestModel,
  ) {
    return AddQuoteDealControllerProvider(
      requestModel,
    );
  }

  @override
  AddQuoteDealControllerProvider getProviderOverride(
    covariant AddQuoteDealControllerProvider provider,
  ) {
    return call(
      provider.requestModel,
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
  String? get name => r'addQuoteDealControllerProvider';
}

/// See also [AddQuoteDealController].
class AddQuoteDealControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<AddQuoteDealController,
        List<OfferModel>> {
  /// See also [AddQuoteDealController].
  AddQuoteDealControllerProvider(
    RequestModel requestModel,
  ) : this._internal(
          () => AddQuoteDealController()..requestModel = requestModel,
          from: addQuoteDealControllerProvider,
          name: r'addQuoteDealControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addQuoteDealControllerHash,
          dependencies: AddQuoteDealControllerFamily._dependencies,
          allTransitiveDependencies:
              AddQuoteDealControllerFamily._allTransitiveDependencies,
          requestModel: requestModel,
        );

  AddQuoteDealControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.requestModel,
  }) : super.internal();

  final RequestModel requestModel;

  @override
  FutureOr<List<OfferModel>> runNotifierBuild(
    covariant AddQuoteDealController notifier,
  ) {
    return notifier.build(
      requestModel,
    );
  }

  @override
  Override overrideWith(AddQuoteDealController Function() create) {
    return ProviderOverride(
      origin: this,
      override: AddQuoteDealControllerProvider._internal(
        () => create()..requestModel = requestModel,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        requestModel: requestModel,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<AddQuoteDealController,
      List<OfferModel>> createElement() {
    return _AddQuoteDealControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddQuoteDealControllerProvider &&
        other.requestModel == requestModel;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, requestModel.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AddQuoteDealControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<OfferModel>> {
  /// The parameter `requestModel` of this provider.
  RequestModel get requestModel;
}

class _AddQuoteDealControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<AddQuoteDealController,
        List<OfferModel>> with AddQuoteDealControllerRef {
  _AddQuoteDealControllerProviderElement(super.provider);

  @override
  RequestModel get requestModel =>
      (origin as AddQuoteDealControllerProvider).requestModel;
}

String _$dealSelectionControllerHash() =>
    r'5c241c3d8ff788bd3190a0f86a4c97135e43a4f5';

/// See also [DealSelectionController].
@ProviderFor(DealSelectionController)
final dealSelectionControllerProvider =
    AutoDisposeAsyncNotifierProvider<DealSelectionController, bool?>.internal(
  DealSelectionController.new,
  name: r'dealSelectionControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$dealSelectionControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$DealSelectionController = AutoDisposeAsyncNotifier<bool?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
