// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ServiceEntity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ServiceEntity {
  Map<ServiceCategory, MaterialCategoryEntity> get categories =>
      throw _privateConstructorUsedError;
  CompanyService get serviceName => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  bool get selection => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServiceEntityCopyWith<ServiceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceEntityCopyWith<$Res> {
  factory $ServiceEntityCopyWith(
          ServiceEntity value, $Res Function(ServiceEntity) then) =
      _$ServiceEntityCopyWithImpl<$Res, ServiceEntity>;
  @useResult
  $Res call(
      {Map<ServiceCategory, MaterialCategoryEntity> categories,
      CompanyService serviceName,
      bool isValid,
      bool selection});
}

/// @nodoc
class _$ServiceEntityCopyWithImpl<$Res, $Val extends ServiceEntity>
    implements $ServiceEntityCopyWith<$Res> {
  _$ServiceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? serviceName = null,
    Object? isValid = null,
    Object? selection = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Map<ServiceCategory, MaterialCategoryEntity>,
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as CompanyService,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      selection: null == selection
          ? _value.selection
          : selection // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceEntityImplCopyWith<$Res>
    implements $ServiceEntityCopyWith<$Res> {
  factory _$$ServiceEntityImplCopyWith(
          _$ServiceEntityImpl value, $Res Function(_$ServiceEntityImpl) then) =
      __$$ServiceEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<ServiceCategory, MaterialCategoryEntity> categories,
      CompanyService serviceName,
      bool isValid,
      bool selection});
}

/// @nodoc
class __$$ServiceEntityImplCopyWithImpl<$Res>
    extends _$ServiceEntityCopyWithImpl<$Res, _$ServiceEntityImpl>
    implements _$$ServiceEntityImplCopyWith<$Res> {
  __$$ServiceEntityImplCopyWithImpl(
      _$ServiceEntityImpl _value, $Res Function(_$ServiceEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? serviceName = null,
    Object? isValid = null,
    Object? selection = null,
  }) {
    return _then(_$ServiceEntityImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Map<ServiceCategory, MaterialCategoryEntity>,
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as CompanyService,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      selection: null == selection
          ? _value.selection
          : selection // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ServiceEntityImpl extends _ServiceEntity {
  const _$ServiceEntityImpl(
      {required final Map<ServiceCategory, MaterialCategoryEntity> categories,
      required this.serviceName,
      this.isValid = false,
      this.selection = false})
      : _categories = categories,
        super._();

  final Map<ServiceCategory, MaterialCategoryEntity> _categories;
  @override
  Map<ServiceCategory, MaterialCategoryEntity> get categories {
    if (_categories is EqualUnmodifiableMapView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_categories);
  }

  @override
  final CompanyService serviceName;
  @override
  @JsonKey()
  final bool isValid;
  @override
  @JsonKey()
  final bool selection;

  @override
  String toString() {
    return 'ServiceEntity(categories: $categories, serviceName: $serviceName, isValid: $isValid, selection: $selection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceEntityImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.serviceName, serviceName) ||
                other.serviceName == serviceName) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.selection, selection) ||
                other.selection == selection));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      serviceName,
      isValid,
      selection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceEntityImplCopyWith<_$ServiceEntityImpl> get copyWith =>
      __$$ServiceEntityImplCopyWithImpl<_$ServiceEntityImpl>(this, _$identity);
}

abstract class _ServiceEntity extends ServiceEntity {
  const factory _ServiceEntity(
      {required final Map<ServiceCategory, MaterialCategoryEntity> categories,
      required final CompanyService serviceName,
      final bool isValid,
      final bool selection}) = _$ServiceEntityImpl;
  const _ServiceEntity._() : super._();

  @override
  Map<ServiceCategory, MaterialCategoryEntity> get categories;
  @override
  CompanyService get serviceName;
  @override
  bool get isValid;
  @override
  bool get selection;
  @override
  @JsonKey(ignore: true)
  _$$ServiceEntityImplCopyWith<_$ServiceEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
