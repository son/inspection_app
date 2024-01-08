// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_and_floor_framing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BaseAndFloorFraming _$$_BaseAndFloorFramingFromJson(
        Map<String, dynamic> json) =>
    _$_BaseAndFloorFraming(
      damage: json['damage'] == null
          ? const Damage()
          : Damage.fromJson(json['damage'] as Map<String, dynamic>),
      coverage: $enumDecodeNullable(_$CoverageEnumMap, json['coverage']),
      remarks: json['remarks'] as String?,
      notApplicable: json['notApplicable'] as bool? ?? false,
    );

Map<String, dynamic> _$$_BaseAndFloorFramingToJson(
        _$_BaseAndFloorFraming instance) =>
    <String, dynamic>{
      'damage': instance.damage.toJson(),
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
