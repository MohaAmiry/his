// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'CompanyEditBusinessEntity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CompanyEditBusinessEntity {
  MaterialInputField get name => throw _privateConstructorUsedError;
  MaterialInputField get phoneNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompanyEditBusinessEntityCopyWith<CompanyEditBusinessEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyEditBusinessEntityCopyWith<$Res> {
  factory $CompanyEditBusinessEntityCopyWith(CompanyEditBusinessEntity value,
          $Res Function(CompanyEditBusinessEntity) then) =
      _$CompanyEditBusinessEntityCopyWithImpl<$Res, CompanyEditBusinessEntity>;
  @useResult
  $Res call({MaterialInputField name, MaterialInputField phoneNumber});

  $MaterialInputFieldCopyWith<$Res> get name;
  $MaterialInputFieldCopyWith<$Res> get phoneNumber;
}

/// @nodoc
class _$CompanyEditBusinessEntityCopyWithImpl<$Res,
        $Val extends CompanyEditBusinessEntity>
    implements $CompanyEditBusinessEntityCopyWith<$Res> {
  _$CompanyEditBusinessEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$CompanyEditBusinessEntityImplCopyWith<$Res>
    implements $CompanyEditBusinessEntityCopyWith<$Res> {
  factory _$$CompanyEditBusinessEntityImplCopyWith(
          _$CompanyEditBusinessEntityImpl value,
          $Res Function(_$CompanyEditBusinessEntityImpl) then) =
      __$$CompanyEditBusinessEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MaterialInputField name, MaterialInputField phoneNumber});

  @override
  $MaterialInputFieldCopyWith<$Res> get name;
  @override
  $MaterialInputFieldCopyWith<$Res> get phoneNumber;
}

/// @nodoc
class __$$CompanyEditBusinessEntityImplCopyWithImpl<$Res>
    extends _$CompanyEditBusinessEntityCopyWithImpl<$Res,
        _$CompanyEditBusinessEntityImpl>
    implements _$$CompanyEditBusinessEntityImplCopyWith<$Res> {
  __$$CompanyEditBusinessEntityImplCopyWithImpl(
      _$CompanyEditBusinessEntityImpl _value,
      $Res Function(_$CompanyEditBusinessEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$CompanyEditBusinessEntityImpl(
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

class _$CompanyEditBusinessEntityImpl extends _CompanyEditBusinessEntity {
  const _$CompanyEditBusinessEntityImpl(
      {required this.name, required this.phoneNumber})
      : super._();

  @override
  final MaterialInputField name;
  @override
  final MaterialInputField phoneNumber;

  @override
  String toString() {
    return 'CompanyEditBusinessEntity(name: $name, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyEditBusinessEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyEditBusinessEntityImplCopyWith<_$CompanyEditBusinessEntityImpl>
      get copyWith => __$$CompanyEditBusinessEntityImplCopyWithImpl<
          _$CompanyEditBusinessEntityImpl>(this, _$identity);
}

abstract class _CompanyEditBusinessEntity extends CompanyEditBusinessEntity {
  const factory _CompanyEditBusinessEntity(
          {required final MaterialInputField name,
          required final MaterialInputField phoneNumber}) =
      _$CompanyEditBusinessEntityImpl;
  const _CompanyEditBusinessEntity._() : super._();

  @override
  MaterialInputField get name;
  @override
  MaterialInputField get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$CompanyEditBusinessEntityImplCopyWith<_$CompanyEditBusinessEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
