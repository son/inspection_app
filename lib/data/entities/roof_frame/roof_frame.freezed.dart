// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'roof_frame.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoofFrame _$RoofFrameFromJson(Map<String, dynamic> json) {
  return _RoofFrame.fromJson(json);
}

/// @nodoc
mixin _$RoofFrame {
  Damage get foundationDamage => throw _privateConstructorUsedError;
  Damage get rainRoofFrameLeak => throw _privateConstructorUsedError;
  Coverage? get coverage => throw _privateConstructorUsedError;
  String get remarks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoofFrameCopyWith<RoofFrame> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoofFrameCopyWith<$Res> {
  factory $RoofFrameCopyWith(RoofFrame value, $Res Function(RoofFrame) then) =
      _$RoofFrameCopyWithImpl<$Res, RoofFrame>;
  @useResult
  $Res call(
      {Damage foundationDamage,
      Damage rainRoofFrameLeak,
      Coverage? coverage,
      String remarks});

  $DamageCopyWith<$Res> get foundationDamage;
  $DamageCopyWith<$Res> get rainRoofFrameLeak;
}

/// @nodoc
class _$RoofFrameCopyWithImpl<$Res, $Val extends RoofFrame>
    implements $RoofFrameCopyWith<$Res> {
  _$RoofFrameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foundationDamage = null,
    Object? rainRoofFrameLeak = null,
    Object? coverage = freezed,
    Object? remarks = null,
  }) {
    return _then(_value.copyWith(
      foundationDamage: null == foundationDamage
          ? _value.foundationDamage
          : foundationDamage // ignore: cast_nullable_to_non_nullable
              as Damage,
      rainRoofFrameLeak: null == rainRoofFrameLeak
          ? _value.rainRoofFrameLeak
          : rainRoofFrameLeak // ignore: cast_nullable_to_non_nullable
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
  $DamageCopyWith<$Res> get foundationDamage {
    return $DamageCopyWith<$Res>(_value.foundationDamage, (value) {
      return _then(_value.copyWith(foundationDamage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DamageCopyWith<$Res> get rainRoofFrameLeak {
    return $DamageCopyWith<$Res>(_value.rainRoofFrameLeak, (value) {
      return _then(_value.copyWith(rainRoofFrameLeak: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RoofFrameCopyWith<$Res> implements $RoofFrameCopyWith<$Res> {
  factory _$$_RoofFrameCopyWith(
          _$_RoofFrame value, $Res Function(_$_RoofFrame) then) =
      __$$_RoofFrameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Damage foundationDamage,
      Damage rainRoofFrameLeak,
      Coverage? coverage,
      String remarks});

  @override
  $DamageCopyWith<$Res> get foundationDamage;
  @override
  $DamageCopyWith<$Res> get rainRoofFrameLeak;
}

/// @nodoc
class __$$_RoofFrameCopyWithImpl<$Res>
    extends _$RoofFrameCopyWithImpl<$Res, _$_RoofFrame>
    implements _$$_RoofFrameCopyWith<$Res> {
  __$$_RoofFrameCopyWithImpl(
      _$_RoofFrame _value, $Res Function(_$_RoofFrame) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foundationDamage = null,
    Object? rainRoofFrameLeak = null,
    Object? coverage = freezed,
    Object? remarks = null,
  }) {
    return _then(_$_RoofFrame(
      foundationDamage: null == foundationDamage
          ? _value.foundationDamage
          : foundationDamage // ignore: cast_nullable_to_non_nullable
              as Damage,
      rainRoofFrameLeak: null == rainRoofFrameLeak
          ? _value.rainRoofFrameLeak
          : rainRoofFrameLeak // ignore: cast_nullable_to_non_nullable
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
class _$_RoofFrame extends _RoofFrame {
  const _$_RoofFrame(
      {this.foundationDamage = const Damage(),
      this.rainRoofFrameLeak = const Damage(),
      this.coverage,
      this.remarks = ''})
      : super._();

  factory _$_RoofFrame.fromJson(Map<String, dynamic> json) =>
      _$$_RoofFrameFromJson(json);

  @override
  @JsonKey()
  final Damage foundationDamage;
  @override
  @JsonKey()
  final Damage rainRoofFrameLeak;
  @override
  final Coverage? coverage;
  @override
  @JsonKey()
  final String remarks;

  @override
  String toString() {
    return 'RoofFrame(foundationDamage: $foundationDamage, rainRoofFrameLeak: $rainRoofFrameLeak, coverage: $coverage, remarks: $remarks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoofFrame &&
            (identical(other.foundationDamage, foundationDamage) ||
                other.foundationDamage == foundationDamage) &&
            (identical(other.rainRoofFrameLeak, rainRoofFrameLeak) ||
                other.rainRoofFrameLeak == rainRoofFrameLeak) &&
            (identical(other.coverage, coverage) ||
                other.coverage == coverage) &&
            (identical(other.remarks, remarks) || other.remarks == remarks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, foundationDamage, rainRoofFrameLeak, coverage, remarks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoofFrameCopyWith<_$_RoofFrame> get copyWith =>
      __$$_RoofFrameCopyWithImpl<_$_RoofFrame>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoofFrameToJson(
      this,
    );
  }
}

abstract class _RoofFrame extends RoofFrame {
  const factory _RoofFrame(
      {final Damage foundationDamage,
      final Damage rainRoofFrameLeak,
      final Coverage? coverage,
      final String remarks}) = _$_RoofFrame;
  const _RoofFrame._() : super._();

  factory _RoofFrame.fromJson(Map<String, dynamic> json) =
      _$_RoofFrame.fromJson;

  @override
  Damage get foundationDamage;
  @override
  Damage get rainRoofFrameLeak;
  @override
  Coverage? get coverage;
  @override
  String get remarks;
  @override
  @JsonKey(ignore: true)
  _$$_RoofFrameCopyWith<_$_RoofFrame> get copyWith =>
      throw _privateConstructorUsedError;
}
