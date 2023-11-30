// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'floor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Floor _$FloorFromJson(Map<String, dynamic> json) {
  return _Floor.fromJson(json);
}

/// @nodoc
mixin _$Floor {
  Damage get damage => throw _privateConstructorUsedError;
  Damage get sinking => throw _privateConstructorUsedError;
  Damage get inclination => throw _privateConstructorUsedError;
  Coverage? get coverage => throw _privateConstructorUsedError;
  String get remarks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FloorCopyWith<Floor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FloorCopyWith<$Res> {
  factory $FloorCopyWith(Floor value, $Res Function(Floor) then) =
      _$FloorCopyWithImpl<$Res, Floor>;
  @useResult
  $Res call(
      {Damage damage,
      Damage sinking,
      Damage inclination,
      Coverage? coverage,
      String remarks});

  $DamageCopyWith<$Res> get damage;
  $DamageCopyWith<$Res> get sinking;
  $DamageCopyWith<$Res> get inclination;
}

/// @nodoc
class _$FloorCopyWithImpl<$Res, $Val extends Floor>
    implements $FloorCopyWith<$Res> {
  _$FloorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? damage = null,
    Object? sinking = null,
    Object? inclination = null,
    Object? coverage = freezed,
    Object? remarks = null,
  }) {
    return _then(_value.copyWith(
      damage: null == damage
          ? _value.damage
          : damage // ignore: cast_nullable_to_non_nullable
              as Damage,
      sinking: null == sinking
          ? _value.sinking
          : sinking // ignore: cast_nullable_to_non_nullable
              as Damage,
      inclination: null == inclination
          ? _value.inclination
          : inclination // ignore: cast_nullable_to_non_nullable
              as Damage,
      coverage: freezed == coverage
          ? _value.coverage
          : coverage // ignore: cast_nullable_to_non_nullable
              as Coverage?,
      remarks: null == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DamageCopyWith<$Res> get damage {
    return $DamageCopyWith<$Res>(_value.damage, (value) {
      return _then(_value.copyWith(damage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DamageCopyWith<$Res> get sinking {
    return $DamageCopyWith<$Res>(_value.sinking, (value) {
      return _then(_value.copyWith(sinking: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DamageCopyWith<$Res> get inclination {
    return $DamageCopyWith<$Res>(_value.inclination, (value) {
      return _then(_value.copyWith(inclination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FloorCopyWith<$Res> implements $FloorCopyWith<$Res> {
  factory _$$_FloorCopyWith(_$_Floor value, $Res Function(_$_Floor) then) =
      __$$_FloorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Damage damage,
      Damage sinking,
      Damage inclination,
      Coverage? coverage,
      String remarks});

  @override
  $DamageCopyWith<$Res> get damage;
  @override
  $DamageCopyWith<$Res> get sinking;
  @override
  $DamageCopyWith<$Res> get inclination;
}

/// @nodoc
class __$$_FloorCopyWithImpl<$Res> extends _$FloorCopyWithImpl<$Res, _$_Floor>
    implements _$$_FloorCopyWith<$Res> {
  __$$_FloorCopyWithImpl(_$_Floor _value, $Res Function(_$_Floor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? damage = null,
    Object? sinking = null,
    Object? inclination = null,
    Object? coverage = freezed,
    Object? remarks = null,
  }) {
    return _then(_$_Floor(
      damage: null == damage
          ? _value.damage
          : damage // ignore: cast_nullable_to_non_nullable
              as Damage,
      sinking: null == sinking
          ? _value.sinking
          : sinking // ignore: cast_nullable_to_non_nullable
              as Damage,
      inclination: null == inclination
          ? _value.inclination
          : inclination // ignore: cast_nullable_to_non_nullable
              as Damage,
      coverage: freezed == coverage
          ? _value.coverage
          : coverage // ignore: cast_nullable_to_non_nullable
              as Coverage?,
      remarks: null == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Floor extends _Floor {
  const _$_Floor(
      {this.damage = const Damage(),
      this.sinking = const Damage(),
      this.inclination = const Damage(),
      this.coverage,
      this.remarks = ''})
      : super._();

  factory _$_Floor.fromJson(Map<String, dynamic> json) =>
      _$$_FloorFromJson(json);

  @override
  @JsonKey()
  final Damage damage;
  @override
  @JsonKey()
  final Damage sinking;
  @override
  @JsonKey()
  final Damage inclination;
  @override
  final Coverage? coverage;
  @override
  @JsonKey()
  final String remarks;

  @override
  String toString() {
    return 'Floor(damage: $damage, sinking: $sinking, inclination: $inclination, coverage: $coverage, remarks: $remarks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Floor &&
            (identical(other.damage, damage) || other.damage == damage) &&
            (identical(other.sinking, sinking) || other.sinking == sinking) &&
            (identical(other.inclination, inclination) ||
                other.inclination == inclination) &&
            (identical(other.coverage, coverage) ||
                other.coverage == coverage) &&
            (identical(other.remarks, remarks) || other.remarks == remarks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, damage, sinking, inclination, coverage, remarks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FloorCopyWith<_$_Floor> get copyWith =>
      __$$_FloorCopyWithImpl<_$_Floor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FloorToJson(
      this,
    );
  }
}

abstract class _Floor extends Floor {
  const factory _Floor(
      {final Damage damage,
      final Damage sinking,
      final Damage inclination,
      final Coverage? coverage,
      final String remarks}) = _$_Floor;
  const _Floor._() : super._();

  factory _Floor.fromJson(Map<String, dynamic> json) = _$_Floor.fromJson;

  @override
  Damage get damage;
  @override
  Damage get sinking;
  @override
  Damage get inclination;
  @override
  Coverage? get coverage;
  @override
  String get remarks;
  @override
  @JsonKey(ignore: true)
  _$$_FloorCopyWith<_$_Floor> get copyWith =>
      throw _privateConstructorUsedError;
}
