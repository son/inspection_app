// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rebar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Rebar _$$_RebarFromJson(Map<String, dynamic> json) => _$_Rebar(
      exploration: json['exploration'] as bool? ?? false,
      side: json['side'] == null
          ? const Damage()
          : Damage.fromJson(json['side'] as Map<String, dynamic>),
      bottom: json['bottom'] == null
          ? const Damage()
          : Damage.fromJson(json['bottom'] as Map<String, dynamic>),
      coverage: $enumDecodeNullable(_$CoverageEnumMap, json['coverage']),
      remarks: json['remarks'] as String? ?? '',
    );

Map<String, dynamic> _$$_RebarToJson(_$_Rebar instance) => <String, dynamic>{
      'exploration': instance.exploration,
      'side': instance.side.toJson(),
      'bottom': instance.bottom.toJson(),
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
