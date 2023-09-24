// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'building.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Building _$BuildingFromJson(Map<String, dynamic> json) {
  return _Building.fromJson(json);
}

/// @nodoc
mixin _$Building {
  String get name => throw _privateConstructorUsedError;
  StructureType get structureType => throw _privateConstructorUsedError;
  double get totalFloorArea => throw _privateConstructorUsedError;
  Floor get floor => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;
  String get prefecture => throw _privateConstructorUsedError;
  String get findings => throw _privateConstructorUsedError;
  DateTime? get builtAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuildingCopyWith<Building> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildingCopyWith<$Res> {
  factory $BuildingCopyWith(Building value, $Res Function(Building) then) =
      _$BuildingCopyWithImpl<$Res, Building>;
  @useResult
  $Res call(
      {String name,
      StructureType structureType,
      double totalFloorArea,
      Floor floor,
      Address address,
      String prefecture,
      String findings,
      DateTime? builtAt});

  $FloorCopyWith<$Res> get floor;
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$BuildingCopyWithImpl<$Res, $Val extends Building>
    implements $BuildingCopyWith<$Res> {
  _$BuildingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? structureType = null,
    Object? totalFloorArea = null,
    Object? floor = null,
    Object? address = null,
    Object? prefecture = null,
    Object? findings = null,
    Object? builtAt = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      structureType: null == structureType
          ? _value.structureType
          : structureType // ignore: cast_nullable_to_non_nullable
              as StructureType,
      totalFloorArea: null == totalFloorArea
          ? _value.totalFloorArea
          : totalFloorArea // ignore: cast_nullable_to_non_nullable
              as double,
      floor: null == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as Floor,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      prefecture: null == prefecture
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String,
      findings: null == findings
          ? _value.findings
          : findings // ignore: cast_nullable_to_non_nullable
              as String,
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

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BuildingCopyWith<$Res> implements $BuildingCopyWith<$Res> {
  factory _$$_BuildingCopyWith(
          _$_Building value, $Res Function(_$_Building) then) =
      __$$_BuildingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      StructureType structureType,
      double totalFloorArea,
      Floor floor,
      Address address,
      String prefecture,
      String findings,
      DateTime? builtAt});

  @override
  $FloorCopyWith<$Res> get floor;
  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$_BuildingCopyWithImpl<$Res>
    extends _$BuildingCopyWithImpl<$Res, _$_Building>
    implements _$$_BuildingCopyWith<$Res> {
  __$$_BuildingCopyWithImpl(
      _$_Building _value, $Res Function(_$_Building) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? structureType = null,
    Object? totalFloorArea = null,
    Object? floor = null,
    Object? address = null,
    Object? prefecture = null,
    Object? findings = null,
    Object? builtAt = freezed,
  }) {
    return _then(_$_Building(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      structureType: null == structureType
          ? _value.structureType
          : structureType // ignore: cast_nullable_to_non_nullable
              as StructureType,
      totalFloorArea: null == totalFloorArea
          ? _value.totalFloorArea
          : totalFloorArea // ignore: cast_nullable_to_non_nullable
              as double,
      floor: null == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as Floor,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      prefecture: null == prefecture
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String,
      findings: null == findings
          ? _value.findings
          : findings // ignore: cast_nullable_to_non_nullable
              as String,
      builtAt: freezed == builtAt
          ? _value.builtAt
          : builtAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Building extends _Building {
  const _$_Building(
      {this.name = '',
      this.structureType = StructureType.wooden,
      this.totalFloorArea = 0.0,
      this.floor = const Floor(),
      this.address = const Address(),
      this.prefecture = '',
      this.findings = '',
      this.builtAt})
      : super._();

  factory _$_Building.fromJson(Map<String, dynamic> json) =>
      _$$_BuildingFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final StructureType structureType;
  @override
  @JsonKey()
  final double totalFloorArea;
  @override
  @JsonKey()
  final Floor floor;
  @override
  @JsonKey()
  final Address address;
  @override
  @JsonKey()
  final String prefecture;
  @override
  @JsonKey()
  final String findings;
  @override
  final DateTime? builtAt;

  @override
  String toString() {
    return 'Building(name: $name, structureType: $structureType, totalFloorArea: $totalFloorArea, floor: $floor, address: $address, prefecture: $prefecture, findings: $findings, builtAt: $builtAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Building &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.structureType, structureType) ||
                other.structureType == structureType) &&
            (identical(other.totalFloorArea, totalFloorArea) ||
                other.totalFloorArea == totalFloorArea) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.prefecture, prefecture) ||
                other.prefecture == prefecture) &&
            (identical(other.findings, findings) ||
                other.findings == findings) &&
            (identical(other.builtAt, builtAt) || other.builtAt == builtAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, structureType,
      totalFloorArea, floor, address, prefecture, findings, builtAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BuildingCopyWith<_$_Building> get copyWith =>
      __$$_BuildingCopyWithImpl<_$_Building>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BuildingToJson(
      this,
    );
  }
}

abstract class _Building extends Building {
  const factory _Building(
      {final String name,
      final StructureType structureType,
      final double totalFloorArea,
      final Floor floor,
      final Address address,
      final String prefecture,
      final String findings,
      final DateTime? builtAt}) = _$_Building;
  const _Building._() : super._();

  factory _Building.fromJson(Map<String, dynamic> json) = _$_Building.fromJson;

  @override
  String get name;
  @override
  StructureType get structureType;
  @override
  double get totalFloorArea;
  @override
  Floor get floor;
  @override
  Address get address;
  @override
  String get prefecture;
  @override
  String get findings;
  @override
  DateTime? get builtAt;
  @override
  @JsonKey(ignore: true)
  _$$_BuildingCopyWith<_$_Building> get copyWith =>
      throw _privateConstructorUsedError;
}

Floor _$FloorFromJson(Map<String, dynamic> json) {
  return _Floor.fromJson(json);
}

/// @nodoc
mixin _$Floor {
  int get ground => throw _privateConstructorUsedError;
  int get underground => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FloorCopyWith<Floor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FloorCopyWith<$Res> {
  factory $FloorCopyWith(Floor value, $Res Function(Floor) then) =
      _$FloorCopyWithImpl<$Res, Floor>;
  @useResult
  $Res call({int ground, int underground});
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
    Object? ground = null,
    Object? underground = null,
  }) {
    return _then(_value.copyWith(
      ground: null == ground
          ? _value.ground
          : ground // ignore: cast_nullable_to_non_nullable
              as int,
      underground: null == underground
          ? _value.underground
          : underground // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FloorCopyWith<$Res> implements $FloorCopyWith<$Res> {
  factory _$$_FloorCopyWith(_$_Floor value, $Res Function(_$_Floor) then) =
      __$$_FloorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int ground, int underground});
}

/// @nodoc
class __$$_FloorCopyWithImpl<$Res> extends _$FloorCopyWithImpl<$Res, _$_Floor>
    implements _$$_FloorCopyWith<$Res> {
  __$$_FloorCopyWithImpl(_$_Floor _value, $Res Function(_$_Floor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ground = null,
    Object? underground = null,
  }) {
    return _then(_$_Floor(
      ground: null == ground
          ? _value.ground
          : ground // ignore: cast_nullable_to_non_nullable
              as int,
      underground: null == underground
          ? _value.underground
          : underground // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Floor extends _Floor {
  const _$_Floor({this.ground = 1, this.underground = 0}) : super._();

  factory _$_Floor.fromJson(Map<String, dynamic> json) =>
      _$$_FloorFromJson(json);

  @override
  @JsonKey()
  final int ground;
  @override
  @JsonKey()
  final int underground;

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
  const factory _Floor({final int ground, final int underground}) = _$_Floor;
  const _Floor._() : super._();

  factory _Floor.fromJson(Map<String, dynamic> json) = _$_Floor.fromJson;

  @override
  int get ground;
  @override
  int get underground;
  @override
  @JsonKey(ignore: true)
  _$$_FloorCopyWith<_$_Floor> get copyWith =>
      throw _privateConstructorUsedError;
}
