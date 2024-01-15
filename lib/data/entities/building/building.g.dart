// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'building.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Building _$$_BuildingFromJson(Map<String, dynamic> json) => _$_Building(
      name: json['name'] as String?,
      structureType:
          $enumDecodeNullable(_$StructureTypeEnumMap, json['structureType']),
      totalFloorArea: (json['totalFloorArea'] as num?)?.toDouble(),
      floor: json['floor'] == null
          ? const Floor()
          : Floor.fromJson(json['floor'] as Map<String, dynamic>),
      address: json['address'] == null
          ? const Address()
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      prefecture: json['prefecture'] as String?,
      repairing: json['repairing'] == null
          ? const Repairing()
          : Repairing.fromJson(json['repairing'] as Map<String, dynamic>),
      renovation: json['renovation'] == null
          ? const Renovation()
          : Renovation.fromJson(json['renovation'] as Map<String, dynamic>),
      findings: json['findings'] as String?,
      builtAt: const DateTimeOrNullConverter().fromJson(json['builtAt']),
    );

Map<String, dynamic> _$$_BuildingToJson(_$_Building instance) =>
    <String, dynamic>{
      'name': instance.name,
      'structureType': _$StructureTypeEnumMap[instance.structureType],
      'totalFloorArea': instance.totalFloorArea,
      'floor': instance.floor.toJson(),
      'address': instance.address.toJson(),
      'prefecture': instance.prefecture,
      'repairing': instance.repairing.toJson(),
      'renovation': instance.renovation.toJson(),
      'findings': instance.findings,
      'builtAt': const DateTimeOrNullConverter().toJson(instance.builtAt),
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

_$_Repairing _$$_RepairingFromJson(Map<String, dynamic> json) => _$_Repairing(
      repaired: json['repaired'] as bool?,
      parts: json['parts'] as String?,
      remarks: json['remarks'] as String?,
      method: json['method'] as String?,
    );

Map<String, dynamic> _$$_RepairingToJson(_$_Repairing instance) =>
    <String, dynamic>{
      'repaired': instance.repaired,
      'parts': instance.parts,
      'remarks': instance.remarks,
      'method': instance.method,
    };

_$_Renovation _$$_RenovationFromJson(Map<String, dynamic> json) =>
    _$_Renovation(
      renovating: json['renovating'] as bool?,
      parts: json['parts'] as String?,
    );

Map<String, dynamic> _$$_RenovationToJson(_$_Renovation instance) =>
    <String, dynamic>{
      'renovating': instance.renovating,
      'parts': instance.parts,
    };
