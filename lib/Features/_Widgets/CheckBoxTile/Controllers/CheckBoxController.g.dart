// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CheckBoxController.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$checkBoxControllerHash() =>
    r'b6d8dd32bcbeab052d2c5d37b6dfef28f2effd58';

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

abstract class _$CheckBoxController
    extends BuildlessAutoDisposeNotifier<IList<IList<CheckBoxEntity>>> {
  late final IList<IList<({bool selection, String text})>> itemsToSelect;

  IList<IList<CheckBoxEntity>> build(
    IList<IList<({bool selection, String text})>> itemsToSelect,
  );
}

/// See also [CheckBoxController].
@ProviderFor(CheckBoxController)
const checkBoxControllerProvider = CheckBoxControllerFamily();

/// See also [CheckBoxController].
class CheckBoxControllerFamily extends Family<IList<IList<CheckBoxEntity>>> {
  /// See also [CheckBoxController].
  const CheckBoxControllerFamily();

  /// See also [CheckBoxController].
  CheckBoxControllerProvider call(
    IList<IList<({bool selection, String text})>> itemsToSelect,
  ) {
    return CheckBoxControllerProvider(
      itemsToSelect,
    );
  }

  @override
  CheckBoxControllerProvider getProviderOverride(
    covariant CheckBoxControllerProvider provider,
  ) {
    return call(
      provider.itemsToSelect,
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
  String? get name => r'checkBoxControllerProvider';
}

/// See also [CheckBoxController].
class CheckBoxControllerProvider extends AutoDisposeNotifierProviderImpl<
    CheckBoxController, IList<IList<CheckBoxEntity>>> {
  /// See also [CheckBoxController].
  CheckBoxControllerProvider(
    IList<IList<({bool selection, String text})>> itemsToSelect,
  ) : this._internal(
          () => CheckBoxController()..itemsToSelect = itemsToSelect,
          from: checkBoxControllerProvider,
          name: r'checkBoxControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$checkBoxControllerHash,
          dependencies: CheckBoxControllerFamily._dependencies,
          allTransitiveDependencies:
              CheckBoxControllerFamily._allTransitiveDependencies,
          itemsToSelect: itemsToSelect,
        );

  CheckBoxControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.itemsToSelect,
  }) : super.internal();

  final IList<IList<({bool selection, String text})>> itemsToSelect;

  @override
  IList<IList<CheckBoxEntity>> runNotifierBuild(
    covariant CheckBoxController notifier,
  ) {
    return notifier.build(
      itemsToSelect,
    );
  }

  @override
  Override overrideWith(CheckBoxController Function() create) {
    return ProviderOverride(
      origin: this,
      override: CheckBoxControllerProvider._internal(
        () => create()..itemsToSelect = itemsToSelect,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        itemsToSelect: itemsToSelect,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<CheckBoxController,
      IList<IList<CheckBoxEntity>>> createElement() {
    return _CheckBoxControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CheckBoxControllerProvider &&
        other.itemsToSelect == itemsToSelect;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, itemsToSelect.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CheckBoxControllerRef
    on AutoDisposeNotifierProviderRef<IList<IList<CheckBoxEntity>>> {
  /// The parameter `itemsToSelect` of this provider.
  IList<IList<({bool selection, String text})>> get itemsToSelect;
}

class _CheckBoxControllerProviderElement
    extends AutoDisposeNotifierProviderElement<CheckBoxController,
        IList<IList<CheckBoxEntity>>> with CheckBoxControllerRef {
  _CheckBoxControllerProviderElement(super.provider);

  @override
  IList<IList<({bool selection, String text})>> get itemsToSelect =>
      (origin as CheckBoxControllerProvider).itemsToSelect;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
