// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pillar_and_beam.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PillarAndBeam _$$_PillarAndBeamFromJson(Map<String, dynamic> json) =>
    _$_PillarAndBeam(
      pillarDamage: json['pillarDamage'] == null
          ? const Damage()
          : Damage.fromJson(json['pillarDamage'] as Map<String, dynamic>),
      pillarInclination: json['pillarInclination'] == null
          ? const Damage()
          : Damage.fromJson(json['pillarInclination'] as Map<String, dynamic>),
      beamDamage: json['beamDamage'] == null
          ? const Damage()
          : Damage.fromJson(json['beamDamage'] as Map<String, dynamic>),
      beamDeflection: json['beamDeflection'] == null
          ? const Damage()
          : Damage.fromJson(json['beamDeflection'] as Map<String, dynamic>),
      coverage: $enumDecodeNullable(_$CoverageEnumMap, json['coverage']),
      remarks: json['remarks'] as String?,
      notApplicable: json['notApplicable'] as bool? ?? false,
    );

Map<String, dynamic> _$$_PillarAndBeamToJson(_$_PillarAndBeam instance) =>
    <String, dynamic>{
      'pillarDamage': instance.pillarDamage.toJson(),
      'pillarInclination': instance.pillarInclination.toJson(),
      'beamDamage': instance.beamDamage.toJson(),
      'beamDeflection': instance.beamDeflection.toJson(),
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
