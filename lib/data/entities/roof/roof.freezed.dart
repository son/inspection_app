// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'roof.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Roof _$RoofFromJson(Map<String, dynamic> json) {
  return _Roof.fromJson(json);
}

/// @nodoc
mixin _$Roof {
  Necessity? get necessity => throw _privateConstructorUsedError;
  Damage get damage => throw _privateConstructorUsedError;
  Damage get waterProofLayerDamage => throw _privateConstructorUsedError;
  Coverage? get coverage => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;
  bool get notApplicable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoofCopyWith<Roof> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoofCopyWith<$Res> {
  factory $RoofCopyWith(Roof value, $Res Function(Roof) then) =
      _$RoofCopyWithImpl<$Res, Roof>;
  @useResult
  $Res call(
      {Necessity? necessity,
      Damage damage,
      Damage waterProofLayerDamage,
      Coverage? coverage,
      String? remarks,
      bool notApplicable});

  $DamageCopyWith<$Res> get damage;
  $DamageCopyWith<$Res> get waterProofLayerDamage;
}

/// @nodoc
class _$RoofCopyWithImpl<$Res, $Val extends Roof>
    implements $RoofCopyWith<$Res> {
  _$RoofCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? necessity = freezed,
    Object? damage = null,
    Object? waterProofLayerDamage = null,
    Object? coverage = freezed,
    Object? remarks = freezed,
    Object? notApplicable = null,
  }) {
    return _then(_value.copyWith(
      necessity: freezed == necessity
          ? _value.necessity
          : necessity // ignore: cast_nullable_to_non_nullable
              as Necessity?,
      damage: null == damage
          ? _value.damage
          : damage // ignore: cast_nullable_to_non_nullable
              as Damage,
      waterProofLayerDamage: null == waterProofLayerDamage
          ? _value.waterProofLayerDamage
          : waterProofLayerDamage // ignore: cast_nullable_to_non_nullable
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
  $DamageCopyWith<$Res> get damage {
    return $DamageCopyWith<$Res>(_value.damage, (value) {
      return _then(_value.copyWith(damage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DamageCopyWith<$Res> get waterProofLayerDamage {
    return $DamageCopyWith<$Res>(_value.waterProofLayerDamage, (value) {
      return _then(_value.copyWith(waterProofLayerDamage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RoofCopyWith<$Res> implements $RoofCopyWith<$Res> {
  factory _$$_RoofCopyWith(_$_Roof value, $Res Function(_$_Roof) then) =
      __$$_RoofCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Necessity? necessity,
      Damage damage,
      Damage waterProofLayerDamage,
      Coverage? coverage,
      String? remarks,
      bool notApplicable});

  @override
  $DamageCopyWith<$Res> get damage;
  @override
  $DamageCopyWith<$Res> get waterProofLayerDamage;
}

/// @nodoc
class __$$_RoofCopyWithImpl<$Res> extends _$RoofCopyWithImpl<$Res, _$_Roof>
    implements _$$_RoofCopyWith<$Res> {
  __$$_RoofCopyWithImpl(_$_Roof _value, $Res Function(_$_Roof) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? necessity = freezed,
    Object? damage = null,
    Object? waterProofLayerDamage = null,
    Object? coverage = freezed,
    Object? remarks = freezed,
    Object? notApplicable = null,
  }) {
    return _then(_$_Roof(
      necessity: freezed == necessity
          ? _value.necessity
          : necessity // ignore: cast_nullable_to_non_nullable
              as Necessity?,
      damage: null == damage
          ? _value.damage
          : damage // ignore: cast_nullable_to_non_nullable
              as Damage,
      waterProofLayerDamage: null == waterProofLayerDamage
          ? _value.waterProofLayerDamage
          : waterProofLayerDamage // ignore: cast_nullable_to_non_nullable
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
class _$_Roof extends _Roof {
  const _$_Roof(
      {this.necessity,
      this.damage = const Damage(),
      this.waterProofLayerDamage = const Damage(),
      this.coverage,
      this.remarks,
      this.notApplicable = false})
      : super._();

  factory _$_Roof.fromJson(Map<String, dynamic> json) => _$$_RoofFromJson(json);

  @override
  final Necessity? necessity;
  @override
  @JsonKey()
  final Damage damage;
  @override
  @JsonKey()
  final Damage waterProofLayerDamage;
  @override
  final Coverage? coverage;
  @override
  final String? remarks;
  @override
  @JsonKey()
  final bool notApplicable;

  @override
  String toString() {
    return 'Roof(necessity: $necessity, damage: $damage, waterProofLayerDamage: $waterProofLayerDamage, coverage: $coverage, remarks: $remarks, notApplicable: $notApplicable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Roof &&
            (identical(other.necessity, necessity) ||
                other.necessity == necessity) &&
            (identical(other.damage, damage) || other.damage == damage) &&
            (identical(other.waterProofLayerDamage, waterProofLayerDamage) ||
                other.waterProofLayerDamage == waterProofLayerDamage) &&
            (identical(other.coverage, coverage) ||
                other.coverage == coverage) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.notApplicable, notApplicable) ||
                other.notApplicable == notApplicable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, necessity, damage,
      waterProofLayerDamage, coverage, remarks, notApplicable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoofCopyWith<_$_Roof> get copyWith =>
      __$$_RoofCopyWithImpl<_$_Roof>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoofToJson(
      this,
    );
  }
}

abstract class _Roof extends Roof {
  const factory _Roof(
      {final Necessity? necessity,
      final Damage damage,
      final Damage waterProofLayerDamage,
      final Coverage? coverage,
      final String? remarks,
      final bool notApplicable}) = _$_Roof;
  const _Roof._() : super._();

  factory _Roof.fromJson(Map<String, dynamic> json) = _$_Roof.fromJson;

  @override
  Necessity? get necessity;
  @override
  Damage get damage;
  @override
  Damage get waterProofLayerDamage;
  @override
  Coverage? get coverage;
  @override
  String? get remarks;
  @override
  bool get notApplicable;
  @override
  @JsonKey(ignore: true)
  _$$_RoofCopyWith<_$_Roof> get copyWith => throw _privateConstructorUsedError;
}
