// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RequestModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoorRequestImpl _$$DoorRequestImplFromJson(Map<String, dynamic> json) =>
    _$DoorRequestImpl(
      width: (json['width'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      doorMaterial:
          $enumDecode(_$CategoryMaterialNameEnumMap, json['doorMaterial']),
      doorHandle:
          $enumDecode(_$CategoryMaterialNameEnumMap, json['doorHandle']),
      handleColor: json['handleColor'] as String,
      units: json['units'] as int,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DoorRequestImplToJson(_$DoorRequestImpl instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'doorMaterial': _$CategoryMaterialNameEnumMap[instance.doorMaterial]!,
      'doorHandle': _$CategoryMaterialNameEnumMap[instance.doorHandle]!,
      'handleColor': instance.handleColor,
      'units': instance.units,
      'runtimeType': instance.$type,
    };

const _$CategoryMaterialNameEnumMap = {
  CategoryMaterialName.doorMaterialWood: 'doorMaterialWood',
  CategoryMaterialName.doorMaterialAluminum: 'doorMaterialAluminum',
  CategoryMaterialName.doorHandleAluminum: 'doorHandleAluminum',
  CategoryMaterialName.doorHandleSmart: 'doorHandleSmart',
  CategoryMaterialName.windowMaterialWood: 'windowMaterialWood',
  CategoryMaterialName.windowMaterialAluminum: 'windowMaterialAluminum',
  CategoryMaterialName.windowGlassClear: 'windowGlassClear',
  CategoryMaterialName.windowGlassTextured: 'windowGlassTextured',
  CategoryMaterialName.windowTypeDoubleSide: 'windowTypeDoubleSide',
  CategoryMaterialName.windowTypeSlide: 'windowTypeSlide',
};

_$WindowRequestImpl _$$WindowRequestImplFromJson(Map<String, dynamic> json) =>
    _$WindowRequestImpl(
      width: (json['width'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      windowMaterial:
          $enumDecode(_$CategoryMaterialNameEnumMap, json['windowMaterial']),
      windowColor: json['windowColor'] as String,
      windowType:
          $enumDecode(_$CategoryMaterialNameEnumMap, json['windowType']),
      windowGlassType:
          $enumDecode(_$CategoryMaterialNameEnumMap, json['windowGlassType']),
      units: json['units'] as int,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WindowRequestImplToJson(_$WindowRequestImpl instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'windowMaterial': _$CategoryMaterialNameEnumMap[instance.windowMaterial]!,
      'windowColor': instance.windowColor,
      'windowType': _$CategoryMaterialNameEnumMap[instance.windowType]!,
      'windowGlassType':
          _$CategoryMaterialNameEnumMap[instance.windowGlassType]!,
      'units': instance.units,
      'runtimeType': instance.$type,
    };
