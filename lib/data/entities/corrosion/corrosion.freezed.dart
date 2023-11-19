// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'corrosion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Corrosion _$CorrosionFromJson(Map<String, dynamic> json) {
  return _Corrosion.fromJson(json);
}

/// @nodoc
mixin _$Corrosion {
  Damage get corrosion => throw _privateConstructorUsedError;
  Coverage get coverage => throw _privateConstructorUsedError;
  String get remarks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CorrosionCopyWith<Corrosion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CorrosionCopyWith<$Res> {
  factory $CorrosionCopyWith(Corrosion value, $Res Function(Corrosion) then) =
      _$CorrosionCopyWithImpl<$Res, Corrosion>;
  @useResult
  $Res call({Damage corrosion, Coverage coverage, String remarks});

  $DamageCopyWith<$Res> get corrosion;
}

/// @nodoc
class _$CorrosionCopyWithImpl<$Res, $Val extends Corrosion>
    implements $CorrosionCopyWith<$Res> {
  _$CorrosionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? corrosion = null,
    Object? coverage = null,
    Object? remarks = null,
  }) {
    return _then(_value.copyWith(
      corrosion: null == corrosion
          ? _value.corrosion
          : corrosion // ignore: cast_nullable_to_non_nullable
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
  $DamageCopyWith<$Res> get corrosion {
    return $DamageCopyWith<$Res>(_value.corrosion, (value) {
      return _then(_value.copyWith(corrosion: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CorrosionCopyWith<$Res> implements $CorrosionCopyWith<$Res> {
  factory _$$_CorrosionCopyWith(
          _$_Corrosion value, $Res Function(_$_Corrosion) then) =
      __$$_CorrosionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Damage corrosion, Coverage coverage, String remarks});

  @override
  $DamageCopyWith<$Res> get corrosion;
}

/// @nodoc
class __$$_CorrosionCopyWithImpl<$Res>
    extends _$CorrosionCopyWithImpl<$Res, _$_Corrosion>
    implements _$$_CorrosionCopyWith<$Res> {
  __$$_CorrosionCopyWithImpl(
      _$_Corrosion _value, $Res Function(_$_Corrosion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? corrosion = null,
    Object? coverage = null,
    Object? remarks = null,
  }) {
    return _then(_$_Corrosion(
      corrosion: null == corrosion
          ? _value.corrosion
          : corrosion // ignore: cast_nullable_to_non_nullable
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
class _$_Corrosion extends _Corrosion {
  const _$_Corrosion(
      {this.corrosion = const Damage(),
      this.coverage = Coverage.almost,
      this.remarks = ''})
      : super._();

  factory _$_Corrosion.fromJson(Map<String, dynamic> json) =>
      _$$_CorrosionFromJson(json);

  @override
  @JsonKey()
  final Damage corrosion;
  @override
  @JsonKey()
  final Coverage coverage;
  @override
  @JsonKey()
  final String remarks;

  @override
  String toString() {
    return 'Corrosion(corrosion: $corrosion, coverage: $coverage, remarks: $remarks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Corrosion &&
            (identical(other.corrosion, corrosion) ||
                other.corrosion == corrosion) &&
            (identical(other.coverage, coverage) ||
                other.coverage == coverage) &&
            (identical(other.remarks, remarks) || other.remarks == remarks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, corrosion, coverage, remarks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CorrosionCopyWith<_$_Corrosion> get copyWith =>
      __$$_CorrosionCopyWithImpl<_$_Corrosion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CorrosionToJson(
      this,
    );
  }
}

abstract class _Corrosion extends Corrosion {
  const factory _Corrosion(
      {final Damage corrosion,
      final Coverage coverage,
      final String remarks}) = _$_Corrosion;
  const _Corrosion._() : super._();

  factory _Corrosion.fromJson(Map<String, dynamic> json) =
      _$_Corrosion.fromJson;

  @override
  Damage get corrosion;
  @override
  Coverage get coverage;
  @override
  String get remarks;
  @override
  @JsonKey(ignore: true)
  _$$_CorrosionCopyWith<_$_Corrosion> get copyWith =>
      throw _privateConstructorUsedError;
}
