// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repairing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
