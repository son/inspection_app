// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_and_floor_framing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BaseAndFloorFraming _$BaseAndFloorFramingFromJson(Map<String, dynamic> json) {
  return _BaseAndFloorFraming.fromJson(json);
}

/// @nodoc
mixin _$BaseAndFloorFraming {
  Damage get damage => throw _privateConstructorUsedError;
  Coverage get coverage => throw _privateConstructorUsedError;
  String get remarks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseAndFloorFramingCopyWith<BaseAndFloorFraming> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseAndFloorFramingCopyWith<$Res> {
  factory $BaseAndFloorFramingCopyWith(
          BaseAndFloorFraming value, $Res Function(BaseAndFloorFraming) then) =
      _$BaseAndFloorFramingCopyWithImpl<$Res, BaseAndFloorFraming>;
  @useResult
  $Res call({Damage damage, Coverage coverage, String remarks});

  $DamageCopyWith<$Res> get damage;
}

/// @nodoc
class _$BaseAndFloorFramingCopyWithImpl<$Res, $Val extends BaseAndFloorFraming>
    implements $BaseAndFloorFramingCopyWith<$Res> {
  _$BaseAndFloorFramingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? damage = null,
    Object? coverage = null,
    Object? remarks = null,
  }) {
    return _then(_value.copyWith(
      damage: null == damage
          ? _value.damage
          : damage // ignore: cast_nullable_to_non_nullable
              as Damage,
      coverage: null == coverage
          ? _value.coverage
          : coverage // ignore: cast_nullable_to_non_nullable
              as Coverage,
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
}

/// @nodoc
abstract class _$$_BaseAndFloorFramingCopyWith<$Res>
    implements $BaseAndFloorFramingCopyWith<$Res> {
  factory _$$_BaseAndFloorFramingCopyWith(_$_BaseAndFloorFraming value,
          $Res Function(_$_BaseAndFloorFraming) then) =
      __$$_BaseAndFloorFramingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Damage damage, Coverage coverage, String remarks});

  @override
  $DamageCopyWith<$Res> get damage;
}

/// @nodoc
class __$$_BaseAndFloorFramingCopyWithImpl<$Res>
    extends _$BaseAndFloorFramingCopyWithImpl<$Res, _$_BaseAndFloorFraming>
    implements _$$_BaseAndFloorFramingCopyWith<$Res> {
  __$$_BaseAndFloorFramingCopyWithImpl(_$_BaseAndFloorFraming _value,
      $Res Function(_$_BaseAndFloorFraming) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? damage = null,
    Object? coverage = null,
    Object? remarks = null,
  }) {
    return _then(_$_BaseAndFloorFraming(
      damage: null == damage
          ? _value.damage
          : damage // ignore: cast_nullable_to_non_nullable
              as Damage,
      coverage: null == coverage
          ? _value.coverage
          : coverage // ignore: cast_nullable_to_non_nullable
              as Coverage,
      remarks: null == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BaseAndFloorFraming extends _BaseAndFloorFraming {
  const _$_BaseAndFloorFraming(
      {this.damage = const Damage(),
      this.coverage = Coverage.almost,
      this.remarks = ''})
      : super._();

  factory _$_BaseAndFloorFraming.fromJson(Map<String, dynamic> json) =>
      _$$_BaseAndFloorFramingFromJson(json);

  @override
  @JsonKey()
  final Damage damage;
  @override
  @JsonKey()
  final Coverage coverage;
  @override
  @JsonKey()
  final String remarks;

  @override
  String toString() {
    return 'BaseAndFloorFraming(damage: $damage, coverage: $coverage, remarks: $remarks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BaseAndFloorFraming &&
            (identical(other.damage, damage) || other.damage == damage) &&
            (identical(other.coverage, coverage) ||
                other.coverage == coverage) &&
            (identical(other.remarks, remarks) || other.remarks == remarks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, damage, coverage, remarks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BaseAndFloorFramingCopyWith<_$_BaseAndFloorFraming> get copyWith =>
      __$$_BaseAndFloorFramingCopyWithImpl<_$_BaseAndFloorFraming>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BaseAndFloorFramingToJson(
      this,
    );
  }
}

abstract class _BaseAndFloorFraming extends BaseAndFloorFraming {
  const factory _BaseAndFloorFraming(
      {final Damage damage,
      final Coverage coverage,
      final String remarks}) = _$_BaseAndFloorFraming;
  const _BaseAndFloorFraming._() : super._();

  factory _BaseAndFloorFraming.fromJson(Map<String, dynamic> json) =
      _$_BaseAndFloorFraming.fromJson;

  @override
  Damage get damage;
  @override
  Coverage get coverage;
  @override
  String get remarks;
  @override
  @JsonKey(ignore: true)
  _$$_BaseAndFloorFramingCopyWith<_$_BaseAndFloorFraming> get copyWith =>
      throw _privateConstructorUsedError;
}
