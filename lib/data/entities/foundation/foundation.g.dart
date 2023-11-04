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

_$_Damage _$$_DamageFromJson(Map<String, dynamic> json) => _$_Damage(
      result:
          $enumDecodeNullable(_$ResultEnumMap, json['result']) ?? Result.none,
      directions: (json['directions'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$DirectionEnumMap, e))
              .toList() ??
          const <Direction>[],
      max: (json['max'] as num?)?.toDouble() ?? 0.0,
      photos: (json['photos'] as List<dynamic>?)
              ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Photo>[],
    );

Map<String, dynamic> _$$_DamageToJson(_$_Damage instance) => <String, dynamic>{
      'result': _$ResultEnumMap[instance.result]!,
      'directions':
          instance.directions.map((e) => _$DirectionEnumMap[e]!).toList(),
      'max': instance.max,
      'photos': instance.photos,
    };

const _$ResultEnumMap = {
  Result.none: 'none',
  Result.passed: 'passed',
  Result.failure: 'failure',
};

const _$DirectionEnumMap = {
  Direction.south: 'south',
  Direction.north: 'north',
  Direction.west: 'west',
  Direction.east: 'east',
};
