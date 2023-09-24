// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_overview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InspectionOverview _$$_InspectionOverviewFromJson(
        Map<String, dynamic> json) =>
    _$_InspectionOverview(
      schedule: json['schedule'] == null
          ? const Schedule()
          : Schedule.fromJson(json['schedule'] as Map<String, dynamic>),
      weather: $enumDecodeNullable(_$WeatherEnumMap, json['weather']) ??
          Weather.unknown,
      housingType:
          $enumDecodeNullable(_$HousingTypeEnumMap, json['housingType']) ??
              HousingType.detached,
      clientName: json['clientName'] as String? ?? '',
      witnessName: json['witnessName'] as String? ?? '',
      inspector: json['inspector'] == null
          ? const User(id: '')
          : User.fromJson(json['inspector'] as Map<String, dynamic>),
      building: json['building'] == null
          ? const Building()
          : Building.fromJson(json['building'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_InspectionOverviewToJson(
        _$_InspectionOverview instance) =>
    <String, dynamic>{
      'schedule': instance.schedule,
      'weather': _$WeatherEnumMap[instance.weather]!,
      'housingType': _$HousingTypeEnumMap[instance.housingType]!,
      'clientName': instance.clientName,
      'witnessName': instance.witnessName,
      'inspector': instance.inspector,
      'building': instance.building,
    };

const _$WeatherEnumMap = {
  Weather.unknown: 'unknown',
  Weather.sunny: 'sunny',
  Weather.cloudy: 'cloudy',
  Weather.rainy: 'rainy',
  Weather.snowy: 'snowy',
};

const _$HousingTypeEnumMap = {
  HousingType.detached: 'detached',
  HousingType.apartmentUnits: 'apartmentUnits',
  HousingType.apartmentBuilding: 'apartmentBuilding',
};

_$_Schedule _$$_ScheduleFromJson(Map<String, dynamic> json) => _$_Schedule(
      startedAt: json['startedAt'] == null
          ? null
          : DateTime.parse(json['startedAt'] as String),
      endedAt: json['endedAt'] == null
          ? null
          : DateTime.parse(json['endedAt'] as String),
    );

Map<String, dynamic> _$$_ScheduleToJson(_$_Schedule instance) =>
    <String, dynamic>{
      'startedAt': instance.startedAt?.toIso8601String(),
      'endedAt': instance.endedAt?.toIso8601String(),
    };
