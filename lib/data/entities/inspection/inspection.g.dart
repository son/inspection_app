// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Inspection _$$_InspectionFromJson(Map<String, dynamic> json) =>
    _$_Inspection(
      id: json['id'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      overview: json['overview'] == null
          ? const InspectionOverview()
          : InspectionOverview.fromJson(
              json['overview'] as Map<String, dynamic>),
      photos: (json['photos'] as List<dynamic>?)
              ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Photo>[],
      blueprints: (json['blueprints'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      foundation: json['foundation'] == null
          ? const Foundation()
          : Foundation.fromJson(json['foundation'] as Map<String, dynamic>),
      outerWall: json['outerWall'] == null
          ? const OuterWall()
          : OuterWall.fromJson(json['outerWall'] as Map<String, dynamic>),
      roof: json['roof'] == null
          ? const Roof()
          : Roof.fromJson(json['roof'] as Map<String, dynamic>),
      balcony: json['balcony'] == null
          ? const Balcony()
          : Balcony.fromJson(json['balcony'] as Map<String, dynamic>),
      innerWall: json['innerWall'] == null
          ? const InnerWall()
          : InnerWall.fromJson(json['innerWall'] as Map<String, dynamic>),
      ceiling: json['ceiling'] == null
          ? const Ceiling()
          : Ceiling.fromJson(json['ceiling'] as Map<String, dynamic>),
      roofFrame: json['roofFrame'] == null
          ? const RoofFrame()
          : RoofFrame.fromJson(json['roofFrame'] as Map<String, dynamic>),
      pillarAndBeam: json['pillarAndBeam'] == null
          ? const PillarAndBeam()
          : PillarAndBeam.fromJson(
              json['pillarAndBeam'] as Map<String, dynamic>),
      baseAndFloorFraming: json['baseAndFloorFraming'] == null
          ? const BaseAndFloorFraming()
          : BaseAndFloorFraming.fromJson(
              json['baseAndFloorFraming'] as Map<String, dynamic>),
      floor: json['floor'] == null
          ? const Floor()
          : Floor.fromJson(json['floor'] as Map<String, dynamic>),
      antDamage: json['antDamage'] == null
          ? const AntDamage()
          : AntDamage.fromJson(json['antDamage'] as Map<String, dynamic>),
      corrosion: json['corrosion'] == null
          ? const Corrosion()
          : Corrosion.fromJson(json['corrosion'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_InspectionToJson(_$_Inspection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'overview': instance.overview,
      'photos': instance.photos,
      'blueprints': instance.blueprints,
      'foundation': instance.foundation,
      'outerWall': instance.outerWall,
      'roof': instance.roof,
      'balcony': instance.balcony,
      'innerWall': instance.innerWall,
      'ceiling': instance.ceiling,
      'roofFrame': instance.roofFrame,
      'pillarAndBeam': instance.pillarAndBeam,
      'baseAndFloorFraming': instance.baseAndFloorFraming,
      'floor': instance.floor,
      'antDamage': instance.antDamage,
      'corrosion': instance.corrosion,
    };
