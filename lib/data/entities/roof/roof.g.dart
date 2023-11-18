// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roof.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Roof _$$_RoofFromJson(Map<String, dynamic> json) => _$_Roof(
      necessity: json['necessity'] as String? ?? '',
      damage: json['damage'] == null
          ? const Damage()
          : Damage.fromJson(json['damage'] as Map<String, dynamic>),
      waterProofLayerDamage: json['waterProofLayerDamage'] == null
          ? const Damage()
          : Damage.fromJson(
              json['waterProofLayerDamage'] as Map<String, dynamic>),
      coverage: $enumDecodeNullable(_$CoverageEnumMap, json['coverage']) ??
          Coverage.almost,
      remarks: json['remarks'] as String? ?? '',
    );

Map<String, dynamic> _$$_RoofToJson(_$_Roof instance) => <String, dynamic>{
      'necessity': instance.necessity,
      'damage': instance.damage,
      'waterProofLayerDamage': instance.waterProofLayerDamage,
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
