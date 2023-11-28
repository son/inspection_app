// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balcony.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Balcony _$$_BalconyFromJson(Map<String, dynamic> json) => _$_Balcony(
      foundation: json['foundation'] == null
          ? const Damage()
          : Damage.fromJson(json['foundation'] as Map<String, dynamic>),
      waterProofLayer: json['waterProofLayer'] == null
          ? const Damage()
          : Damage.fromJson(json['waterProofLayer'] as Map<String, dynamic>),
      foundationCoverage:
          $enumDecodeNullable(_$CoverageEnumMap, json['foundationCoverage']),
      waterProofLayerCoverage: $enumDecodeNullable(
          _$CoverageEnumMap, json['waterProofLayerCoverage']),
      remarks: json['remarks'] as String? ?? '',
    );

Map<String, dynamic> _$$_BalconyToJson(_$_Balcony instance) =>
    <String, dynamic>{
      'foundation': instance.foundation,
      'waterProofLayer': instance.waterProofLayer,
      'foundationCoverage': _$CoverageEnumMap[instance.foundationCoverage],
      'waterProofLayerCoverage':
          _$CoverageEnumMap[instance.waterProofLayerCoverage],
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
