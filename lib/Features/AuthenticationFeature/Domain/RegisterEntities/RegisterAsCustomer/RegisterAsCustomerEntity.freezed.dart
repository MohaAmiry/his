// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'RegisterAsCustomerEntity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterAsCustomerEntity {
  InputField get name => throw _privateConstructorUsedError;
  InputField get email => throw _privateConstructorUsedError;
  InputField get phoneNumber => throw _privateConstructorUsedError;
  InputField get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterAsCustomerEntityCopyWith<RegisterAsCustomerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterAsCustomerEntityCopyWith<$Res> {
  factory $RegisterAsCustomerEntityCopyWith(RegisterAsCustomerEntity value,
          $Res Function(RegisterAsCustomerEntity) then) =
      _$RegisterAsCustomerEntityCopyWithImpl<$Res, RegisterAsCustomerEntity>;
  @useResult
  $Res call(
      {InputField name,
      InputField email,
      InputField phoneNumber,
      InputField password});

  $InputFieldCopyWith<$Res> get name;
  $InputFieldCopyWith<$Res> get email;
  $InputFieldCopyWith<$Res> get phoneNumber;
  $InputFieldCopyWith<$Res> get password;
}

/// @nodoc
class _$RegisterAsCustomerEntityCopyWithImpl<$Res,
        $Val extends RegisterAsCustomerEntity>
    implements $RegisterAsCustomerEntityCopyWith<$Res> {
  _$RegisterAsCustomerEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as InputField,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as InputField,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as InputField,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as InputField,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InputFieldCopyWith<$Res> get name {
    return $InputFieldCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InputFieldCopyWith<$Res> get email {
    return $InputFieldCopyWith<$Res>(_value.email, (value) {
      return _then(_value.copyWith(email: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InputFieldCopyWith<$Res> get phoneNumber {
    return $InputFieldCopyWith<$Res>(_value.phoneNumber, (value) {
      return _then(_value.copyWith(phoneNumber: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InputFieldCopyWith<$Res> get password {
    return $InputFieldCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterAsCustomerEntityImplCopyWith<$Res>
    implements $RegisterAsCustomerEntityCopyWith<$Res> {
  factory _$$RegisterAsCustomerEntityImplCopyWith(
          _$RegisterAsCustomerEntityImpl value,
          $Res Function(_$RegisterAsCustomerEntityImpl) then) =
      __$$RegisterAsCustomerEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InputField name,
      InputField email,
      InputField phoneNumber,
      InputField password});

  @override
  $InputFieldCopyWith<$Res> get name;
  @override
  $InputFieldCopyWith<$Res> get email;
  @override
  $InputFieldCopyWith<$Res> get phoneNumber;
  @override
  $InputFieldCopyWith<$Res> get password;
}

/// @nodoc
class __$$RegisterAsCustomerEntityImplCopyWithImpl<$Res>
    extends _$RegisterAsCustomerEntityCopyWithImpl<$Res,
        _$RegisterAsCustomerEntityImpl>
    implements _$$RegisterAsCustomerEntityImplCopyWith<$Res> {
  __$$RegisterAsCustomerEntityImplCopyWithImpl(
      _$RegisterAsCustomerEntityImpl _value,
      $Res Function(_$RegisterAsCustomerEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? password = null,
  }) {
    return _then(_$RegisterAsCustomerEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as InputField,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as InputField,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as InputField,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as InputField,
    ));
  }
}

/// @nodoc

class _$RegisterAsCustomerEntityImpl extends _RegisterAsCustomerEntity {
  const _$RegisterAsCustomerEntityImpl(
      {required this.name,
      required this.email,
      required this.phoneNumber,
      required this.password})
      : super._();

  @override
  final InputField name;
  @override
  final InputField email;
  @override
  final InputField phoneNumber;
  @override
  final InputField password;

  @override
  String toString() {
    return 'RegisterAsCustomerEntity(name: $name, email: $email, phoneNumber: $phoneNumber, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterAsCustomerEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, phoneNumber, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterAsCustomerEntityImplCopyWith<_$RegisterAsCustomerEntityImpl>
      get copyWith => __$$RegisterAsCustomerEntityImplCopyWithImpl<
          _$RegisterAsCustomerEntityImpl>(this, _$identity);
}

abstract class _RegisterAsCustomerEntity extends RegisterAsCustomerEntity {
  const factory _RegisterAsCustomerEntity(
      {required final InputField name,
      required final InputField email,
      required final InputField phoneNumber,
      required final InputField password}) = _$RegisterAsCustomerEntityImpl;
  const _RegisterAsCustomerEntity._() : super._();

  @override
  InputField get name;
  @override
  InputField get email;
  @override
  InputField get phoneNumber;
  @override
  InputField get password;
  @override
  @JsonKey(ignore: true)
  _$$RegisterAsCustomerEntityImplCopyWith<_$RegisterAsCustomerEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
