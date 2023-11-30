// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'concrete.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Concrete _$$_ConcreteFromJson(Map<String, dynamic> json) => _$_Concrete(
      exploration: json['exploration'] as bool?,
      compressiveStrength1: json['compressiveStrength1'] == null
          ? const Damage()
          : Damage.fromJson(
              json['compressiveStrength1'] as Map<String, dynamic>),
      compressiveStrength2: json['compressiveStrength2'] == null
          ? const Damage()
          : Damage.fromJson(
              json['compressiveStrength2'] as Map<String, dynamic>),
      coverage: $enumDecodeNullable(_$CoverageEnumMap, json['coverage']),
      remarks: json['remarks'] as String? ?? '',
    );

Map<String, dynamic> _$$_ConcreteToJson(_$_Concrete instance) =>
    <String, dynamic>{
      'exploration': instance.exploration,
      'compressiveStrength1': instance.compressiveStrength1.toJson(),
      'compressiveStrength2': instance.compressiveStrength2.toJson(),
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
