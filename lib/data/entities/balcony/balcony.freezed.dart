// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'balcony.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Balcony _$BalconyFromJson(Map<String, dynamic> json) {
  return _Balcony.fromJson(json);
}

/// @nodoc
mixin _$Balcony {
  Damage get foundation => throw _privateConstructorUsedError;
  Damage get waterProofLayer => throw _privateConstructorUsedError;
  Coverage get foundationCoverage => throw _privateConstructorUsedError;
  Coverage get waterProofLayerCoverage => throw _privateConstructorUsedError;
  String get remarks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BalconyCopyWith<Balcony> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalconyCopyWith<$Res> {
  factory $BalconyCopyWith(Balcony value, $Res Function(Balcony) then) =
      _$BalconyCopyWithImpl<$Res, Balcony>;
  @useResult
  $Res call(
      {Damage foundation,
      Damage waterProofLayer,
      Coverage foundationCoverage,
      Coverage waterProofLayerCoverage,
      String remarks});

  $DamageCopyWith<$Res> get foundation;
  $DamageCopyWith<$Res> get waterProofLayer;
}

/// @nodoc
class _$BalconyCopyWithImpl<$Res, $Val extends Balcony>
    implements $BalconyCopyWith<$Res> {
  _$BalconyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foundation = null,
    Object? waterProofLayer = null,
    Object? foundationCoverage = null,
    Object? waterProofLayerCoverage = null,
    Object? remarks = null,
  }) {
    return _then(_value.copyWith(
      foundation: null == foundation
          ? _value.foundation
          : foundation // ignore: cast_nullable_to_non_nullable
              as Damage,
      waterProofLayer: null == waterProofLayer
          ? _value.waterProofLayer
          : waterProofLayer // ignore: cast_nullable_to_non_nullable
              as Damage,
      foundationCoverage: null == foundationCoverage
          ? _value.foundationCoverage
          : foundationCoverage // ignore: cast_nullable_to_non_nullable
              as Coverage,
      waterProofLayerCoverage: null == waterProofLayerCoverage
          ? _value.waterProofLayerCoverage
          : waterProofLayerCoverage // ignore: cast_nullable_to_non_nullable
              as Coverage,
      remarks: null == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DamageCopyWith<$Res> get foundation {
    return $DamageCopyWith<$Res>(_value.foundation, (value) {
      return _then(_value.copyWith(foundation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DamageCopyWith<$Res> get waterProofLayer {
    return $DamageCopyWith<$Res>(_value.waterProofLayer, (value) {
      return _then(_value.copyWith(waterProofLayer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BalconyCopyWith<$Res> implements $BalconyCopyWith<$Res> {
  factory _$$_BalconyCopyWith(
          _$_Balcony value, $Res Function(_$_Balcony) then) =
      __$$_BalconyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Damage foundation,
      Damage waterProofLayer,
      Coverage foundationCoverage,
      Coverage waterProofLayerCoverage,
      String remarks});

  @override
  $DamageCopyWith<$Res> get foundation;
  @override
  $DamageCopyWith<$Res> get waterProofLayer;
}

/// @nodoc
class __$$_BalconyCopyWithImpl<$Res>
    extends _$BalconyCopyWithImpl<$Res, _$_Balcony>
    implements _$$_BalconyCopyWith<$Res> {
  __$$_BalconyCopyWithImpl(_$_Balcony _value, $Res Function(_$_Balcony) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foundation = null,
    Object? waterProofLayer = null,
    Object? foundationCoverage = null,
    Object? waterProofLayerCoverage = null,
    Object? remarks = null,
  }) {
    return _then(_$_Balcony(
      foundation: null == foundation
          ? _value.foundation
          : foundation // ignore: cast_nullable_to_non_nullable
              as Damage,
      waterProofLayer: null == waterProofLayer
          ? _value.waterProofLayer
          : waterProofLayer // ignore: cast_nullable_to_non_nullable
              as Damage,
      foundationCoverage: null == foundationCoverage
          ? _value.foundationCoverage
          : foundationCoverage // ignore: cast_nullable_to_non_nullable
              as Coverage,
      waterProofLayerCoverage: null == waterProofLayerCoverage
          ? _value.waterProofLayerCoverage
          : waterProofLayerCoverage // ignore: cast_nullable_to_non_nullable
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
class _$_Balcony extends _Balcony {
  const _$_Balcony(
      {this.foundation = const Damage(),
      this.waterProofLayer = const Damage(),
      this.foundationCoverage = Coverage.almost,
      this.waterProofLayerCoverage = Coverage.almost,
      this.remarks = ''})
      : super._();

  factory _$_Balcony.fromJson(Map<String, dynamic> json) =>
      _$$_BalconyFromJson(json);

  @override
  @JsonKey()
  final Damage foundation;
  @override
  @JsonKey()
  final Damage waterProofLayer;
  @override
  @JsonKey()
  final Coverage foundationCoverage;
  @override
  @JsonKey()
  final Coverage waterProofLayerCoverage;
  @override
  @JsonKey()
  final String remarks;

  @override
  String toString() {
    return 'Balcony(foundation: $foundation, waterProofLayer: $waterProofLayer, foundationCoverage: $foundationCoverage, waterProofLayerCoverage: $waterProofLayerCoverage, remarks: $remarks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Balcony &&
            (identical(other.foundation, foundation) ||
                other.foundation == foundation) &&
            (identical(other.waterProofLayer, waterProofLayer) ||
                other.waterProofLayer == waterProofLayer) &&
            (identical(other.foundationCoverage, foundationCoverage) ||
                other.foundationCoverage == foundationCoverage) &&
            (identical(
                    other.waterProofLayerCoverage, waterProofLayerCoverage) ||
                other.waterProofLayerCoverage == waterProofLayerCoverage) &&
            (identical(other.remarks, remarks) || other.remarks == remarks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, foundation, waterProofLayer,
      foundationCoverage, waterProofLayerCoverage, remarks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BalconyCopyWith<_$_Balcony> get copyWith =>
      __$$_BalconyCopyWithImpl<_$_Balcony>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BalconyToJson(
      this,
    );
  }
}

abstract class _Balcony extends Balcony {
  const factory _Balcony(
      {final Damage foundation,
      final Damage waterProofLayer,
      final Coverage foundationCoverage,
      final Coverage waterProofLayerCoverage,
      final String remarks}) = _$_Balcony;
  const _Balcony._() : super._();

  factory _Balcony.fromJson(Map<String, dynamic> json) = _$_Balcony.fromJson;

  @override
  Damage get foundation;
  @override
  Damage get waterProofLayer;
  @override
  Coverage get foundationCoverage;
  @override
  Coverage get waterProofLayerCoverage;
  @override
  String get remarks;
  @override
  @JsonKey(ignore: true)
  _$$_BalconyCopyWith<_$_Balcony> get copyWith =>
      throw _privateConstructorUsedError;
}
