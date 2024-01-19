// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rebar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Rebar _$RebarFromJson(Map<String, dynamic> json) {
  return _Rebar.fromJson(json);
}

/// @nodoc
mixin _$Rebar {
  bool? get exploration => throw _privateConstructorUsedError;
  Damage get side => throw _privateConstructorUsedError;
  Damage get bottom => throw _privateConstructorUsedError;
  Coverage? get coverage => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;
  bool get notApplicable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RebarCopyWith<Rebar> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RebarCopyWith<$Res> {
  factory $RebarCopyWith(Rebar value, $Res Function(Rebar) then) =
      _$RebarCopyWithImpl<$Res, Rebar>;
  @useResult
  $Res call(
      {bool? exploration,
      Damage side,
      Damage bottom,
      Coverage? coverage,
      String? remarks,
      bool notApplicable});

  $DamageCopyWith<$Res> get side;
  $DamageCopyWith<$Res> get bottom;
}

/// @nodoc
class _$RebarCopyWithImpl<$Res, $Val extends Rebar>
    implements $RebarCopyWith<$Res> {
  _$RebarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exploration = freezed,
    Object? side = null,
    Object? bottom = null,
    Object? coverage = freezed,
    Object? remarks = freezed,
    Object? notApplicable = null,
  }) {
    return _then(_value.copyWith(
      exploration: freezed == exploration
          ? _value.exploration
          : exploration // ignore: cast_nullable_to_non_nullable
              as bool?,
      side: null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as Damage,
      bottom: null == bottom
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as Damage,
      coverage: freezed == coverage
          ? _value.coverage
          : coverage // ignore: cast_nullable_to_non_nullable
              as Coverage?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      notApplicable: null == notApplicable
          ? _value.notApplicable
          : notApplicable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DamageCopyWith<$Res> get side {
    return $DamageCopyWith<$Res>(_value.side, (value) {
      return _then(_value.copyWith(side: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DamageCopyWith<$Res> get bottom {
    return $DamageCopyWith<$Res>(_value.bottom, (value) {
      return _then(_value.copyWith(bottom: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RebarCopyWith<$Res> implements $RebarCopyWith<$Res> {
  factory _$$_RebarCopyWith(_$_Rebar value, $Res Function(_$_Rebar) then) =
      __$$_RebarCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? exploration,
      Damage side,
      Damage bottom,
      Coverage? coverage,
      String? remarks,
      bool notApplicable});

  @override
  $DamageCopyWith<$Res> get side;
  @override
  $DamageCopyWith<$Res> get bottom;
}

/// @nodoc
class __$$_RebarCopyWithImpl<$Res> extends _$RebarCopyWithImpl<$Res, _$_Rebar>
    implements _$$_RebarCopyWith<$Res> {
  __$$_RebarCopyWithImpl(_$_Rebar _value, $Res Function(_$_Rebar) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exploration = freezed,
    Object? side = null,
    Object? bottom = null,
    Object? coverage = freezed,
    Object? remarks = freezed,
    Object? notApplicable = null,
  }) {
    return _then(_$_Rebar(
      exploration: freezed == exploration
          ? _value.exploration
          : exploration // ignore: cast_nullable_to_non_nullable
              as bool?,
      side: null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as Damage,
      bottom: null == bottom
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as Damage,
      coverage: freezed == coverage
          ? _value.coverage
          : coverage // ignore: cast_nullable_to_non_nullable
              as Coverage?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      notApplicable: null == notApplicable
          ? _value.notApplicable
          : notApplicable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Rebar extends _Rebar {
  const _$_Rebar(
      {this.exploration,
      this.side = const Damage(),
      this.bottom = const Damage(),
      this.coverage,
      this.remarks,
      this.notApplicable = false})
      : super._();

  factory _$_Rebar.fromJson(Map<String, dynamic> json) =>
      _$$_RebarFromJson(json);

  @override
  final bool? exploration;
  @override
  @JsonKey()
  final Damage side;
  @override
  @JsonKey()
  final Damage bottom;
  @override
  final Coverage? coverage;
  @override
  final String? remarks;
  @override
  @JsonKey()
  final bool notApplicable;

  @override
  String toString() {
    return 'Rebar(exploration: $exploration, side: $side, bottom: $bottom, coverage: $coverage, remarks: $remarks, notApplicable: $notApplicable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Rebar &&
            (identical(other.exploration, exploration) ||
                other.exploration == exploration) &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.bottom, bottom) || other.bottom == bottom) &&
            (identical(other.coverage, coverage) ||
                other.coverage == coverage) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.notApplicable, notApplicable) ||
                other.notApplicable == notApplicable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, exploration, side, bottom, coverage, remarks, notApplicable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RebarCopyWith<_$_Rebar> get copyWith =>
      __$$_RebarCopyWithImpl<_$_Rebar>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RebarToJson(
      this,
    );
  }
}

abstract class _Rebar extends Rebar {
  const factory _Rebar(
      {final bool? exploration,
      final Damage side,
      final Damage bottom,
      final Coverage? coverage,
      final String? remarks,
      final bool notApplicable}) = _$_Rebar;
  const _Rebar._() : super._();

  factory _Rebar.fromJson(Map<String, dynamic> json) = _$_Rebar.fromJson;

  @override
  bool? get exploration;
  @override
  Damage get side;
  @override
  Damage get bottom;
  @override
  Coverage? get coverage;
  @override
  String? get remarks;
  @override
  bool get notApplicable;
  @override
  @JsonKey(ignore: true)
  _$$_RebarCopyWith<_$_Rebar> get copyWith =>
      throw _privateConstructorUsedError;
}
