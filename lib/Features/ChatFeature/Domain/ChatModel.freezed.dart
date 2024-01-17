// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ChatModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatModel _$ChatModelFromJson(Map<String, dynamic> json) {
  return _ChatModel.fromJson(json);
}

/// @nodoc
mixin _$ChatModel {
  String get firstSideName => throw _privateConstructorUsedError;
  String get firstSideID => throw _privateConstructorUsedError;
  String get secondSideName => throw _privateConstructorUsedError;
  String get secondSideID => throw _privateConstructorUsedError;
  String get chatID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatModelCopyWith<ChatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatModelCopyWith<$Res> {
  factory $ChatModelCopyWith(ChatModel value, $Res Function(ChatModel) then) =
      _$ChatModelCopyWithImpl<$Res, ChatModel>;
  @useResult
  $Res call(
      {String firstSideName,
      String firstSideID,
      String secondSideName,
      String secondSideID,
      String chatID});
}

/// @nodoc
class _$ChatModelCopyWithImpl<$Res, $Val extends ChatModel>
    implements $ChatModelCopyWith<$Res> {
  _$ChatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstSideName = null,
    Object? firstSideID = null,
    Object? secondSideName = null,
    Object? secondSideID = null,
    Object? chatID = null,
  }) {
    return _then(_value.copyWith(
      firstSideName: null == firstSideName
          ? _value.firstSideName
          : firstSideName // ignore: cast_nullable_to_non_nullable
              as String,
      firstSideID: null == firstSideID
          ? _value.firstSideID
          : firstSideID // ignore: cast_nullable_to_non_nullable
              as String,
      secondSideName: null == secondSideName
          ? _value.secondSideName
          : secondSideName // ignore: cast_nullable_to_non_nullable
              as String,
      secondSideID: null == secondSideID
          ? _value.secondSideID
          : secondSideID // ignore: cast_nullable_to_non_nullable
              as String,
      chatID: null == chatID
          ? _value.chatID
          : chatID // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatModelImplCopyWith<$Res>
    implements $ChatModelCopyWith<$Res> {
  factory _$$ChatModelImplCopyWith(
          _$ChatModelImpl value, $Res Function(_$ChatModelImpl) then) =
      __$$ChatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstSideName,
      String firstSideID,
      String secondSideName,
      String secondSideID,
      String chatID});
}

/// @nodoc
class __$$ChatModelImplCopyWithImpl<$Res>
    extends _$ChatModelCopyWithImpl<$Res, _$ChatModelImpl>
    implements _$$ChatModelImplCopyWith<$Res> {
  __$$ChatModelImplCopyWithImpl(
      _$ChatModelImpl _value, $Res Function(_$ChatModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstSideName = null,
    Object? firstSideID = null,
    Object? secondSideName = null,
    Object? secondSideID = null,
    Object? chatID = null,
  }) {
    return _then(_$ChatModelImpl(
      firstSideName: null == firstSideName
          ? _value.firstSideName
          : firstSideName // ignore: cast_nullable_to_non_nullable
              as String,
      firstSideID: null == firstSideID
          ? _value.firstSideID
          : firstSideID // ignore: cast_nullable_to_non_nullable
              as String,
      secondSideName: null == secondSideName
          ? _value.secondSideName
          : secondSideName // ignore: cast_nullable_to_non_nullable
              as String,
      secondSideID: null == secondSideID
          ? _value.secondSideID
          : secondSideID // ignore: cast_nullable_to_non_nullable
              as String,
      chatID: null == chatID
          ? _value.chatID
          : chatID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatModelImpl extends _ChatModel {
  const _$ChatModelImpl(
      {required this.firstSideName,
      required this.firstSideID,
      required this.secondSideName,
      required this.secondSideID,
      required this.chatID})
      : super._();

  factory _$ChatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatModelImplFromJson(json);

  @override
  final String firstSideName;
  @override
  final String firstSideID;
  @override
  final String secondSideName;
  @override
  final String secondSideID;
  @override
  final String chatID;

  @override
  String toString() {
    return 'ChatModel(firstSideName: $firstSideName, firstSideID: $firstSideID, secondSideName: $secondSideName, secondSideID: $secondSideID, chatID: $chatID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatModelImpl &&
            (identical(other.firstSideName, firstSideName) ||
                other.firstSideName == firstSideName) &&
            (identical(other.firstSideID, firstSideID) ||
                other.firstSideID == firstSideID) &&
            (identical(other.secondSideName, secondSideName) ||
                other.secondSideName == secondSideName) &&
            (identical(other.secondSideID, secondSideID) ||
                other.secondSideID == secondSideID) &&
            (identical(other.chatID, chatID) || other.chatID == chatID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstSideName, firstSideID,
      secondSideName, secondSideID, chatID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatModelImplCopyWith<_$ChatModelImpl> get copyWith =>
      __$$ChatModelImplCopyWithImpl<_$ChatModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatModelImplToJson(
      this,
    );
  }
}

abstract class _ChatModel extends ChatModel {
  const factory _ChatModel(
      {required final String firstSideName,
      required final String firstSideID,
      required final String secondSideName,
      required final String secondSideID,
      required final String chatID}) = _$ChatModelImpl;
  const _ChatModel._() : super._();

  factory _ChatModel.fromJson(Map<String, dynamic> json) =
      _$ChatModelImpl.fromJson;

  @override
  String get firstSideName;
  @override
  String get firstSideID;
  @override
  String get secondSideName;
  @override
  String get secondSideID;
  @override
  String get chatID;
  @override
  @JsonKey(ignore: true)
  _$$ChatModelImplCopyWith<_$ChatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
