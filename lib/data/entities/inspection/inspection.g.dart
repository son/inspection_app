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
      udId: json['udId'] as String?,
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
      piping: json['piping'] == null
          ? const Piping()
          : Piping.fromJson(json['piping'] as Map<String, dynamic>),
      lifeline: json['lifeline'] == null
          ? const Lifeline()
          : Lifeline.fromJson(json['lifeline'] as Map<String, dynamic>),
      rebar: json['rebar'] == null
          ? const Rebar()
          : Rebar.fromJson(json['rebar'] as Map<String, dynamic>),
      concrete: json['concrete'] == null
          ? const Concrete()
          : Concrete.fromJson(json['concrete'] as Map<String, dynamic>),
      earthquakeResistant: json['earthquakeResistant'] == null
          ? const EarthquakeResistant()
          : EarthquakeResistant.fromJson(
              json['earthquakeResistant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_InspectionToJson(_$_Inspection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'udId': instance.udId,
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
      'piping': instance.piping,
      'lifeline': instance.lifeline,
      'rebar': instance.rebar,
      'concrete': instance.concrete,
      'earthquakeResistant': instance.earthquakeResistant,
    };
