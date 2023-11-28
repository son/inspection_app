// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ant_damage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AntDamage _$AntDamageFromJson(Map<String, dynamic> json) {
  return _AntDamage.fromJson(json);
}

/// @nodoc
mixin _$AntDamage {
  AccessPanel? get accessPanel => throw _privateConstructorUsedError;
  Damage get antDamage => throw _privateConstructorUsedError;
  Coverage? get coverage => throw _privateConstructorUsedError;
  String get remarks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AntDamageCopyWith<AntDamage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AntDamageCopyWith<$Res> {
  factory $AntDamageCopyWith(AntDamage value, $Res Function(AntDamage) then) =
      _$AntDamageCopyWithImpl<$Res, AntDamage>;
  @useResult
  $Res call(
      {AccessPanel? accessPanel,
      Damage antDamage,
      Coverage? coverage,
      String remarks});

  $DamageCopyWith<$Res> get antDamage;
}

/// @nodoc
class _$AntDamageCopyWithImpl<$Res, $Val extends AntDamage>
    implements $AntDamageCopyWith<$Res> {
  _$AntDamageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessPanel = freezed,
    Object? antDamage = null,
    Object? coverage = freezed,
    Object? remarks = null,
  }) {
    return _then(_value.copyWith(
      accessPanel: freezed == accessPanel
          ? _value.accessPanel
          : accessPanel // ignore: cast_nullable_to_non_nullable
              as AccessPanel?,
      antDamage: null == antDamage
          ? _value.antDamage
          : antDamage // ignore: cast_nullable_to_non_nullable
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
  $DamageCopyWith<$Res> get antDamage {
    return $DamageCopyWith<$Res>(_value.antDamage, (value) {
      return _then(_value.copyWith(antDamage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AntDamageCopyWith<$Res> implements $AntDamageCopyWith<$Res> {
  factory _$$_AntDamageCopyWith(
          _$_AntDamage value, $Res Function(_$_AntDamage) then) =
      __$$_AntDamageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AccessPanel? accessPanel,
      Damage antDamage,
      Coverage? coverage,
      String remarks});

  @override
  $DamageCopyWith<$Res> get antDamage;
}

/// @nodoc
class __$$_AntDamageCopyWithImpl<$Res>
    extends _$AntDamageCopyWithImpl<$Res, _$_AntDamage>
    implements _$$_AntDamageCopyWith<$Res> {
  __$$_AntDamageCopyWithImpl(
      _$_AntDamage _value, $Res Function(_$_AntDamage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessPanel = freezed,
    Object? antDamage = null,
    Object? coverage = freezed,
    Object? remarks = null,
  }) {
    return _then(_$_AntDamage(
      accessPanel: freezed == accessPanel
          ? _value.accessPanel
          : accessPanel // ignore: cast_nullable_to_non_nullable
              as AccessPanel?,
      antDamage: null == antDamage
          ? _value.antDamage
          : antDamage // ignore: cast_nullable_to_non_nullable
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
@JsonSerializable()
class _$_AntDamage extends _AntDamage {
  const _$_AntDamage(
      {this.accessPanel,
      this.antDamage = const Damage(),
      this.coverage,
      this.remarks = ''})
      : super._();

  factory _$_AntDamage.fromJson(Map<String, dynamic> json) =>
      _$$_AntDamageFromJson(json);

  @override
  final AccessPanel? accessPanel;
  @override
  @JsonKey()
  final Damage antDamage;
  @override
  final Coverage? coverage;
  @override
  @JsonKey()
  final String remarks;

  @override
  String toString() {
    return 'AntDamage(accessPanel: $accessPanel, antDamage: $antDamage, coverage: $coverage, remarks: $remarks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AntDamage &&
            (identical(other.accessPanel, accessPanel) ||
                other.accessPanel == accessPanel) &&
            (identical(other.antDamage, antDamage) ||
                other.antDamage == antDamage) &&
            (identical(other.coverage, coverage) ||
                other.coverage == coverage) &&
            (identical(other.remarks, remarks) || other.remarks == remarks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessPanel, antDamage, coverage, remarks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AntDamageCopyWith<_$_AntDamage> get copyWith =>
      __$$_AntDamageCopyWithImpl<_$_AntDamage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AntDamageToJson(
      this,
    );
  }
}

abstract class _AntDamage extends AntDamage {
  const factory _AntDamage(
      {final AccessPanel? accessPanel,
      final Damage antDamage,
      final Coverage? coverage,
      final String remarks}) = _$_AntDamage;
  const _AntDamage._() : super._();

  factory _AntDamage.fromJson(Map<String, dynamic> json) =
      _$_AntDamage.fromJson;

  @override
  AccessPanel? get accessPanel;
  @override
  Damage get antDamage;
  @override
  Coverage? get coverage;
  @override
  String get remarks;
  @override
  @JsonKey(ignore: true)
  _$$_AntDamageCopyWith<_$_AntDamage> get copyWith =>
      throw _privateConstructorUsedError;
}
