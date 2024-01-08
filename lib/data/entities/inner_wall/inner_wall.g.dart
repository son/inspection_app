// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inner_wall.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InnerWall _$$_InnerWallFromJson(Map<String, dynamic> json) => _$_InnerWall(
      foundationDamage: json['foundationDamage'] == null
          ? const Damage()
          : Damage.fromJson(json['foundationDamage'] as Map<String, dynamic>),
      foundationInclination: json['foundationInclination'] == null
          ? const Damage()
          : Damage.fromJson(
              json['foundationInclination'] as Map<String, dynamic>),
      rainInnerWallLeak: json['rainInnerWallLeak'] == null
          ? const Damage()
          : Damage.fromJson(json['rainInnerWallLeak'] as Map<String, dynamic>),
      coverage: $enumDecodeNullable(_$CoverageEnumMap, json['coverage']),
      remarks: json['remarks'] as String?,
      notApplicable: json['notApplicable'] as bool? ?? false,
    );

Map<String, dynamic> _$$_InnerWallToJson(_$_InnerWall instance) =>
    <String, dynamic>{
      'foundationDamage': instance.foundationDamage.toJson(),
      'foundationInclination': instance.foundationInclination.toJson(),
      'rainInnerWallLeak': instance.rainInnerWallLeak.toJson(),
      'coverage': _$CoverageEnumMap[instance.coverage],
      'remarks': instance.remarks,
      'notApplicable': instance.notApplicable,
    };

const _$CoverageEnumMap = {
  Coverage.almost: 'almost',
  Coverage.most: 'most',
  Coverage.some: 'some',
  Coverage.few: 'few',
  Coverage.incapable: 'incapable',
  Coverage.unapproved: 'unapproved',
};
