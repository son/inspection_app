// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Detail _$$_DetailFromJson(Map<String, dynamic> json) => _$_Detail(
      housingType:
          $enumDecodeNullable(_$HousingTypeEnumMap, json['housingType']),
      structureType:
          $enumDecodeNullable(_$StructureTypeEnumMap, json['structureType']),
      totalFloorArea: (json['totalFloorArea'] as num?)?.toDouble(),
      floor: json['floor'] == null
          ? const Floor()
          : Floor.fromJson(json['floor'] as Map<String, dynamic>),
      findings: json['findings'] as String?,
      builtAt: const DateTimeOrNullConverter().fromJson(json['builtAt']),
    );

Map<String, dynamic> _$$_DetailToJson(_$_Detail instance) => <String, dynamic>{
      'housingType': _$HousingTypeEnumMap[instance.housingType],
      'structureType': _$StructureTypeEnumMap[instance.structureType],
      'totalFloorArea': instance.totalFloorArea,
      'floor': instance.floor.toJson(),
      'findings': instance.findings,
      'builtAt': const DateTimeOrNullConverter().toJson(instance.builtAt),
    };

const _$HousingTypeEnumMap = {
  HousingType.detached: 'detached',
  HousingType.apartmentUnits: 'apartmentUnits',
  HousingType.apartmentBuilding: 'apartmentBuilding',
};

const _$StructureTypeEnumMap = {
  StructureType.wooden: 'wooden',
  StructureType.steel: 'steel',
  StructureType.reinforcedConcrete: 'reinforcedConcrete',
  StructureType.steelReinforcedConcrete: 'steelReinforcedConcrete',
  StructureType.mixed: 'mixed',
};

_$_Floor _$$_FloorFromJson(Map<String, dynamic> json) => _$_Floor(
      ground: json['ground'] as int?,
      underground: json['underground'] as int?,
    );

Map<String, dynamic> _$$_FloorToJson(_$_Floor instance) => <String, dynamic>{
      'ground': instance.ground,
      'underground': instance.underground,
    };
