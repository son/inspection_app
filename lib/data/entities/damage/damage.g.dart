// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'damage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Damage _$$_DamageFromJson(Map<String, dynamic> json) => _$_Damage(
      result:
          $enumDecodeNullable(_$ResultEnumMap, json['result']) ?? Result.none,
      directions: (json['directions'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$DirectionEnumMap, e))
              .toList() ??
          const <Direction>[],
      max: (json['max'] as num?)?.toDouble(),
      part: json['part'] as String?,
      content: json['content'] as String?,
      situation: json['situation'] as String?,
      photos: (json['photos'] as List<dynamic>?)
              ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Photo>[],
      details: (json['details'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$$_DamageToJson(_$_Damage instance) => <String, dynamic>{
      'result': _$ResultEnumMap[instance.result]!,
      'directions':
          instance.directions.map((e) => _$DirectionEnumMap[e]!).toList(),
      'max': instance.max,
      'part': instance.part,
      'content': instance.content,
      'situation': instance.situation,
      'photos': instance.photos.map((e) => e.toJson()).toList(),
      'details': instance.details,
    };

const _$ResultEnumMap = {
  Result.none: 'none',
  Result.passed: 'passed',
  Result.failure: 'failure',
};

const _$DirectionEnumMap = {
  Direction.south: 'south',
  Direction.north: 'north',
  Direction.west: 'west',
  Direction.east: 'east',
};
