// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'corrosion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Corrosion _$$_CorrosionFromJson(Map<String, dynamic> json) => _$_Corrosion(
      corrosion: json['corrosion'] == null
          ? const Damage()
          : Damage.fromJson(json['corrosion'] as Map<String, dynamic>),
      coverage: $enumDecodeNullable(_$CoverageEnumMap, json['coverage']),
      remarks: json['remarks'] as String? ?? '',
    );

Map<String, dynamic> _$$_CorrosionToJson(_$_Corrosion instance) =>
    <String, dynamic>{
      'corrosion': instance.corrosion.toJson(),
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
