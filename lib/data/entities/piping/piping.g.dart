// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'piping.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Piping _$$_PipingFromJson(Map<String, dynamic> json) => _$_Piping(
      supplyRustyWater: json['supplyRustyWater'] == null
          ? const Damage()
          : Damage.fromJson(json['supplyRustyWater'] as Map<String, dynamic>),
      supplyWaterLeak: json['supplyWaterLeak'] == null
          ? const Damage()
          : Damage.fromJson(json['supplyWaterLeak'] as Map<String, dynamic>),
      sewerStuck: json['sewerStuck'] == null
          ? const Damage()
          : Damage.fromJson(json['sewerStuck'] as Map<String, dynamic>),
      sewerWaterLeak: json['sewerWaterLeak'] == null
          ? const Damage()
          : Damage.fromJson(json['sewerWaterLeak'] as Map<String, dynamic>),
      ductLoss: json['ductLoss'] == null
          ? const Damage()
          : Damage.fromJson(json['ductLoss'] as Map<String, dynamic>),
      coverage: $enumDecodeNullable(_$CoverageEnumMap, json['coverage']),
      remarks: json['remarks'] as String? ?? '',
    );

Map<String, dynamic> _$$_PipingToJson(_$_Piping instance) => <String, dynamic>{
      'supplyRustyWater': instance.supplyRustyWater.toJson(),
      'supplyWaterLeak': instance.supplyWaterLeak.toJson(),
      'sewerStuck': instance.sewerStuck.toJson(),
      'sewerWaterLeak': instance.sewerWaterLeak.toJson(),
      'ductLoss': instance.ductLoss.toJson(),
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
