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
      weather: $enumDecodeNullable(_$WeatherEnumMap, json['weather']),
      housingType:
          $enumDecodeNullable(_$HousingTypeEnumMap, json['housingType']),
      clientName: json['clientName'] as String?,
      witnessName: json['witnessName'] as String?,
      building: json['building'] == null
          ? const Building()
          : Building.fromJson(json['building'] as Map<String, dynamic>),
      lifeline: json['lifeline'] == null
          ? const Lifelines()
          : Lifelines.fromJson(json['lifeline'] as Map<String, dynamic>),
      findings: json['findings'] as String? ?? '',
    );

Map<String, dynamic> _$$_InspectionOverviewToJson(
        _$_InspectionOverview instance) =>
    <String, dynamic>{
      'schedule': instance.schedule.toJson(),
      'weather': _$WeatherEnumMap[instance.weather],
      'housingType': _$HousingTypeEnumMap[instance.housingType],
      'clientName': instance.clientName,
      'witnessName': instance.witnessName,
      'building': instance.building.toJson(),
      'lifeline': instance.lifeline.toJson(),
      'findings': instance.findings,
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
      startedAt: const DateTimeOrNullConverter().fromJson(json['startedAt']),
      endedAt: const DateTimeOrNullConverter().fromJson(json['endedAt']),
    );

Map<String, dynamic> _$$_ScheduleToJson(_$_Schedule instance) =>
    <String, dynamic>{
      'startedAt': const DateTimeOrNullConverter().toJson(instance.startedAt),
      'endedAt': const DateTimeOrNullConverter().toJson(instance.endedAt),
    };

_$_Lifelines _$$_LifelinesFromJson(Map<String, dynamic> json) => _$_Lifelines(
      water: json['water'] as bool?,
      electricity: json['electricity'] as bool?,
      gas: json['gas'] as bool?,
    );

Map<String, dynamic> _$$_LifelinesToJson(_$_Lifelines instance) =>
    <String, dynamic>{
      'water': instance.water,
      'electricity': instance.electricity,
      'gas': instance.gas,
    };
