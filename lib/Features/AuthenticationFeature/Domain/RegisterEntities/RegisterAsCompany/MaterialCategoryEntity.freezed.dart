// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'MaterialCategoryEntity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MaterialCategoryEntity {
  Map<CategoryMaterialName, MaterialInputField> get inputFields =>
      throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MaterialCategoryEntityCopyWith<MaterialCategoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialCategoryEntityCopyWith<$Res> {
  factory $MaterialCategoryEntityCopyWith(MaterialCategoryEntity value,
          $Res Function(MaterialCategoryEntity) then) =
      _$MaterialCategoryEntityCopyWithImpl<$Res, MaterialCategoryEntity>;
  @useResult
  $Res call(
      {Map<CategoryMaterialName, MaterialInputField> inputFields,
      bool isValid});
}

/// @nodoc
class _$MaterialCategoryEntityCopyWithImpl<$Res,
        $Val extends MaterialCategoryEntity>
    implements $MaterialCategoryEntityCopyWith<$Res> {
  _$MaterialCategoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputFields = null,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      inputFields: null == inputFields
          ? _value.inputFields
          : inputFields // ignore: cast_nullable_to_non_nullable
              as Map<CategoryMaterialName, MaterialInputField>,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MaterialCategoryEntityImplCopyWith<$Res>
    implements $MaterialCategoryEntityCopyWith<$Res> {
  factory _$$MaterialCategoryEntityImplCopyWith(
          _$MaterialCategoryEntityImpl value,
          $Res Function(_$MaterialCategoryEntityImpl) then) =
      __$$MaterialCategoryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<CategoryMaterialName, MaterialInputField> inputFields,
      bool isValid});
}

/// @nodoc
class __$$MaterialCategoryEntityImplCopyWithImpl<$Res>
    extends _$MaterialCategoryEntityCopyWithImpl<$Res,
        _$MaterialCategoryEntityImpl>
    implements _$$MaterialCategoryEntityImplCopyWith<$Res> {
  __$$MaterialCategoryEntityImplCopyWithImpl(
      _$MaterialCategoryEntityImpl _value,
      $Res Function(_$MaterialCategoryEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputFields = null,
    Object? isValid = null,
  }) {
    return _then(_$MaterialCategoryEntityImpl(
      inputFields: null == inputFields
          ? _value._inputFields
          : inputFields // ignore: cast_nullable_to_non_nullable
              as Map<CategoryMaterialName, MaterialInputField>,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MaterialCategoryEntityImpl extends _MaterialCategoryEntity {
  const _$MaterialCategoryEntityImpl(
      {required final Map<CategoryMaterialName, MaterialInputField> inputFields,
      this.isValid = false})
      : _inputFields = inputFields,
        super._();

  final Map<CategoryMaterialName, MaterialInputField> _inputFields;
  @override
  Map<CategoryMaterialName, MaterialInputField> get inputFields {
    if (_inputFields is EqualUnmodifiableMapView) return _inputFields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_inputFields);
  }

  @override
  @JsonKey()
  final bool isValid;

  @override
  String toString() {
    return 'MaterialCategoryEntity(inputFields: $inputFields, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialCategoryEntityImpl &&
            const DeepCollectionEquality()
                .equals(other._inputFields, _inputFields) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_inputFields), isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MaterialCategoryEntityImplCopyWith<_$MaterialCategoryEntityImpl>
      get copyWith => __$$MaterialCategoryEntityImplCopyWithImpl<
          _$MaterialCategoryEntityImpl>(this, _$identity);
}

abstract class _MaterialCategoryEntity extends MaterialCategoryEntity {
  const factory _MaterialCategoryEntity(
      {required final Map<CategoryMaterialName, MaterialInputField> inputFields,
      final bool isValid}) = _$MaterialCategoryEntityImpl;
  const _MaterialCategoryEntity._() : super._();

  @override
  Map<CategoryMaterialName, MaterialInputField> get inputFields;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$MaterialCategoryEntityImplCopyWith<_$MaterialCategoryEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
