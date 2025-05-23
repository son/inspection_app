// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roof_frame.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoofFrame _$$_RoofFrameFromJson(Map<String, dynamic> json) => _$_RoofFrame(
      foundationDamage: json['foundationDamage'] == null
          ? const Damage()
          : Damage.fromJson(json['foundationDamage'] as Map<String, dynamic>),
      rainRoofFrameLeak: json['rainRoofFrameLeak'] == null
          ? const Damage()
          : Damage.fromJson(json['rainRoofFrameLeak'] as Map<String, dynamic>),
      coverage: $enumDecodeNullable(_$CoverageEnumMap, json['coverage']),
      remarks: json['remarks'] as String?,
      notApplicable: json['notApplicable'] as bool? ?? false,
    );

Map<String, dynamic> _$$_RoofFrameToJson(_$_RoofFrame instance) =>
    <String, dynamic>{
      'foundationDamage': instance.foundationDamage.toJson(),
      'rainRoofFrameLeak': instance.rainRoofFrameLeak.toJson(),
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
