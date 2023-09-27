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
      repairing: json['repairing'] == null
          ? const Repairing()
          : Repairing.fromJson(json['repairing'] as Map<String, dynamic>),
      renovation: json['renovation'] == null
          ? const Renovation()
          : Renovation.fromJson(json['renovation'] as Map<String, dynamic>),
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
      'repairing': instance.repairing,
      'renovation': instance.renovation,
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

_$_Repairing _$$_RepairingFromJson(Map<String, dynamic> json) => _$_Repairing(
      repaired: json['repaired'] as bool? ?? false,
      parts: json['parts'] as String? ?? '',
      remarks: json['remarks'] as String? ?? '',
    );

Map<String, dynamic> _$$_RepairingToJson(_$_Repairing instance) =>
    <String, dynamic>{
      'repaired': instance.repaired,
      'parts': instance.parts,
      'remarks': instance.remarks,
    };

_$_Renovation _$$_RenovationFromJson(Map<String, dynamic> json) =>
    _$_Renovation(
      renovating: json['renovating'] as bool? ?? false,
      parts: json['parts'] as String? ?? '',
    );

Map<String, dynamic> _$$_RenovationToJson(_$_Renovation instance) =>
    <String, dynamic>{
      'renovating': instance.renovating,
      'parts': instance.parts,
    };
