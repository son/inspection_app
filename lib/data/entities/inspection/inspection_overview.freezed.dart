// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inspection_overview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InspectionOverview _$InspectionOverviewFromJson(Map<String, dynamic> json) {
  return _InspectionOverview.fromJson(json);
}

/// @nodoc
mixin _$InspectionOverview {
  Schedule get schedule => throw _privateConstructorUsedError;
  Weather get weather => throw _privateConstructorUsedError;
  HousingType get housingType => throw _privateConstructorUsedError;
  String get clientName => throw _privateConstructorUsedError;
  String get witnessName => throw _privateConstructorUsedError;
  User get inspector => throw _privateConstructorUsedError;
  Building get building => throw _privateConstructorUsedError;
  Lifelines get lifeline => throw _privateConstructorUsedError;
  String get findings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InspectionOverviewCopyWith<InspectionOverview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InspectionOverviewCopyWith<$Res> {
  factory $InspectionOverviewCopyWith(
          InspectionOverview value, $Res Function(InspectionOverview) then) =
      _$InspectionOverviewCopyWithImpl<$Res, InspectionOverview>;
  @useResult
  $Res call(
      {Schedule schedule,
      Weather weather,
      HousingType housingType,
      String clientName,
      String witnessName,
      User inspector,
      Building building,
      Lifelines lifeline,
      String findings});

  $ScheduleCopyWith<$Res> get schedule;
  $UserCopyWith<$Res> get inspector;
  $BuildingCopyWith<$Res> get building;
  $LifelinesCopyWith<$Res> get lifeline;
}

/// @nodoc
class _$InspectionOverviewCopyWithImpl<$Res, $Val extends InspectionOverview>
    implements $InspectionOverviewCopyWith<$Res> {
  _$InspectionOverviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedule = null,
    Object? weather = null,
    Object? housingType = null,
    Object? clientName = null,
    Object? witnessName = null,
    Object? inspector = null,
    Object? building = null,
    Object? lifeline = null,
    Object? findings = null,
  }) {
    return _then(_value.copyWith(
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Schedule,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
      housingType: null == housingType
          ? _value.housingType
          : housingType // ignore: cast_nullable_to_non_nullable
              as HousingType,
      clientName: null == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String,
      witnessName: null == witnessName
          ? _value.witnessName
          : witnessName // ignore: cast_nullable_to_non_nullable
              as String,
      inspector: null == inspector
          ? _value.inspector
          : inspector // ignore: cast_nullable_to_non_nullable
              as User,
      building: null == building
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as Building,
      lifeline: null == lifeline
          ? _value.lifeline
          : lifeline // ignore: cast_nullable_to_non_nullable
              as Lifelines,
      findings: null == findings
          ? _value.findings
          : findings // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ScheduleCopyWith<$Res> get schedule {
    return $ScheduleCopyWith<$Res>(_value.schedule, (value) {
      return _then(_value.copyWith(schedule: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get inspector {
    return $UserCopyWith<$Res>(_value.inspector, (value) {
      return _then(_value.copyWith(inspector: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BuildingCopyWith<$Res> get building {
    return $BuildingCopyWith<$Res>(_value.building, (value) {
      return _then(_value.copyWith(building: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LifelinesCopyWith<$Res> get lifeline {
    return $LifelinesCopyWith<$Res>(_value.lifeline, (value) {
      return _then(_value.copyWith(lifeline: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InspectionOverviewCopyWith<$Res>
    implements $InspectionOverviewCopyWith<$Res> {
  factory _$$_InspectionOverviewCopyWith(_$_InspectionOverview value,
          $Res Function(_$_InspectionOverview) then) =
      __$$_InspectionOverviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Schedule schedule,
      Weather weather,
      HousingType housingType,
      String clientName,
      String witnessName,
      User inspector,
      Building building,
      Lifelines lifeline,
      String findings});

  @override
  $ScheduleCopyWith<$Res> get schedule;
  @override
  $UserCopyWith<$Res> get inspector;
  @override
  $BuildingCopyWith<$Res> get building;
  @override
  $LifelinesCopyWith<$Res> get lifeline;
}

/// @nodoc
class __$$_InspectionOverviewCopyWithImpl<$Res>
    extends _$InspectionOverviewCopyWithImpl<$Res, _$_InspectionOverview>
    implements _$$_InspectionOverviewCopyWith<$Res> {
  __$$_InspectionOverviewCopyWithImpl(
      _$_InspectionOverview _value, $Res Function(_$_InspectionOverview) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedule = null,
    Object? weather = null,
    Object? housingType = null,
    Object? clientName = null,
    Object? witnessName = null,
    Object? inspector = null,
    Object? building = null,
    Object? lifeline = null,
    Object? findings = null,
  }) {
    return _then(_$_InspectionOverview(
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Schedule,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
      housingType: null == housingType
          ? _value.housingType
          : housingType // ignore: cast_nullable_to_non_nullable
              as HousingType,
      clientName: null == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String,
      witnessName: null == witnessName
          ? _value.witnessName
          : witnessName // ignore: cast_nullable_to_non_nullable
              as String,
      inspector: null == inspector
          ? _value.inspector
          : inspector // ignore: cast_nullable_to_non_nullable
              as User,
      building: null == building
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as Building,
      lifeline: null == lifeline
          ? _value.lifeline
          : lifeline // ignore: cast_nullable_to_non_nullable
              as Lifelines,
      findings: null == findings
          ? _value.findings
          : findings // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InspectionOverview extends _InspectionOverview {
  const _$_InspectionOverview(
      {this.schedule = const Schedule(),
      this.weather = Weather.unknown,
      this.housingType = HousingType.detached,
      this.clientName = '',
      this.witnessName = '',
      this.inspector = const User(id: ''),
      this.building = const Building(),
      this.lifeline = const Lifelines(),
      this.findings = ''})
      : super._();

  factory _$_InspectionOverview.fromJson(Map<String, dynamic> json) =>
      _$$_InspectionOverviewFromJson(json);

  @override
  @JsonKey()
  final Schedule schedule;
  @override
  @JsonKey()
  final Weather weather;
  @override
  @JsonKey()
  final HousingType housingType;
  @override
  @JsonKey()
  final String clientName;
  @override
  @JsonKey()
  final String witnessName;
  @override
  @JsonKey()
  final User inspector;
  @override
  @JsonKey()
  final Building building;
  @override
  @JsonKey()
  final Lifelines lifeline;
  @override
  @JsonKey()
  final String findings;

  @override
  String toString() {
    return 'InspectionOverview(schedule: $schedule, weather: $weather, housingType: $housingType, clientName: $clientName, witnessName: $witnessName, inspector: $inspector, building: $building, lifeline: $lifeline, findings: $findings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InspectionOverview &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule) &&
            (identical(other.weather, weather) || other.weather == weather) &&
            (identical(other.housingType, housingType) ||
                other.housingType == housingType) &&
            (identical(other.clientName, clientName) ||
                other.clientName == clientName) &&
            (identical(other.witnessName, witnessName) ||
                other.witnessName == witnessName) &&
            (identical(other.inspector, inspector) ||
                other.inspector == inspector) &&
            (identical(other.building, building) ||
                other.building == building) &&
            (identical(other.lifeline, lifeline) ||
                other.lifeline == lifeline) &&
            (identical(other.findings, findings) ||
                other.findings == findings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, schedule, weather, housingType,
      clientName, witnessName, inspector, building, lifeline, findings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InspectionOverviewCopyWith<_$_InspectionOverview> get copyWith =>
      __$$_InspectionOverviewCopyWithImpl<_$_InspectionOverview>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InspectionOverviewToJson(
      this,
    );
  }
}

abstract class _InspectionOverview extends InspectionOverview {
  const factory _InspectionOverview(
      {final Schedule schedule,
      final Weather weather,
      final HousingType housingType,
      final String clientName,
      final String witnessName,
      final User inspector,
      final Building building,
      final Lifelines lifeline,
      final String findings}) = _$_InspectionOverview;
  const _InspectionOverview._() : super._();

  factory _InspectionOverview.fromJson(Map<String, dynamic> json) =
      _$_InspectionOverview.fromJson;

  @override
  Schedule get schedule;
  @override
  Weather get weather;
  @override
  HousingType get housingType;
  @override
  String get clientName;
  @override
  String get witnessName;
  @override
  User get inspector;
  @override
  Building get building;
  @override
  Lifelines get lifeline;
  @override
  String get findings;
  @override
  @JsonKey(ignore: true)
  _$$_InspectionOverviewCopyWith<_$_InspectionOverview> get copyWith =>
      throw _privateConstructorUsedError;
}

Schedule _$ScheduleFromJson(Map<String, dynamic> json) {
  return _Schedule.fromJson(json);
}

/// @nodoc
mixin _$Schedule {
  DateTime? get startedAt => throw _privateConstructorUsedError;
  DateTime? get endedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleCopyWith<Schedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleCopyWith<$Res> {
  factory $ScheduleCopyWith(Schedule value, $Res Function(Schedule) then) =
      _$ScheduleCopyWithImpl<$Res, Schedule>;
  @useResult
  $Res call({DateTime? startedAt, DateTime? endedAt});
}

/// @nodoc
class _$ScheduleCopyWithImpl<$Res, $Val extends Schedule>
    implements $ScheduleCopyWith<$Res> {
  _$ScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startedAt = freezed,
    Object? endedAt = freezed,
  }) {
    return _then(_value.copyWith(
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScheduleCopyWith<$Res> implements $ScheduleCopyWith<$Res> {
  factory _$$_ScheduleCopyWith(
          _$_Schedule value, $Res Function(_$_Schedule) then) =
      __$$_ScheduleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? startedAt, DateTime? endedAt});
}

/// @nodoc
class __$$_ScheduleCopyWithImpl<$Res>
    extends _$ScheduleCopyWithImpl<$Res, _$_Schedule>
    implements _$$_ScheduleCopyWith<$Res> {
  __$$_ScheduleCopyWithImpl(
      _$_Schedule _value, $Res Function(_$_Schedule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startedAt = freezed,
    Object? endedAt = freezed,
  }) {
    return _then(_$_Schedule(
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Schedule extends _Schedule {
  const _$_Schedule({this.startedAt, this.endedAt}) : super._();

  factory _$_Schedule.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleFromJson(json);

  @override
  final DateTime? startedAt;
  @override
  final DateTime? endedAt;

  @override
  String toString() {
    return 'Schedule(startedAt: $startedAt, endedAt: $endedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Schedule &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startedAt, endedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleCopyWith<_$_Schedule> get copyWith =>
      __$$_ScheduleCopyWithImpl<_$_Schedule>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleToJson(
      this,
    );
  }
}

abstract class _Schedule extends Schedule {
  const factory _Schedule(
      {final DateTime? startedAt, final DateTime? endedAt}) = _$_Schedule;
  const _Schedule._() : super._();

  factory _Schedule.fromJson(Map<String, dynamic> json) = _$_Schedule.fromJson;

  @override
  DateTime? get startedAt;
  @override
  DateTime? get endedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleCopyWith<_$_Schedule> get copyWith =>
      throw _privateConstructorUsedError;
}

Lifelines _$LifelinesFromJson(Map<String, dynamic> json) {
  return _Lifelines.fromJson(json);
}

/// @nodoc
mixin _$Lifelines {
  bool get water => throw _privateConstructorUsedError;
  bool get electricity => throw _privateConstructorUsedError;
  bool get gas => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LifelinesCopyWith<Lifelines> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LifelinesCopyWith<$Res> {
  factory $LifelinesCopyWith(Lifelines value, $Res Function(Lifelines) then) =
      _$LifelinesCopyWithImpl<$Res, Lifelines>;
  @useResult
  $Res call({bool water, bool electricity, bool gas});
}

/// @nodoc
class _$LifelinesCopyWithImpl<$Res, $Val extends Lifelines>
    implements $LifelinesCopyWith<$Res> {
  _$LifelinesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? water = null,
    Object? electricity = null,
    Object? gas = null,
  }) {
    return _then(_value.copyWith(
      water: null == water
          ? _value.water
          : water // ignore: cast_nullable_to_non_nullable
              as bool,
      electricity: null == electricity
          ? _value.electricity
          : electricity // ignore: cast_nullable_to_non_nullable
              as bool,
      gas: null == gas
          ? _value.gas
          : gas // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LifelinesCopyWith<$Res> implements $LifelinesCopyWith<$Res> {
  factory _$$_LifelinesCopyWith(
          _$_Lifelines value, $Res Function(_$_Lifelines) then) =
      __$$_LifelinesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool water, bool electricity, bool gas});
}

/// @nodoc
class __$$_LifelinesCopyWithImpl<$Res>
    extends _$LifelinesCopyWithImpl<$Res, _$_Lifelines>
    implements _$$_LifelinesCopyWith<$Res> {
  __$$_LifelinesCopyWithImpl(
      _$_Lifelines _value, $Res Function(_$_Lifelines) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? water = null,
    Object? electricity = null,
    Object? gas = null,
  }) {
    return _then(_$_Lifelines(
      water: null == water
          ? _value.water
          : water // ignore: cast_nullable_to_non_nullable
              as bool,
      electricity: null == electricity
          ? _value.electricity
          : electricity // ignore: cast_nullable_to_non_nullable
              as bool,
      gas: null == gas
          ? _value.gas
          : gas // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Lifelines extends _Lifelines {
  const _$_Lifelines(
      {this.water = false, this.electricity = false, this.gas = false})
      : super._();

  factory _$_Lifelines.fromJson(Map<String, dynamic> json) =>
      _$$_LifelinesFromJson(json);

  @override
  @JsonKey()
  final bool water;
  @override
  @JsonKey()
  final bool electricity;
  @override
  @JsonKey()
  final bool gas;

  @override
  String toString() {
    return 'Lifelines(water: $water, electricity: $electricity, gas: $gas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Lifelines &&
            (identical(other.water, water) || other.water == water) &&
            (identical(other.electricity, electricity) ||
                other.electricity == electricity) &&
            (identical(other.gas, gas) || other.gas == gas));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, water, electricity, gas);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LifelinesCopyWith<_$_Lifelines> get copyWith =>
      __$$_LifelinesCopyWithImpl<_$_Lifelines>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LifelinesToJson(
      this,
    );
  }
}

abstract class _Lifelines extends Lifelines {
  const factory _Lifelines(
      {final bool water,
      final bool electricity,
      final bool gas}) = _$_Lifelines;
  const _Lifelines._() : super._();

  factory _Lifelines.fromJson(Map<String, dynamic> json) =
      _$_Lifelines.fromJson;

  @override
  bool get water;
  @override
  bool get electricity;
  @override
  bool get gas;
  @override
  @JsonKey(ignore: true)
  _$$_LifelinesCopyWith<_$_Lifelines> get copyWith =>
      throw _privateConstructorUsedError;
}
