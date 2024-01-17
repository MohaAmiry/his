// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'InputField.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InputField {
  String get value => throw _privateConstructorUsedError;
  String? get errorMsg => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InputFieldCopyWith<InputField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputFieldCopyWith<$Res> {
  factory $InputFieldCopyWith(
          InputField value, $Res Function(InputField) then) =
      _$InputFieldCopyWithImpl<$Res, InputField>;
  @useResult
  $Res call({String value, String? errorMsg, bool isValid});
}

/// @nodoc
class _$InputFieldCopyWithImpl<$Res, $Val extends InputField>
    implements $InputFieldCopyWith<$Res> {
  _$InputFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? errorMsg = freezed,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputFieldImplCopyWith<$Res>
    implements $InputFieldCopyWith<$Res> {
  factory _$$InputFieldImplCopyWith(
          _$InputFieldImpl value, $Res Function(_$InputFieldImpl) then) =
      __$$InputFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, String? errorMsg, bool isValid});
}

/// @nodoc
class __$$InputFieldImplCopyWithImpl<$Res>
    extends _$InputFieldCopyWithImpl<$Res, _$InputFieldImpl>
    implements _$$InputFieldImplCopyWith<$Res> {
  __$$InputFieldImplCopyWithImpl(
      _$InputFieldImpl _value, $Res Function(_$InputFieldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? errorMsg = freezed,
    Object? isValid = null,
  }) {
    return _then(_$InputFieldImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InputFieldImpl implements _InputField {
  const _$InputFieldImpl(
      {this.value = "", this.errorMsg = null, this.isValid = false});

  @override
  @JsonKey()
  final String value;
  @override
  @JsonKey()
  final String? errorMsg;
  @override
  @JsonKey()
  final bool isValid;

  @override
  String toString() {
    return 'InputField(value: $value, errorMsg: $errorMsg, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputFieldImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, errorMsg, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputFieldImplCopyWith<_$InputFieldImpl> get copyWith =>
      __$$InputFieldImplCopyWithImpl<_$InputFieldImpl>(this, _$identity);
}

abstract class _InputField implements InputField {
  const factory _InputField(
      {final String value,
      final String? errorMsg,
      final bool isValid}) = _$InputFieldImpl;

  @override
  String get value;
  @override
  String? get errorMsg;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$InputFieldImplCopyWith<_$InputFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
