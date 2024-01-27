// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Detail _$DetailFromJson(Map<String, dynamic> json) {
  return _Detail.fromJson(json);
}

/// @nodoc
mixin _$Detail {
  HousingType? get housingType => throw _privateConstructorUsedError;
  StructureType? get structureType => throw _privateConstructorUsedError;
  double? get totalFloorArea => throw _privateConstructorUsedError;
  Floors get floor => throw _privateConstructorUsedError;
  String? get findings => throw _privateConstructorUsedError;
  @DateTimeOrNullConverter()
  DateTime? get builtAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailCopyWith<Detail> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailCopyWith<$Res> {
  factory $DetailCopyWith(Detail value, $Res Function(Detail) then) =
      _$DetailCopyWithImpl<$Res, Detail>;
  @useResult
  $Res call(
      {HousingType? housingType,
      StructureType? structureType,
      double? totalFloorArea,
      Floors floor,
      String? findings,
      @DateTimeOrNullConverter() DateTime? builtAt});

  $FloorsCopyWith<$Res> get floor;
}

/// @nodoc
class _$DetailCopyWithImpl<$Res, $Val extends Detail>
    implements $DetailCopyWith<$Res> {
  _$DetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? housingType = freezed,
    Object? structureType = freezed,
    Object? totalFloorArea = freezed,
    Object? floor = null,
    Object? findings = freezed,
    Object? builtAt = freezed,
  }) {
    return _then(_value.copyWith(
      housingType: freezed == housingType
          ? _value.housingType
          : housingType // ignore: cast_nullable_to_non_nullable
              as HousingType?,
      structureType: freezed == structureType
          ? _value.structureType
          : structureType // ignore: cast_nullable_to_non_nullable
              as StructureType?,
      totalFloorArea: freezed == totalFloorArea
          ? _value.totalFloorArea
          : totalFloorArea // ignore: cast_nullable_to_non_nullable
              as double?,
      floor: null == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as Floors,
      findings: freezed == findings
          ? _value.findings
          : findings // ignore: cast_nullable_to_non_nullable
              as String?,
      builtAt: freezed == builtAt
          ? _value.builtAt
          : builtAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FloorsCopyWith<$Res> get floor {
    return $FloorsCopyWith<$Res>(_value.floor, (value) {
      return _then(_value.copyWith(floor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DetailCopyWith<$Res> implements $DetailCopyWith<$Res> {
  factory _$$_DetailCopyWith(_$_Detail value, $Res Function(_$_Detail) then) =
      __$$_DetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {HousingType? housingType,
      StructureType? structureType,
      double? totalFloorArea,
      Floors floor,
      String? findings,
      @DateTimeOrNullConverter() DateTime? builtAt});

  @override
  $FloorsCopyWith<$Res> get floor;
}

/// @nodoc
class __$$_DetailCopyWithImpl<$Res>
    extends _$DetailCopyWithImpl<$Res, _$_Detail>
    implements _$$_DetailCopyWith<$Res> {
  __$$_DetailCopyWithImpl(_$_Detail _value, $Res Function(_$_Detail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? housingType = freezed,
    Object? structureType = freezed,
    Object? totalFloorArea = freezed,
    Object? floor = null,
    Object? findings = freezed,
    Object? builtAt = freezed,
  }) {
    return _then(_$_Detail(
      housingType: freezed == housingType
          ? _value.housingType
          : housingType // ignore: cast_nullable_to_non_nullable
              as HousingType?,
      structureType: freezed == structureType
          ? _value.structureType
          : structureType // ignore: cast_nullable_to_non_nullable
              as StructureType?,
      totalFloorArea: freezed == totalFloorArea
          ? _value.totalFloorArea
          : totalFloorArea // ignore: cast_nullable_to_non_nullable
              as double?,
      floor: null == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as Floors,
      findings: freezed == findings
          ? _value.findings
          : findings // ignore: cast_nullable_to_non_nullable
              as String?,
      builtAt: freezed == builtAt
          ? _value.builtAt
          : builtAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Detail extends _Detail {
  const _$_Detail(
      {this.housingType,
      this.structureType,
      this.totalFloorArea,
      this.floor = const Floors(),
      this.findings,
      @DateTimeOrNullConverter() this.builtAt})
      : super._();

  factory _$_Detail.fromJson(Map<String, dynamic> json) =>
      _$$_DetailFromJson(json);

  @override
  final HousingType? housingType;
  @override
  final StructureType? structureType;
  @override
  final double? totalFloorArea;
  @override
  @JsonKey()
  final Floors floor;
  @override
  final String? findings;
  @override
  @DateTimeOrNullConverter()
  final DateTime? builtAt;

  @override
  String toString() {
    return 'Detail(housingType: $housingType, structureType: $structureType, totalFloorArea: $totalFloorArea, floor: $floor, findings: $findings, builtAt: $builtAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Detail &&
            (identical(other.housingType, housingType) ||
                other.housingType == housingType) &&
            (identical(other.structureType, structureType) ||
                other.structureType == structureType) &&
            (identical(other.totalFloorArea, totalFloorArea) ||
                other.totalFloorArea == totalFloorArea) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.findings, findings) ||
                other.findings == findings) &&
            (identical(other.builtAt, builtAt) || other.builtAt == builtAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, housingType, structureType,
      totalFloorArea, floor, findings, builtAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailCopyWith<_$_Detail> get copyWith =>
      __$$_DetailCopyWithImpl<_$_Detail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailToJson(
      this,
    );
  }
}

abstract class _Detail extends Detail {
  const factory _Detail(
      {final HousingType? housingType,
      final StructureType? structureType,
      final double? totalFloorArea,
      final Floors floor,
      final String? findings,
      @DateTimeOrNullConverter() final DateTime? builtAt}) = _$_Detail;
  const _Detail._() : super._();

  factory _Detail.fromJson(Map<String, dynamic> json) = _$_Detail.fromJson;

  @override
  HousingType? get housingType;
  @override
  StructureType? get structureType;
  @override
  double? get totalFloorArea;
  @override
  Floors get floor;
  @override
  String? get findings;
  @override
  @DateTimeOrNullConverter()
  DateTime? get builtAt;
  @override
  @JsonKey(ignore: true)
  _$$_DetailCopyWith<_$_Detail> get copyWith =>
      throw _privateConstructorUsedError;
}

Floors _$FloorsFromJson(Map<String, dynamic> json) {
  return _Floors.fromJson(json);
}

/// @nodoc
mixin _$Floors {
  int? get ground => throw _privateConstructorUsedError;
  int? get underground => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FloorsCopyWith<Floors> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FloorsCopyWith<$Res> {
  factory $FloorsCopyWith(Floors value, $Res Function(Floors) then) =
      _$FloorsCopyWithImpl<$Res, Floors>;
  @useResult
  $Res call({int? ground, int? underground});
}

/// @nodoc
class _$FloorsCopyWithImpl<$Res, $Val extends Floors>
    implements $FloorsCopyWith<$Res> {
  _$FloorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ground = freezed,
    Object? underground = freezed,
  }) {
    return _then(_value.copyWith(
      ground: freezed == ground
          ? _value.ground
          : ground // ignore: cast_nullable_to_non_nullable
              as int?,
      underground: freezed == underground
          ? _value.underground
          : underground // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FloorsCopyWith<$Res> implements $FloorsCopyWith<$Res> {
  factory _$$_FloorsCopyWith(_$_Floors value, $Res Function(_$_Floors) then) =
      __$$_FloorsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? ground, int? underground});
}

/// @nodoc
class __$$_FloorsCopyWithImpl<$Res>
    extends _$FloorsCopyWithImpl<$Res, _$_Floors>
    implements _$$_FloorsCopyWith<$Res> {
  __$$_FloorsCopyWithImpl(_$_Floors _value, $Res Function(_$_Floors) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ground = freezed,
    Object? underground = freezed,
  }) {
    return _then(_$_Floors(
      ground: freezed == ground
          ? _value.ground
          : ground // ignore: cast_nullable_to_non_nullable
              as int?,
      underground: freezed == underground
          ? _value.underground
          : underground // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Floors extends _Floors {
  const _$_Floors({this.ground, this.underground}) : super._();

  factory _$_Floors.fromJson(Map<String, dynamic> json) =>
      _$$_FloorsFromJson(json);

  @override
  final int? ground;
  @override
  final int? underground;

  @override
  String toString() {
    return 'Floors(ground: $ground, underground: $underground)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Floors &&
            (identical(other.ground, ground) || other.ground == ground) &&
            (identical(other.underground, underground) ||
                other.underground == underground));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ground, underground);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FloorsCopyWith<_$_Floors> get copyWith =>
      __$$_FloorsCopyWithImpl<_$_Floors>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FloorsToJson(
      this,
    );
  }
}

abstract class _Floors extends Floors {
  const factory _Floors({final int? ground, final int? underground}) =
      _$_Floors;
  const _Floors._() : super._();

  factory _Floors.fromJson(Map<String, dynamic> json) = _$_Floors.fromJson;

  @override
  int? get ground;
  @override
  int? get underground;
  @override
  @JsonKey(ignore: true)
  _$$_FloorsCopyWith<_$_Floors> get copyWith =>
      throw _privateConstructorUsedError;
}
