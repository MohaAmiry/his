// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SvgProvider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$svgLoaderHash() => r'4d663b8d31c28293c74fd947d87b97d12d167c12';

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

abstract class _$SvgLoader extends BuildlessAutoDisposeNotifier<SvgPicture> {
  late final String path;
  late final bool colored;
  late final bool red;

  SvgPicture build(
    String path, {
    bool colored = false,
    bool red = false,
  });
}

/// See also [SvgLoader].
@ProviderFor(SvgLoader)
const svgLoaderProvider = SvgLoaderFamily();

/// See also [SvgLoader].
class SvgLoaderFamily extends Family<SvgPicture> {
  /// See also [SvgLoader].
  const SvgLoaderFamily();

  /// See also [SvgLoader].
  SvgLoaderProvider call(
    String path, {
    bool colored = false,
    bool red = false,
  }) {
    return SvgLoaderProvider(
      path,
      colored: colored,
      red: red,
    );
  }

  @override
  SvgLoaderProvider getProviderOverride(
    covariant SvgLoaderProvider provider,
  ) {
    return call(
      provider.path,
      colored: provider.colored,
      red: provider.red,
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
  String? get name => r'svgLoaderProvider';
}

/// See also [SvgLoader].
class SvgLoaderProvider
    extends AutoDisposeNotifierProviderImpl<SvgLoader, SvgPicture> {
  /// See also [SvgLoader].
  SvgLoaderProvider(
    String path, {
    bool colored = false,
    bool red = false,
  }) : this._internal(
          () => SvgLoader()
            ..path = path
            ..colored = colored
            ..red = red,
          from: svgLoaderProvider,
          name: r'svgLoaderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$svgLoaderHash,
          dependencies: SvgLoaderFamily._dependencies,
          allTransitiveDependencies: SvgLoaderFamily._allTransitiveDependencies,
          path: path,
          colored: colored,
          red: red,
        );

  SvgLoaderProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.path,
    required this.colored,
    required this.red,
  }) : super.internal();

  final String path;
  final bool colored;
  final bool red;

  @override
  SvgPicture runNotifierBuild(
    covariant SvgLoader notifier,
  ) {
    return notifier.build(
      path,
      colored: colored,
      red: red,
    );
  }

  @override
  Override overrideWith(SvgLoader Function() create) {
    return ProviderOverride(
      origin: this,
      override: SvgLoaderProvider._internal(
        () => create()
          ..path = path
          ..colored = colored
          ..red = red,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        path: path,
        colored: colored,
        red: red,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<SvgLoader, SvgPicture> createElement() {
    return _SvgLoaderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SvgLoaderProvider &&
        other.path == path &&
        other.colored == colored &&
        other.red == red;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, path.hashCode);
    hash = _SystemHash.combine(hash, colored.hashCode);
    hash = _SystemHash.combine(hash, red.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SvgLoaderRef on AutoDisposeNotifierProviderRef<SvgPicture> {
  /// The parameter `path` of this provider.
  String get path;

  /// The parameter `colored` of this provider.
  bool get colored;

  /// The parameter `red` of this provider.
  bool get red;
}

class _SvgLoaderProviderElement
    extends AutoDisposeNotifierProviderElement<SvgLoader, SvgPicture>
    with SvgLoaderRef {
  _SvgLoaderProviderElement(super.provider);

  @override
  String get path => (origin as SvgLoaderProvider).path;
  @override
  bool get colored => (origin as SvgLoaderProvider).colored;
  @override
  bool get red => (origin as SvgLoaderProvider).red;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
