// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'CustomerEditEntity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerEditEntity {
  MaterialInputField get name => throw _privateConstructorUsedError;
  MaterialInputField get phoneNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerEditEntityCopyWith<CustomerEditEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerEditEntityCopyWith<$Res> {
  factory $CustomerEditEntityCopyWith(
          CustomerEditEntity value, $Res Function(CustomerEditEntity) then) =
      _$CustomerEditEntityCopyWithImpl<$Res, CustomerEditEntity>;
  @useResult
  $Res call({MaterialInputField name, MaterialInputField phoneNumber});

  $MaterialInputFieldCopyWith<$Res> get name;
  $MaterialInputFieldCopyWith<$Res> get phoneNumber;
}

/// @nodoc
class _$CustomerEditEntityCopyWithImpl<$Res, $Val extends CustomerEditEntity>
    implements $CustomerEditEntityCopyWith<$Res> {
  _$CustomerEditEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phoneNumber = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as MaterialInputField,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as MaterialInputField,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MaterialInputFieldCopyWith<$Res> get name {
    return $MaterialInputFieldCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MaterialInputFieldCopyWith<$Res> get phoneNumber {
    return $MaterialInputFieldCopyWith<$Res>(_value.phoneNumber, (value) {
      return _then(_value.copyWith(phoneNumber: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CustomerEditEntityImplCopyWith<$Res>
    implements $CustomerEditEntityCopyWith<$Res> {
  factory _$$CustomerEditEntityImplCopyWith(_$CustomerEditEntityImpl value,
          $Res Function(_$CustomerEditEntityImpl) then) =
      __$$CustomerEditEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MaterialInputField name, MaterialInputField phoneNumber});

  @override
  $MaterialInputFieldCopyWith<$Res> get name;
  @override
  $MaterialInputFieldCopyWith<$Res> get phoneNumber;
}

/// @nodoc
class __$$CustomerEditEntityImplCopyWithImpl<$Res>
    extends _$CustomerEditEntityCopyWithImpl<$Res, _$CustomerEditEntityImpl>
    implements _$$CustomerEditEntityImplCopyWith<$Res> {
  __$$CustomerEditEntityImplCopyWithImpl(_$CustomerEditEntityImpl _value,
      $Res Function(_$CustomerEditEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$CustomerEditEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as MaterialInputField,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as MaterialInputField,
    ));
  }
}

/// @nodoc

class _$CustomerEditEntityImpl extends _CustomerEditEntity {
  const _$CustomerEditEntityImpl(
      {required this.name, required this.phoneNumber})
      : super._();

  @override
  final MaterialInputField name;
  @override
  final MaterialInputField phoneNumber;

  @override
  String toString() {
    return 'CustomerEditEntity(name: $name, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerEditEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerEditEntityImplCopyWith<_$CustomerEditEntityImpl> get copyWith =>
      __$$CustomerEditEntityImplCopyWithImpl<_$CustomerEditEntityImpl>(
          this, _$identity);
}

abstract class _CustomerEditEntity extends CustomerEditEntity {
  const factory _CustomerEditEntity(
          {required final MaterialInputField name,
          required final MaterialInputField phoneNumber}) =
      _$CustomerEditEntityImpl;
  const _CustomerEditEntity._() : super._();

  @override
  MaterialInputField get name;
  @override
  MaterialInputField get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$CustomerEditEntityImplCopyWith<_$CustomerEditEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
