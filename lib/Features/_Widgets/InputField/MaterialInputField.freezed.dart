// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'MaterialInputField.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MaterialInputField {
  TextEditingController get value => throw _privateConstructorUsedError;
  String? get errorMsg => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MaterialInputFieldCopyWith<MaterialInputField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialInputFieldCopyWith<$Res> {
  factory $MaterialInputFieldCopyWith(
          MaterialInputField value, $Res Function(MaterialInputField) then) =
      _$MaterialInputFieldCopyWithImpl<$Res, MaterialInputField>;
  @useResult
  $Res call({TextEditingController value, String? errorMsg, bool isValid});
}

/// @nodoc
class _$MaterialInputFieldCopyWithImpl<$Res, $Val extends MaterialInputField>
    implements $MaterialInputFieldCopyWith<$Res> {
  _$MaterialInputFieldCopyWithImpl(this._value, this._then);

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
              as TextEditingController,
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
abstract class _$$MaterialInputFieldImplCopyWith<$Res>
    implements $MaterialInputFieldCopyWith<$Res> {
  factory _$$MaterialInputFieldImplCopyWith(_$MaterialInputFieldImpl value,
          $Res Function(_$MaterialInputFieldImpl) then) =
      __$$MaterialInputFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TextEditingController value, String? errorMsg, bool isValid});
}

/// @nodoc
class __$$MaterialInputFieldImplCopyWithImpl<$Res>
    extends _$MaterialInputFieldCopyWithImpl<$Res, _$MaterialInputFieldImpl>
    implements _$$MaterialInputFieldImplCopyWith<$Res> {
  __$$MaterialInputFieldImplCopyWithImpl(_$MaterialInputFieldImpl _value,
      $Res Function(_$MaterialInputFieldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? errorMsg = freezed,
    Object? isValid = null,
  }) {
    return _then(_$MaterialInputFieldImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
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

class _$MaterialInputFieldImpl extends _MaterialInputField {
  const _$MaterialInputFieldImpl(
      {required this.value, this.errorMsg = null, this.isValid = false})
      : super._();

  @override
  final TextEditingController value;
  @override
  @JsonKey()
  final String? errorMsg;
  @override
  @JsonKey()
  final bool isValid;

  @override
  String toString() {
    return 'MaterialInputField(value: $value, errorMsg: $errorMsg, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialInputFieldImpl &&
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
  _$$MaterialInputFieldImplCopyWith<_$MaterialInputFieldImpl> get copyWith =>
      __$$MaterialInputFieldImplCopyWithImpl<_$MaterialInputFieldImpl>(
          this, _$identity);
}

abstract class _MaterialInputField extends MaterialInputField {
  const factory _MaterialInputField(
      {required final TextEditingController value,
      final String? errorMsg,
      final bool isValid}) = _$MaterialInputFieldImpl;
  const _MaterialInputField._() : super._();

  @override
  TextEditingController get value;
  @override
  String? get errorMsg;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$MaterialInputFieldImplCopyWith<_$MaterialInputFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
