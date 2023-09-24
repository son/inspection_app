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
    );

Map<String, dynamic> _$$_InspectionToJson(_$_Inspection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'overview': instance.overview,
    };
