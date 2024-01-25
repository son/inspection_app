// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'situation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Situation _$SituationFromJson(Map<String, dynamic> json) {
  return _Situation.fromJson(json);
}

/// @nodoc
mixin _$Situation {
  Schedule get schedule => throw _privateConstructorUsedError;
  Weather? get weather => throw _privateConstructorUsedError;
  Lifelines get lifeline => throw _privateConstructorUsedError;
  String? get findings => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SituationCopyWith<Situation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SituationCopyWith<$Res> {
  factory $SituationCopyWith(Situation value, $Res Function(Situation) then) =
      _$SituationCopyWithImpl<$Res, Situation>;
  @useResult
  $Res call(
      {Schedule schedule,
      Weather? weather,
      Lifelines lifeline,
      String? findings,
      DateTime? createdAt});

  $ScheduleCopyWith<$Res> get schedule;
  $LifelinesCopyWith<$Res> get lifeline;
}

/// @nodoc
class _$SituationCopyWithImpl<$Res, $Val extends Situation>
    implements $SituationCopyWith<$Res> {
  _$SituationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedule = null,
    Object? weather = freezed,
    Object? lifeline = null,
    Object? findings = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Schedule,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      lifeline: null == lifeline
          ? _value.lifeline
          : lifeline // ignore: cast_nullable_to_non_nullable
              as Lifelines,
      findings: freezed == findings
          ? _value.findings
          : findings // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
  $LifelinesCopyWith<$Res> get lifeline {
    return $LifelinesCopyWith<$Res>(_value.lifeline, (value) {
      return _then(_value.copyWith(lifeline: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SituationCopyWith<$Res> implements $SituationCopyWith<$Res> {
  factory _$$_SituationCopyWith(
          _$_Situation value, $Res Function(_$_Situation) then) =
      __$$_SituationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Schedule schedule,
      Weather? weather,
      Lifelines lifeline,
      String? findings,
      DateTime? createdAt});

  @override
  $ScheduleCopyWith<$Res> get schedule;
  @override
  $LifelinesCopyWith<$Res> get lifeline;
}

/// @nodoc
class __$$_SituationCopyWithImpl<$Res>
    extends _$SituationCopyWithImpl<$Res, _$_Situation>
    implements _$$_SituationCopyWith<$Res> {
  __$$_SituationCopyWithImpl(
      _$_Situation _value, $Res Function(_$_Situation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedule = null,
    Object? weather = freezed,
    Object? lifeline = null,
    Object? findings = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_Situation(
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Schedule,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      lifeline: null == lifeline
          ? _value.lifeline
          : lifeline // ignore: cast_nullable_to_non_nullable
              as Lifelines,
      findings: freezed == findings
          ? _value.findings
          : findings // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Situation extends _Situation {
  const _$_Situation(
      {this.schedule = const Schedule(),
      this.weather,
      this.lifeline = const Lifelines(),
      this.findings,
      this.createdAt})
      : super._();

  factory _$_Situation.fromJson(Map<String, dynamic> json) =>
      _$$_SituationFromJson(json);

  @override
  @JsonKey()
  final Schedule schedule;
  @override
  final Weather? weather;
  @override
  @JsonKey()
  final Lifelines lifeline;
  @override
  final String? findings;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'Situation(schedule: $schedule, weather: $weather, lifeline: $lifeline, findings: $findings, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Situation &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule) &&
            (identical(other.weather, weather) || other.weather == weather) &&
            (identical(other.lifeline, lifeline) ||
                other.lifeline == lifeline) &&
            (identical(other.findings, findings) ||
                other.findings == findings) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, schedule, weather, lifeline, findings, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SituationCopyWith<_$_Situation> get copyWith =>
      __$$_SituationCopyWithImpl<_$_Situation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SituationToJson(
      this,
    );
  }
}

abstract class _Situation extends Situation {
  const factory _Situation(
      {final Schedule schedule,
      final Weather? weather,
      final Lifelines lifeline,
      final String? findings,
      final DateTime? createdAt}) = _$_Situation;
  const _Situation._() : super._();

  factory _Situation.fromJson(Map<String, dynamic> json) =
      _$_Situation.fromJson;

  @override
  Schedule get schedule;
  @override
  Weather? get weather;
  @override
  Lifelines get lifeline;
  @override
  String? get findings;
  @override
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_SituationCopyWith<_$_Situation> get copyWith =>
      throw _privateConstructorUsedError;
}

Schedule _$ScheduleFromJson(Map<String, dynamic> json) {
  return _Schedule.fromJson(json);
}

/// @nodoc
mixin _$Schedule {
  @DateTimeOrNullConverter()
  DateTime? get startedAt => throw _privateConstructorUsedError;
  @DateTimeOrNullConverter()
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
  $Res call(
      {@DateTimeOrNullConverter() DateTime? startedAt,
      @DateTimeOrNullConverter() DateTime? endedAt});
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
  $Res call(
      {@DateTimeOrNullConverter() DateTime? startedAt,
      @DateTimeOrNullConverter() DateTime? endedAt});
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

@JsonSerializable(explicitToJson: true)
class _$_Schedule extends _Schedule {
  const _$_Schedule(
      {@DateTimeOrNullConverter() this.startedAt,
      @DateTimeOrNullConverter() this.endedAt})
      : super._();

  factory _$_Schedule.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleFromJson(json);

  @override
  @DateTimeOrNullConverter()
  final DateTime? startedAt;
  @override
  @DateTimeOrNullConverter()
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
      {@DateTimeOrNullConverter() final DateTime? startedAt,
      @DateTimeOrNullConverter() final DateTime? endedAt}) = _$_Schedule;
  const _Schedule._() : super._();

  factory _Schedule.fromJson(Map<String, dynamic> json) = _$_Schedule.fromJson;

  @override
  @DateTimeOrNullConverter()
  DateTime? get startedAt;
  @override
  @DateTimeOrNullConverter()
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
  bool? get water => throw _privateConstructorUsedError;
  bool? get electricity => throw _privateConstructorUsedError;
  bool? get gas => throw _privateConstructorUsedError;

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
  $Res call({bool? water, bool? electricity, bool? gas});
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
    Object? water = freezed,
    Object? electricity = freezed,
    Object? gas = freezed,
  }) {
    return _then(_value.copyWith(
      water: freezed == water
          ? _value.water
          : water // ignore: cast_nullable_to_non_nullable
              as bool?,
      electricity: freezed == electricity
          ? _value.electricity
          : electricity // ignore: cast_nullable_to_non_nullable
              as bool?,
      gas: freezed == gas
          ? _value.gas
          : gas // ignore: cast_nullable_to_non_nullable
              as bool?,
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
  $Res call({bool? water, bool? electricity, bool? gas});
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
    Object? water = freezed,
    Object? electricity = freezed,
    Object? gas = freezed,
  }) {
    return _then(_$_Lifelines(
      water: freezed == water
          ? _value.water
          : water // ignore: cast_nullable_to_non_nullable
              as bool?,
      electricity: freezed == electricity
          ? _value.electricity
          : electricity // ignore: cast_nullable_to_non_nullable
              as bool?,
      gas: freezed == gas
          ? _value.gas
          : gas // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Lifelines extends _Lifelines {
  const _$_Lifelines({this.water, this.electricity, this.gas}) : super._();

  factory _$_Lifelines.fromJson(Map<String, dynamic> json) =>
      _$$_LifelinesFromJson(json);

  @override
  final bool? water;
  @override
  final bool? electricity;
  @override
  final bool? gas;

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
      {final bool? water,
      final bool? electricity,
      final bool? gas}) = _$_Lifelines;
  const _Lifelines._() : super._();

  factory _Lifelines.fromJson(Map<String, dynamic> json) =
      _$_Lifelines.fromJson;

  @override
  bool? get water;
  @override
  bool? get electricity;
  @override
  bool? get gas;
  @override
  @JsonKey(ignore: true)
  _$$_LifelinesCopyWith<_$_Lifelines> get copyWith =>
      throw _privateConstructorUsedError;
}
