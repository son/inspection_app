import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/building/building.dart';

import '../user/user.dart';

part 'inspection_overview.freezed.dart';
part 'inspection_overview.g.dart';

@freezed
class InspectionOverview with _$InspectionOverview {
  const InspectionOverview._();

  const factory InspectionOverview({
    @Default(Schedule()) Schedule schedule,
    @Default(Weather.unknown) Weather weather,
    @Default(HousingType.detached) HousingType housingType,
    @Default('') String clientName,
    @Default('') String witnessName,
    @Default(User(id: '')) User inspector,
    @Default(Building()) Building building,
    @Default(Lifelines()) Lifelines lifeline,
  }) = _InspectionOverview;

  factory InspectionOverview.fromJson(Map<String, dynamic> json) =>
      _$InspectionOverviewFromJson(json);
}

enum Weather {
  unknown(name: '不明'),
  sunny(name: '晴れ'),
  cloudy(name: 'くもり'),
  rainy(name: '雨'),
  snowy(name: '雪');

  const Weather({required this.name});

  final String name;
}

enum HousingType {
  detached(name: '一戸建ての住宅'),
  apartmentUnits(name: '（共同住宅など）住戸型'),
  apartmentBuilding(name: '（共同住宅など）住棟型');

  const HousingType({required this.name});

  final String name;
  static const title = '調査の区分';
}

@freezed
class Schedule with _$Schedule {
  const Schedule._();

  const factory Schedule({
    DateTime? startedAt,
    DateTime? endedAt,
  }) = _Schedule;

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);
}

@freezed
class Lifelines with _$Lifelines {
  const Lifelines._();

  const factory Lifelines({
    @Default(false) bool water,
    @Default(false) bool electricity,
    @Default(false) bool gas,
  }) = _Lifelines;

  factory Lifelines.fromJson(Map<String, dynamic> json) =>
      _$LifelinesFromJson(json);
}
