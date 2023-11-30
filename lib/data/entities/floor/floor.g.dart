// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'floor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Floor _$$_FloorFromJson(Map<String, dynamic> json) => _$_Floor(
      damage: json['damage'] == null
          ? const Damage()
          : Damage.fromJson(json['damage'] as Map<String, dynamic>),
      sinking: json['sinking'] == null
          ? const Damage()
          : Damage.fromJson(json['sinking'] as Map<String, dynamic>),
      inclination: json['inclination'] == null
          ? const Damage()
          : Damage.fromJson(json['inclination'] as Map<String, dynamic>),
      coverage: $enumDecodeNullable(_$CoverageEnumMap, json['coverage']),
      remarks: json['remarks'] as String? ?? '',
    );

Map<String, dynamic> _$$_FloorToJson(_$_Floor instance) => <String, dynamic>{
      'damage': instance.damage.toJson(),
      'sinking': instance.sinking.toJson(),
      'inclination': instance.inclination.toJson(),
      'coverage': _$CoverageEnumMap[instance.coverage],
      'remarks': instance.remarks,
    };

const _$CoverageEnumMap = {
  Coverage.almost: 'almost',
  Coverage.most: 'most',
  Coverage.some: 'some',
  Coverage.few: 'few',
  Coverage.incapable: 'incapable',
  Coverage.unapproved: 'unapproved',
};
