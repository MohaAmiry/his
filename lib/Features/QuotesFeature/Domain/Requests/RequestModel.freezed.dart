// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'RequestModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestModel _$RequestModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'doorRequest':
      return DoorRequest.fromJson(json);
    case 'windowRequest':
      return WindowRequest.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'RequestModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$RequestModel {
  double get width => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  int get units => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            double width,
            double height,
            CategoryMaterialName doorMaterial,
            CategoryMaterialName doorHandle,
            String handleColor,
            int units)
        doorRequest,
    required TResult Function(
            double width,
            double height,
            CategoryMaterialName windowMaterial,
            String windowColor,
            CategoryMaterialName windowType,
            CategoryMaterialName windowGlassType,
            int units)
        windowRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            double width,
            double height,
            CategoryMaterialName doorMaterial,
            CategoryMaterialName doorHandle,
            String handleColor,
            int units)?
        doorRequest,
    TResult? Function(
            double width,
            double height,
            CategoryMaterialName windowMaterial,
            String windowColor,
            CategoryMaterialName windowType,
            CategoryMaterialName windowGlassType,
            int units)?
        windowRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            double width,
            double height,
            CategoryMaterialName doorMaterial,
            CategoryMaterialName doorHandle,
            String handleColor,
            int units)?
        doorRequest,
    TResult Function(
            double width,
            double height,
            CategoryMaterialName windowMaterial,
            String windowColor,
            CategoryMaterialName windowType,
            CategoryMaterialName windowGlassType,
            int units)?
        windowRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DoorRequest value) doorRequest,
    required TResult Function(WindowRequest value) windowRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DoorRequest value)? doorRequest,
    TResult? Function(WindowRequest value)? windowRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DoorRequest value)? doorRequest,
    TResult Function(WindowRequest value)? windowRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$DoorRequestImpl extends DoorRequest {
  const _$DoorRequestImpl(
      {required this.width,
      required this.height,
      required this.doorMaterial,
      required this.doorHandle,
      required this.handleColor,
      required this.units,
      final String? $type})
      : $type = $type ?? 'doorRequest',
        super._();

  factory _$DoorRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoorRequestImplFromJson(json);

  @override
  final double width;
  @override
  final double height;
  @override
  final CategoryMaterialName doorMaterial;
  @override
  final CategoryMaterialName doorHandle;
  @override
  final String handleColor;
  @override
  final int units;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RequestModel.doorRequest(width: $width, height: $height, doorMaterial: $doorMaterial, doorHandle: $doorHandle, handleColor: $handleColor, units: $units)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            double width,
            double height,
            CategoryMaterialName doorMaterial,
            CategoryMaterialName doorHandle,
            String handleColor,
            int units)
        doorRequest,
    required TResult Function(
            double width,
            double height,
            CategoryMaterialName windowMaterial,
            String windowColor,
            CategoryMaterialName windowType,
            CategoryMaterialName windowGlassType,
            int units)
        windowRequest,
  }) {
    return doorRequest(
        width, height, doorMaterial, doorHandle, handleColor, units);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            double width,
            double height,
            CategoryMaterialName doorMaterial,
            CategoryMaterialName doorHandle,
            String handleColor,
            int units)?
        doorRequest,
    TResult? Function(
            double width,
            double height,
            CategoryMaterialName windowMaterial,
            String windowColor,
            CategoryMaterialName windowType,
            CategoryMaterialName windowGlassType,
            int units)?
        windowRequest,
  }) {
    return doorRequest?.call(
        width, height, doorMaterial, doorHandle, handleColor, units);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            double width,
            double height,
            CategoryMaterialName doorMaterial,
            CategoryMaterialName doorHandle,
            String handleColor,
            int units)?
        doorRequest,
    TResult Function(
            double width,
            double height,
            CategoryMaterialName windowMaterial,
            String windowColor,
            CategoryMaterialName windowType,
            CategoryMaterialName windowGlassType,
            int units)?
        windowRequest,
    required TResult orElse(),
  }) {
    if (doorRequest != null) {
      return doorRequest(
          width, height, doorMaterial, doorHandle, handleColor, units);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DoorRequest value) doorRequest,
    required TResult Function(WindowRequest value) windowRequest,
  }) {
    return doorRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DoorRequest value)? doorRequest,
    TResult? Function(WindowRequest value)? windowRequest,
  }) {
    return doorRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DoorRequest value)? doorRequest,
    TResult Function(WindowRequest value)? windowRequest,
    required TResult orElse(),
  }) {
    if (doorRequest != null) {
      return doorRequest(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DoorRequestImplToJson(
      this,
    );
  }
}

abstract class DoorRequest extends RequestModel {
  const factory DoorRequest(
      {required final double width,
      required final double height,
      required final CategoryMaterialName doorMaterial,
      required final CategoryMaterialName doorHandle,
      required final String handleColor,
      required final int units}) = _$DoorRequestImpl;
  const DoorRequest._() : super._();

  factory DoorRequest.fromJson(Map<String, dynamic> json) =
      _$DoorRequestImpl.fromJson;

  @override
  double get width;
  @override
  double get height;
  CategoryMaterialName get doorMaterial;
  CategoryMaterialName get doorHandle;
  String get handleColor;
  @override
  int get units;
}

/// @nodoc
@JsonSerializable()
class _$WindowRequestImpl extends WindowRequest {
  const _$WindowRequestImpl(
      {required this.width,
      required this.height,
      required this.windowMaterial,
      required this.windowColor,
      required this.windowType,
      required this.windowGlassType,
      required this.units,
      final String? $type})
      : $type = $type ?? 'windowRequest',
        super._();

  factory _$WindowRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$WindowRequestImplFromJson(json);

  @override
  final double width;
  @override
  final double height;
  @override
  final CategoryMaterialName windowMaterial;
  @override
  final String windowColor;
  @override
  final CategoryMaterialName windowType;
  @override
  final CategoryMaterialName windowGlassType;
  @override
  final int units;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RequestModel.windowRequest(width: $width, height: $height, windowMaterial: $windowMaterial, windowColor: $windowColor, windowType: $windowType, windowGlassType: $windowGlassType, units: $units)';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            double width,
            double height,
            CategoryMaterialName doorMaterial,
            CategoryMaterialName doorHandle,
            String handleColor,
            int units)
        doorRequest,
    required TResult Function(
            double width,
            double height,
            CategoryMaterialName windowMaterial,
            String windowColor,
            CategoryMaterialName windowType,
            CategoryMaterialName windowGlassType,
            int units)
        windowRequest,
  }) {
    return windowRequest(width, height, windowMaterial, windowColor, windowType,
        windowGlassType, units);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            double width,
            double height,
            CategoryMaterialName doorMaterial,
            CategoryMaterialName doorHandle,
            String handleColor,
            int units)?
        doorRequest,
    TResult? Function(
            double width,
            double height,
            CategoryMaterialName windowMaterial,
            String windowColor,
            CategoryMaterialName windowType,
            CategoryMaterialName windowGlassType,
            int units)?
        windowRequest,
  }) {
    return windowRequest?.call(width, height, windowMaterial, windowColor,
        windowType, windowGlassType, units);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            double width,
            double height,
            CategoryMaterialName doorMaterial,
            CategoryMaterialName doorHandle,
            String handleColor,
            int units)?
        doorRequest,
    TResult Function(
            double width,
            double height,
            CategoryMaterialName windowMaterial,
            String windowColor,
            CategoryMaterialName windowType,
            CategoryMaterialName windowGlassType,
            int units)?
        windowRequest,
    required TResult orElse(),
  }) {
    if (windowRequest != null) {
      return windowRequest(width, height, windowMaterial, windowColor,
          windowType, windowGlassType, units);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DoorRequest value) doorRequest,
    required TResult Function(WindowRequest value) windowRequest,
  }) {
    return windowRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DoorRequest value)? doorRequest,
    TResult? Function(WindowRequest value)? windowRequest,
  }) {
    return windowRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DoorRequest value)? doorRequest,
    TResult Function(WindowRequest value)? windowRequest,
    required TResult orElse(),
  }) {
    if (windowRequest != null) {
      return windowRequest(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WindowRequestImplToJson(
      this,
    );
  }
}

abstract class WindowRequest extends RequestModel {
  const factory WindowRequest(
      {required final double width,
      required final double height,
      required final CategoryMaterialName windowMaterial,
      required final String windowColor,
      required final CategoryMaterialName windowType,
      required final CategoryMaterialName windowGlassType,
      required final int units}) = _$WindowRequestImpl;
  const WindowRequest._() : super._();

  factory WindowRequest.fromJson(Map<String, dynamic> json) =
      _$WindowRequestImpl.fromJson;

  @override
  double get width;
  @override
  double get height;
  CategoryMaterialName get windowMaterial;
  String get windowColor;
  CategoryMaterialName get windowType;
  CategoryMaterialName get windowGlassType;
  @override
  int get units;
}
