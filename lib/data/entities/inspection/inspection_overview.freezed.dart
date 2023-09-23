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
      User inspector});

  $ScheduleCopyWith<$Res> get schedule;
  $UserCopyWith<$Res> get inspector;
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
      User inspector});

  @override
  $ScheduleCopyWith<$Res> get schedule;
  @override
  $UserCopyWith<$Res> get inspector;
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InspectionOverview extends _InspectionOverview {
  const _$_InspectionOverview(
      {this.schedule = Schedule.empty,
      this.weather = Weather.unknown,
      this.housingType = HousingType.none,
      this.clientName = '',
      this.witnessName = '',
      this.inspector = User.empty})
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
  String toString() {
    return 'InspectionOverview(schedule: $schedule, weather: $weather, housingType: $housingType, clientName: $clientName, witnessName: $witnessName, inspector: $inspector)';
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
                other.inspector == inspector));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, schedule, weather, housingType,
      clientName, witnessName, inspector);

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
      final User inspector}) = _$_InspectionOverview;
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
