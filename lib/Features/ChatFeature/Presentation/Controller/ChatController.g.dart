// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ChatController.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatControllerHash() => r'e0b95a3967af0aff2539fce1c2d2b59d96380d7f';

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

abstract class _$ChatController
    extends BuildlessAutoDisposeAsyncNotifier<ChatModel> {
  late final String otherID;

  FutureOr<ChatModel> build(
    String otherID,
  );
}

/// See also [ChatController].
@ProviderFor(ChatController)
const chatControllerProvider = ChatControllerFamily();

/// See also [ChatController].
class ChatControllerFamily extends Family<AsyncValue<ChatModel>> {
  /// See also [ChatController].
  const ChatControllerFamily();

  /// See also [ChatController].
  ChatControllerProvider call(
    String otherID,
  ) {
    return ChatControllerProvider(
      otherID,
    );
  }

  @override
  ChatControllerProvider getProviderOverride(
    covariant ChatControllerProvider provider,
  ) {
    return call(
      provider.otherID,
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
  String? get name => r'chatControllerProvider';
}

/// See also [ChatController].
class ChatControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ChatController, ChatModel> {
  /// See also [ChatController].
  ChatControllerProvider(
    String otherID,
  ) : this._internal(
          () => ChatController()..otherID = otherID,
          from: chatControllerProvider,
          name: r'chatControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$chatControllerHash,
          dependencies: ChatControllerFamily._dependencies,
          allTransitiveDependencies:
              ChatControllerFamily._allTransitiveDependencies,
          otherID: otherID,
        );

  ChatControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.otherID,
  }) : super.internal();

  final String otherID;

  @override
  FutureOr<ChatModel> runNotifierBuild(
    covariant ChatController notifier,
  ) {
    return notifier.build(
      otherID,
    );
  }

  @override
  Override overrideWith(ChatController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChatControllerProvider._internal(
        () => create()..otherID = otherID,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        otherID: otherID,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ChatController, ChatModel>
      createElement() {
    return _ChatControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatControllerProvider && other.otherID == otherID;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, otherID.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ChatControllerRef on AutoDisposeAsyncNotifierProviderRef<ChatModel> {
  /// The parameter `otherID` of this provider.
  String get otherID;
}

class _ChatControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ChatController, ChatModel>
    with ChatControllerRef {
  _ChatControllerProviderElement(super.provider);

  @override
  String get otherID => (origin as ChatControllerProvider).otherID;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
