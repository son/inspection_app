// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ant_damage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AntDamage _$$_AntDamageFromJson(Map<String, dynamic> json) => _$_AntDamage(
      accessPanel:
          $enumDecodeNullable(_$AccessPanelEnumMap, json['accessPanel']),
      antDamage: json['antDamage'] == null
          ? const Damage()
          : Damage.fromJson(json['antDamage'] as Map<String, dynamic>),
      coverage: $enumDecodeNullable(_$CoverageEnumMap, json['coverage']),
      remarks: json['remarks'] as String?,
      notApplicable: json['notApplicable'] as bool? ?? false,
    );

Map<String, dynamic> _$$_AntDamageToJson(_$_AntDamage instance) =>
    <String, dynamic>{
      'accessPanel': _$AccessPanelEnumMap[instance.accessPanel],
      'antDamage': instance.antDamage.toJson(),
      'coverage': _$CoverageEnumMap[instance.coverage],
      'remarks': instance.remarks,
      'notApplicable': instance.notApplicable,
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
