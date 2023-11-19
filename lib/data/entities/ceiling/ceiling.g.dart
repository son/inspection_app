// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ceiling.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ceiling _$$_CeilingFromJson(Map<String, dynamic> json) => _$_Ceiling(
      accessPanel:
          $enumDecodeNullable(_$AccessPanelEnumMap, json['accessPanel']) ??
              AccessPanel.none,
      foundationDamage: json['foundationDamage'] == null
          ? const Damage()
          : Damage.fromJson(json['foundationDamage'] as Map<String, dynamic>),
      rainCeilingLeak: json['rainCeilingLeak'] == null
          ? const Damage()
          : Damage.fromJson(json['rainCeilingLeak'] as Map<String, dynamic>),
      coverage: $enumDecodeNullable(_$CoverageEnumMap, json['coverage']) ??
          Coverage.almost,
      remarks: json['remarks'] as String? ?? '',
    );

Map<String, dynamic> _$$_CeilingToJson(_$_Ceiling instance) =>
    <String, dynamic>{
      'accessPanel': _$AccessPanelEnumMap[instance.accessPanel]!,
      'foundationDamage': instance.foundationDamage,
      'rainCeilingLeak': instance.rainCeilingLeak,
      'coverage': _$CoverageEnumMap[instance.coverage]!,
      'remarks': instance.remarks,
    };

const _$AccessPanelEnumMap = {
  AccessPanel.none: 'none',
  AccessPanel.exist: 'exist',
  AccessPanel.noNeed: 'noNeed',
};

const _$CoverageEnumMap = {
  Coverage.almost: 'almost',
  Coverage.most: 'most',
  Coverage.some: 'some',
  Coverage.few: 'few',
  Coverage.incapable: 'incapable',
  Coverage.unapproved: 'unapproved',
};
