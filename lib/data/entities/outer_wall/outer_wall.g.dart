// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outer_wall.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OuterWall _$$_OuterWallFromJson(Map<String, dynamic> json) => _$_OuterWall(
      finishings: (json['finishings'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      dryDamage: json['dryDamage'] == null
          ? const Damage()
          : Damage.fromJson(json['dryDamage'] as Map<String, dynamic>),
      dryWideDamage: json['dryWideDamage'] == null
          ? const Damage()
          : Damage.fromJson(json['dryWideDamage'] as Map<String, dynamic>),
      dryCorrosion: json['dryCorrosion'] == null
          ? const Damage()
          : Damage.fromJson(json['dryCorrosion'] as Map<String, dynamic>),
      tileDamage: json['tileDamage'] == null
          ? const Damage()
          : Damage.fromJson(json['tileDamage'] as Map<String, dynamic>),
      tileWideDamage: json['tileWideDamage'] == null
          ? const Damage()
          : Damage.fromJson(json['tileWideDamage'] as Map<String, dynamic>),
      tileFloat: json['tileFloat'] == null
          ? const Damage()
          : Damage.fromJson(json['tileFloat'] as Map<String, dynamic>),
      paintDamage: json['paintDamage'] == null
          ? const Damage()
          : Damage.fromJson(json['paintDamage'] as Map<String, dynamic>),
      paintFloat: json['paintFloat'] == null
          ? const Damage()
          : Damage.fromJson(json['paintFloat'] as Map<String, dynamic>),
      otherDamage: json['otherDamage'] == null
          ? const Damage()
          : Damage.fromJson(json['otherDamage'] as Map<String, dynamic>),
      otherWideDamage: json['otherWideDamage'] == null
          ? const Damage()
          : Damage.fromJson(json['otherWideDamage'] as Map<String, dynamic>),
      otherCorrosion: json['otherCorrosion'] == null
          ? const Damage()
          : Damage.fromJson(json['otherCorrosion'] as Map<String, dynamic>),
      otherFloat: json['otherFloat'] == null
          ? const Damage()
          : Damage.fromJson(json['otherFloat'] as Map<String, dynamic>),
      rainWallSealing: json['rainWallSealing'] == null
          ? const Damage()
          : Damage.fromJson(json['rainWallSealing'] as Map<String, dynamic>),
      rainGap: json['rainGap'] == null
          ? const Damage()
          : Damage.fromJson(json['rainGap'] as Map<String, dynamic>),
      rainCeilingSealing: json['rainCeilingSealing'] == null
          ? const Damage()
          : Damage.fromJson(json['rainCeilingSealing'] as Map<String, dynamic>),
      rainCeilingLeak: json['rainCeilingLeak'] == null
          ? const Damage()
          : Damage.fromJson(json['rainCeilingLeak'] as Map<String, dynamic>),
      coverage: $enumDecodeNullable(_$CoverageEnumMap, json['coverage']),
      remarks: json['remarks'] as String?,
      notApplicable: json['notApplicable'] as bool? ?? false,
    );

Map<String, dynamic> _$$_OuterWallToJson(_$_OuterWall instance) =>
    <String, dynamic>{
      'finishings': instance.finishings,
      'dryDamage': instance.dryDamage.toJson(),
      'dryWideDamage': instance.dryWideDamage.toJson(),
      'dryCorrosion': instance.dryCorrosion.toJson(),
      'tileDamage': instance.tileDamage.toJson(),
      'tileWideDamage': instance.tileWideDamage.toJson(),
      'tileFloat': instance.tileFloat.toJson(),
      'paintDamage': instance.paintDamage.toJson(),
      'paintFloat': instance.paintFloat.toJson(),
      'otherDamage': instance.otherDamage.toJson(),
      'otherWideDamage': instance.otherWideDamage.toJson(),
      'otherCorrosion': instance.otherCorrosion.toJson(),
      'otherFloat': instance.otherFloat.toJson(),
      'rainWallSealing': instance.rainWallSealing.toJson(),
      'rainGap': instance.rainGap.toJson(),
      'rainCeilingSealing': instance.rainCeilingSealing.toJson(),
      'rainCeilingLeak': instance.rainCeilingLeak.toJson(),
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
