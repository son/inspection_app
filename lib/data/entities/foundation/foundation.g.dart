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
      coverage: $enumDecodeNullable(_$CoverageEnumMap, json['coverage']),
      remarks: json['remarks'] as String?,
      notApplicable: json['notApplicable'] as bool? ?? false,
    );

Map<String, dynamic> _$$_FoundationToJson(_$_Foundation instance) =>
    <String, dynamic>{
      'finishings': instance.finishings,
      'crack': instance.crack.toJson(),
      'damage': instance.damage.toJson(),
      'concreteDeterioration': instance.concreteDeterioration.toJson(),
      'rust': instance.rust.toJson(),
      'rebarExposure': instance.rebarExposure.toJson(),
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
