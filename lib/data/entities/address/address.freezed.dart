// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  String? get name => throw _privateConstructorUsedError;
  String? get postCode => throw _privateConstructorUsedError;
  String? get prefecture => throw _privateConstructorUsedError;
  String? get municipality => throw _privateConstructorUsedError;
  String? get buildingName => throw _privateConstructorUsedError;
  String? get roomNumber => throw _privateConstructorUsedError;
  AddressType? get addressType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {String? name,
      String? postCode,
      String? prefecture,
      String? municipality,
      String? buildingName,
      String? roomNumber,
      AddressType? addressType});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? postCode = freezed,
    Object? prefecture = freezed,
    Object? municipality = freezed,
    Object? buildingName = freezed,
    Object? roomNumber = freezed,
    Object? addressType = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      postCode: freezed == postCode
          ? _value.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String?,
      prefecture: freezed == prefecture
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String?,
      municipality: freezed == municipality
          ? _value.municipality
          : municipality // ignore: cast_nullable_to_non_nullable
              as String?,
      buildingName: freezed == buildingName
          ? _value.buildingName
          : buildingName // ignore: cast_nullable_to_non_nullable
              as String?,
      roomNumber: freezed == roomNumber
          ? _value.roomNumber
          : roomNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      addressType: freezed == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as AddressType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$_AddressCopyWith(
          _$_Address value, $Res Function(_$_Address) then) =
      __$$_AddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? postCode,
      String? prefecture,
      String? municipality,
      String? buildingName,
      String? roomNumber,
      AddressType? addressType});
}

/// @nodoc
class __$$_AddressCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$_Address>
    implements _$$_AddressCopyWith<$Res> {
  __$$_AddressCopyWithImpl(_$_Address _value, $Res Function(_$_Address) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? postCode = freezed,
    Object? prefecture = freezed,
    Object? municipality = freezed,
    Object? buildingName = freezed,
    Object? roomNumber = freezed,
    Object? addressType = freezed,
  }) {
    return _then(_$_Address(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      postCode: freezed == postCode
          ? _value.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String?,
      prefecture: freezed == prefecture
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String?,
      municipality: freezed == municipality
          ? _value.municipality
          : municipality // ignore: cast_nullable_to_non_nullable
              as String?,
      buildingName: freezed == buildingName
          ? _value.buildingName
          : buildingName // ignore: cast_nullable_to_non_nullable
              as String?,
      roomNumber: freezed == roomNumber
          ? _value.roomNumber
          : roomNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      addressType: freezed == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as AddressType?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Address extends _Address {
  const _$_Address(
      {this.name,
      this.postCode,
      this.prefecture,
      this.municipality,
      this.buildingName,
      this.roomNumber,
      this.addressType})
      : super._();

  factory _$_Address.fromJson(Map<String, dynamic> json) =>
      _$$_AddressFromJson(json);

  @override
  final String? name;
  @override
  final String? postCode;
  @override
  final String? prefecture;
  @override
  final String? municipality;
  @override
  final String? buildingName;
  @override
  final String? roomNumber;
  @override
  final AddressType? addressType;

  @override
  String toString() {
    return 'Address(name: $name, postCode: $postCode, prefecture: $prefecture, municipality: $municipality, buildingName: $buildingName, roomNumber: $roomNumber, addressType: $addressType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Address &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.postCode, postCode) ||
                other.postCode == postCode) &&
            (identical(other.prefecture, prefecture) ||
                other.prefecture == prefecture) &&
            (identical(other.municipality, municipality) ||
                other.municipality == municipality) &&
            (identical(other.buildingName, buildingName) ||
                other.buildingName == buildingName) &&
            (identical(other.roomNumber, roomNumber) ||
                other.roomNumber == roomNumber) &&
            (identical(other.addressType, addressType) ||
                other.addressType == addressType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, postCode, prefecture,
      municipality, buildingName, roomNumber, addressType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      __$$_AddressCopyWithImpl<_$_Address>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressToJson(
      this,
    );
  }
}

abstract class _Address extends Address {
  const factory _Address(
      {final String? name,
      final String? postCode,
      final String? prefecture,
      final String? municipality,
      final String? buildingName,
      final String? roomNumber,
      final AddressType? addressType}) = _$_Address;
  const _Address._() : super._();

  factory _Address.fromJson(Map<String, dynamic> json) = _$_Address.fromJson;

  @override
  String? get name;
  @override
  String? get postCode;
  @override
  String? get prefecture;
  @override
  String? get municipality;
  @override
  String? get buildingName;
  @override
  String? get roomNumber;
  @override
  AddressType? get addressType;
  @override
  @JsonKey(ignore: true)
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      throw _privateConstructorUsedError;
}
