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
  String? get name => throw _privateConstructorUsedError;
  StructureType? get structureType => throw _privateConstructorUsedError;
  double? get totalFloorArea => throw _privateConstructorUsedError;
  Floor get floor => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;
  String? get prefecture => throw _privateConstructorUsedError;
  Repairing get repairing => throw _privateConstructorUsedError;
  Renovation get renovation => throw _privateConstructorUsedError;
  String? get findings => throw _privateConstructorUsedError;
  @DateTimeOrNullConverter()
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
      {String? name,
      StructureType? structureType,
      double? totalFloorArea,
      Floor floor,
      Address address,
      String? prefecture,
      Repairing repairing,
      Renovation renovation,
      String? findings,
      @DateTimeOrNullConverter() DateTime? builtAt});

  $FloorCopyWith<$Res> get floor;
  $AddressCopyWith<$Res> get address;
  $RepairingCopyWith<$Res> get repairing;
  $RenovationCopyWith<$Res> get renovation;
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
    Object? name = freezed,
    Object? structureType = freezed,
    Object? totalFloorArea = freezed,
    Object? floor = null,
    Object? address = null,
    Object? prefecture = freezed,
    Object? repairing = null,
    Object? renovation = null,
    Object? findings = freezed,
    Object? builtAt = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      prefecture: freezed == prefecture
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String?,
      repairing: null == repairing
          ? _value.repairing
          : repairing // ignore: cast_nullable_to_non_nullable
              as Repairing,
      renovation: null == renovation
          ? _value.renovation
          : renovation // ignore: cast_nullable_to_non_nullable
              as Renovation,
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

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RepairingCopyWith<$Res> get repairing {
    return $RepairingCopyWith<$Res>(_value.repairing, (value) {
      return _then(_value.copyWith(repairing: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RenovationCopyWith<$Res> get renovation {
    return $RenovationCopyWith<$Res>(_value.renovation, (value) {
      return _then(_value.copyWith(renovation: value) as $Val);
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
      {String? name,
      StructureType? structureType,
      double? totalFloorArea,
      Floor floor,
      Address address,
      String? prefecture,
      Repairing repairing,
      Renovation renovation,
      String? findings,
      @DateTimeOrNullConverter() DateTime? builtAt});

  @override
  $FloorCopyWith<$Res> get floor;
  @override
  $AddressCopyWith<$Res> get address;
  @override
  $RepairingCopyWith<$Res> get repairing;
  @override
  $RenovationCopyWith<$Res> get renovation;
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
    Object? name = freezed,
    Object? structureType = freezed,
    Object? totalFloorArea = freezed,
    Object? floor = null,
    Object? address = null,
    Object? prefecture = freezed,
    Object? repairing = null,
    Object? renovation = null,
    Object? findings = freezed,
    Object? builtAt = freezed,
  }) {
    return _then(_$_Building(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      prefecture: freezed == prefecture
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String?,
      repairing: null == repairing
          ? _value.repairing
          : repairing // ignore: cast_nullable_to_non_nullable
              as Repairing,
      renovation: null == renovation
          ? _value.renovation
          : renovation // ignore: cast_nullable_to_non_nullable
              as Renovation,
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
class _$_Building extends _Building {
  const _$_Building(
      {this.name,
      this.structureType,
      this.totalFloorArea,
      this.floor = const Floor(),
      this.address = const Address(),
      this.prefecture,
      this.repairing = const Repairing(),
      this.renovation = const Renovation(),
      this.findings,
      @DateTimeOrNullConverter() this.builtAt})
      : super._();

  factory _$_Building.fromJson(Map<String, dynamic> json) =>
      _$$_BuildingFromJson(json);

  @override
  final String? name;
  @override
  final StructureType? structureType;
  @override
  final double? totalFloorArea;
  @override
  @JsonKey()
  final Floor floor;
  @override
  @JsonKey()
  final Address address;
  @override
  final String? prefecture;
  @override
  @JsonKey()
  final Repairing repairing;
  @override
  @JsonKey()
  final Renovation renovation;
  @override
  final String? findings;
  @override
  @DateTimeOrNullConverter()
  final DateTime? builtAt;

  @override
  String toString() {
    return 'Building(name: $name, structureType: $structureType, totalFloorArea: $totalFloorArea, floor: $floor, address: $address, prefecture: $prefecture, repairing: $repairing, renovation: $renovation, findings: $findings, builtAt: $builtAt)';
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
            (identical(other.repairing, repairing) ||
                other.repairing == repairing) &&
            (identical(other.renovation, renovation) ||
                other.renovation == renovation) &&
            (identical(other.findings, findings) ||
                other.findings == findings) &&
            (identical(other.builtAt, builtAt) || other.builtAt == builtAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      structureType,
      totalFloorArea,
      floor,
      address,
      prefecture,
      repairing,
      renovation,
      findings,
      builtAt);

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
      {final String? name,
      final StructureType? structureType,
      final double? totalFloorArea,
      final Floor floor,
      final Address address,
      final String? prefecture,
      final Repairing repairing,
      final Renovation renovation,
      final String? findings,
      @DateTimeOrNullConverter() final DateTime? builtAt}) = _$_Building;
  const _Building._() : super._();

  factory _Building.fromJson(Map<String, dynamic> json) = _$_Building.fromJson;

  @override
  String? get name;
  @override
  StructureType? get structureType;
  @override
  double? get totalFloorArea;
  @override
  Floor get floor;
  @override
  Address get address;
  @override
  String? get prefecture;
  @override
  Repairing get repairing;
  @override
  Renovation get renovation;
  @override
  String? get findings;
  @override
  @DateTimeOrNullConverter()
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

Repairing _$RepairingFromJson(Map<String, dynamic> json) {
  return _Repairing.fromJson(json);
}

/// @nodoc
mixin _$Repairing {
  bool? get repaired => throw _privateConstructorUsedError;
  String? get parts => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;
  String? get method => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepairingCopyWith<Repairing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepairingCopyWith<$Res> {
  factory $RepairingCopyWith(Repairing value, $Res Function(Repairing) then) =
      _$RepairingCopyWithImpl<$Res, Repairing>;
  @useResult
  $Res call({bool? repaired, String? parts, String? remarks, String? method});
}

/// @nodoc
class _$RepairingCopyWithImpl<$Res, $Val extends Repairing>
    implements $RepairingCopyWith<$Res> {
  _$RepairingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repaired = freezed,
    Object? parts = freezed,
    Object? remarks = freezed,
    Object? method = freezed,
  }) {
    return _then(_value.copyWith(
      repaired: freezed == repaired
          ? _value.repaired
          : repaired // ignore: cast_nullable_to_non_nullable
              as bool?,
      parts: freezed == parts
          ? _value.parts
          : parts // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RepairingCopyWith<$Res> implements $RepairingCopyWith<$Res> {
  factory _$$_RepairingCopyWith(
          _$_Repairing value, $Res Function(_$_Repairing) then) =
      __$$_RepairingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? repaired, String? parts, String? remarks, String? method});
}

/// @nodoc
class __$$_RepairingCopyWithImpl<$Res>
    extends _$RepairingCopyWithImpl<$Res, _$_Repairing>
    implements _$$_RepairingCopyWith<$Res> {
  __$$_RepairingCopyWithImpl(
      _$_Repairing _value, $Res Function(_$_Repairing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repaired = freezed,
    Object? parts = freezed,
    Object? remarks = freezed,
    Object? method = freezed,
  }) {
    return _then(_$_Repairing(
      repaired: freezed == repaired
          ? _value.repaired
          : repaired // ignore: cast_nullable_to_non_nullable
              as bool?,
      parts: freezed == parts
          ? _value.parts
          : parts // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Repairing extends _Repairing {
  const _$_Repairing({this.repaired, this.parts, this.remarks, this.method})
      : super._();

  factory _$_Repairing.fromJson(Map<String, dynamic> json) =>
      _$$_RepairingFromJson(json);

  @override
  final bool? repaired;
  @override
  final String? parts;
  @override
  final String? remarks;
  @override
  final String? method;

  @override
  String toString() {
    return 'Repairing(repaired: $repaired, parts: $parts, remarks: $remarks, method: $method)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Repairing &&
            (identical(other.repaired, repaired) ||
                other.repaired == repaired) &&
            (identical(other.parts, parts) || other.parts == parts) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.method, method) || other.method == method));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, repaired, parts, remarks, method);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RepairingCopyWith<_$_Repairing> get copyWith =>
      __$$_RepairingCopyWithImpl<_$_Repairing>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepairingToJson(
      this,
    );
  }
}

abstract class _Repairing extends Repairing {
  const factory _Repairing(
      {final bool? repaired,
      final String? parts,
      final String? remarks,
      final String? method}) = _$_Repairing;
  const _Repairing._() : super._();

  factory _Repairing.fromJson(Map<String, dynamic> json) =
      _$_Repairing.fromJson;

  @override
  bool? get repaired;
  @override
  String? get parts;
  @override
  String? get remarks;
  @override
  String? get method;
  @override
  @JsonKey(ignore: true)
  _$$_RepairingCopyWith<_$_Repairing> get copyWith =>
      throw _privateConstructorUsedError;
}

Renovation _$RenovationFromJson(Map<String, dynamic> json) {
  return _Renovation.fromJson(json);
}

/// @nodoc
mixin _$Renovation {
  bool? get renovating => throw _privateConstructorUsedError;
  String? get parts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RenovationCopyWith<Renovation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RenovationCopyWith<$Res> {
  factory $RenovationCopyWith(
          Renovation value, $Res Function(Renovation) then) =
      _$RenovationCopyWithImpl<$Res, Renovation>;
  @useResult
  $Res call({bool? renovating, String? parts});
}

/// @nodoc
class _$RenovationCopyWithImpl<$Res, $Val extends Renovation>
    implements $RenovationCopyWith<$Res> {
  _$RenovationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? renovating = freezed,
    Object? parts = freezed,
  }) {
    return _then(_value.copyWith(
      renovating: freezed == renovating
          ? _value.renovating
          : renovating // ignore: cast_nullable_to_non_nullable
              as bool?,
      parts: freezed == parts
          ? _value.parts
          : parts // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RenovationCopyWith<$Res>
    implements $RenovationCopyWith<$Res> {
  factory _$$_RenovationCopyWith(
          _$_Renovation value, $Res Function(_$_Renovation) then) =
      __$$_RenovationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? renovating, String? parts});
}

/// @nodoc
class __$$_RenovationCopyWithImpl<$Res>
    extends _$RenovationCopyWithImpl<$Res, _$_Renovation>
    implements _$$_RenovationCopyWith<$Res> {
  __$$_RenovationCopyWithImpl(
      _$_Renovation _value, $Res Function(_$_Renovation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? renovating = freezed,
    Object? parts = freezed,
  }) {
    return _then(_$_Renovation(
      renovating: freezed == renovating
          ? _value.renovating
          : renovating // ignore: cast_nullable_to_non_nullable
              as bool?,
      parts: freezed == parts
          ? _value.parts
          : parts // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Renovation extends _Renovation {
  const _$_Renovation({this.renovating, this.parts}) : super._();

  factory _$_Renovation.fromJson(Map<String, dynamic> json) =>
      _$$_RenovationFromJson(json);

  @override
  final bool? renovating;
  @override
  final String? parts;

  @override
  String toString() {
    return 'Renovation(renovating: $renovating, parts: $parts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Renovation &&
            (identical(other.renovating, renovating) ||
                other.renovating == renovating) &&
            (identical(other.parts, parts) || other.parts == parts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, renovating, parts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RenovationCopyWith<_$_Renovation> get copyWith =>
      __$$_RenovationCopyWithImpl<_$_Renovation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RenovationToJson(
      this,
    );
  }
}

abstract class _Renovation extends Renovation {
  const factory _Renovation({final bool? renovating, final String? parts}) =
      _$_Renovation;
  const _Renovation._() : super._();

  factory _Renovation.fromJson(Map<String, dynamic> json) =
      _$_Renovation.fromJson;

  @override
  bool? get renovating;
  @override
  String? get parts;
  @override
  @JsonKey(ignore: true)
  _$$_RenovationCopyWith<_$_Renovation> get copyWith =>
      throw _privateConstructorUsedError;
}
