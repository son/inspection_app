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
  Floor get floor => throw _privateConstructorUsedError;
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
      Floor floor,
      String? findings,
      @DateTimeOrNullConverter() DateTime? builtAt});

  $FloorCopyWith<$Res> get floor;
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
              as Floor,
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
  $FloorCopyWith<$Res> get floor {
    return $FloorCopyWith<$Res>(_value.floor, (value) {
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
      Floor floor,
      String? findings,
      @DateTimeOrNullConverter() DateTime? builtAt});

  @override
  $FloorCopyWith<$Res> get floor;
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
              as Floor,
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
      this.floor = const Floor(),
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
  final Floor floor;
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
      final Floor floor,
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
  Floor get floor;
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

Floor _$FloorFromJson(Map<String, dynamic> json) {
  return _Floor.fromJson(json);
}

/// @nodoc
mixin _$Floor {
  int? get ground => throw _privateConstructorUsedError;
  int? get underground => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FloorCopyWith<Floor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FloorCopyWith<$Res> {
  factory $FloorCopyWith(Floor value, $Res Function(Floor) then) =
      _$FloorCopyWithImpl<$Res, Floor>;
  @useResult
  $Res call({int? ground, int? underground});
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
abstract class _$$_FloorCopyWith<$Res> implements $FloorCopyWith<$Res> {
  factory _$$_FloorCopyWith(_$_Floor value, $Res Function(_$_Floor) then) =
      __$$_FloorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? ground, int? underground});
}

/// @nodoc
class __$$_FloorCopyWithImpl<$Res> extends _$FloorCopyWithImpl<$Res, _$_Floor>
    implements _$$_FloorCopyWith<$Res> {
  __$$_FloorCopyWithImpl(_$_Floor _value, $Res Function(_$_Floor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ground = freezed,
    Object? underground = freezed,
  }) {
    return _then(_$_Floor(
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
class _$_Floor extends _Floor {
  const _$_Floor({this.ground, this.underground}) : super._();

  factory _$_Floor.fromJson(Map<String, dynamic> json) =>
      _$$_FloorFromJson(json);

  @override
  final int? ground;
  @override
  final int? underground;

  @override
  String toString() {
    return 'Floor(ground: $ground, underground: $underground)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Floor &&
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
  const factory _Floor({final int? ground, final int? underground}) = _$_Floor;
  const _Floor._() : super._();

  factory _Floor.fromJson(Map<String, dynamic> json) = _$_Floor.fromJson;

  @override
  int? get ground;
  @override
  int? get underground;
  @override
  @JsonKey(ignore: true)
  _$$_FloorCopyWith<_$_Floor> get copyWith =>
      throw _privateConstructorUsedError;
}
