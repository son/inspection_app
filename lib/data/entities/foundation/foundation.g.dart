// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foundation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Foundation _$$_FoundationFromJson(Map<String, dynamic> json) =>
    _$_Foundation(
      finishings: (json['finishings'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      crack: json['crack'] == null
          ? const Damage()
          : Damage.fromJson(json['crack'] as Map<String, dynamic>),
      damage: json['damage'] == null
          ? const Damage()
          : Damage.fromJson(json['damage'] as Map<String, dynamic>),
      concreteDeterioration: json['concreteDeterioration'] == null
          ? const Damage()
          : Damage.fromJson(
              json['concreteDeterioration'] as Map<String, dynamic>),
      rust: json['rust'] == null
          ? const Damage()
          : Damage.fromJson(json['rust'] as Map<String, dynamic>),
      rebarExposure: json['rebarExposure'] == null
          ? const Damage()
          : Damage.fromJson(json['rebarExposure'] as Map<String, dynamic>),
      coverage: $enumDecodeNullable(_$CoverageEnumMap, json['coverage']) ??
          Coverage.almost,
      remarks: json['remarks'] as String? ?? '',
    );

Map<String, dynamic> _$$_FoundationToJson(_$_Foundation instance) =>
    <String, dynamic>{
      'finishings': instance.finishings,
      'crack': instance.crack,
      'damage': instance.damage,
      'concreteDeterioration': instance.concreteDeterioration,
      'rust': instance.rust,
      'rebarExposure': instance.rebarExposure,
      'coverage': _$CoverageEnumMap[instance.coverage]!,
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
