// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'building.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Building _$$_BuildingFromJson(Map<String, dynamic> json) => _$_Building(
      name: json['name'] as String? ?? '',
      structureType:
          $enumDecodeNullable(_$StructureTypeEnumMap, json['structureType']) ??
              StructureType.wooden,
      totalFloorArea: (json['totalFloorArea'] as num?)?.toDouble() ?? 0.0,
      floor: json['floor'] == null
          ? const Floor()
          : Floor.fromJson(json['floor'] as Map<String, dynamic>),
      address: json['address'] == null
          ? const Address()
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      prefecture: json['prefecture'] as String? ?? '東京都',
      findings: json['findings'] as String? ?? '',
      builtAt: json['builtAt'] == null
          ? null
          : DateTime.parse(json['builtAt'] as String),
    );

Map<String, dynamic> _$$_BuildingToJson(_$_Building instance) =>
    <String, dynamic>{
      'name': instance.name,
      'structureType': _$StructureTypeEnumMap[instance.structureType]!,
      'totalFloorArea': instance.totalFloorArea,
      'floor': instance.floor,
      'address': instance.address,
      'prefecture': instance.prefecture,
      'findings': instance.findings,
      'builtAt': instance.builtAt?.toIso8601String(),
    };

const _$StructureTypeEnumMap = {
  StructureType.wooden: 'wooden',
  StructureType.steel: 'steel',
  StructureType.reinforcedConcrete: 'reinforcedConcrete',
  StructureType.steelReinforcedConcrete: 'steelReinforcedConcrete',
  StructureType.mixed: 'mixed',
};

_$_Floor _$$_FloorFromJson(Map<String, dynamic> json) => _$_Floor(
      ground: json['ground'] as int? ?? 1,
      underground: json['underground'] as int? ?? 0,
    );

Map<String, dynamic> _$$_FloorToJson(_$_Floor instance) => <String, dynamic>{
      'ground': instance.ground,
      'underground': instance.underground,
    };
