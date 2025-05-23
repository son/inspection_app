// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lifeline.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Lifeline _$$_LifelineFromJson(Map<String, dynamic> json) => _$_Lifeline(
      lifelineMalfunction: json['lifelineMalfunction'] == null
          ? const Damage()
          : Damage.fromJson(
              json['lifelineMalfunction'] as Map<String, dynamic>),
      otherMalfunction: json['otherMalfunction'] == null
          ? const Damage()
          : Damage.fromJson(json['otherMalfunction'] as Map<String, dynamic>),
      coverage: $enumDecodeNullable(_$CoverageEnumMap, json['coverage']),
      remarks: json['remarks'] as String?,
      notApplicable: json['notApplicable'] as bool? ?? false,
    );

Map<String, dynamic> _$$_LifelineToJson(_$_Lifeline instance) =>
    <String, dynamic>{
      'lifelineMalfunction': instance.lifelineMalfunction.toJson(),
      'otherMalfunction': instance.otherMalfunction.toJson(),
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
