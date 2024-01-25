// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'earthquake_resistant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EarthquakeResistant _$EarthquakeResistantFromJson(Map<String, dynamic> json) {
  return _EarthquakeResistant.fromJson(json);
}

/// @nodoc
mixin _$EarthquakeResistant {
  ConfirmationMethod? get confirmationMethod =>
      throw _privateConstructorUsedError;
  Certificate? get certificate => throw _privateConstructorUsedError;
  Issuer? get issuer => throw _privateConstructorUsedError;
  EarthquakeProofSafetyRegulation? get regulation =>
      throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;
  List<Photo> get photos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EarthquakeResistantCopyWith<EarthquakeResistant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarthquakeResistantCopyWith<$Res> {
  factory $EarthquakeResistantCopyWith(
          EarthquakeResistant value, $Res Function(EarthquakeResistant) then) =
      _$EarthquakeResistantCopyWithImpl<$Res, EarthquakeResistant>;
  @useResult
  $Res call(
      {ConfirmationMethod? confirmationMethod,
      Certificate? certificate,
      Issuer? issuer,
      EarthquakeProofSafetyRegulation? regulation,
      String? remarks,
      List<Photo> photos});
}

/// @nodoc
class _$EarthquakeResistantCopyWithImpl<$Res, $Val extends EarthquakeResistant>
    implements $EarthquakeResistantCopyWith<$Res> {
  _$EarthquakeResistantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmationMethod = freezed,
    Object? certificate = freezed,
    Object? issuer = freezed,
    Object? regulation = freezed,
    Object? remarks = freezed,
    Object? photos = null,
  }) {
    return _then(_value.copyWith(
      confirmationMethod: freezed == confirmationMethod
          ? _value.confirmationMethod
          : confirmationMethod // ignore: cast_nullable_to_non_nullable
              as ConfirmationMethod?,
      certificate: freezed == certificate
          ? _value.certificate
          : certificate // ignore: cast_nullable_to_non_nullable
              as Certificate?,
      issuer: freezed == issuer
          ? _value.issuer
          : issuer // ignore: cast_nullable_to_non_nullable
              as Issuer?,
      regulation: freezed == regulation
          ? _value.regulation
          : regulation // ignore: cast_nullable_to_non_nullable
              as EarthquakeProofSafetyRegulation?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EarthquakeResistantCopyWith<$Res>
    implements $EarthquakeResistantCopyWith<$Res> {
  factory _$$_EarthquakeResistantCopyWith(_$_EarthquakeResistant value,
          $Res Function(_$_EarthquakeResistant) then) =
      __$$_EarthquakeResistantCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ConfirmationMethod? confirmationMethod,
      Certificate? certificate,
      Issuer? issuer,
      EarthquakeProofSafetyRegulation? regulation,
      String? remarks,
      List<Photo> photos});
}

/// @nodoc
class __$$_EarthquakeResistantCopyWithImpl<$Res>
    extends _$EarthquakeResistantCopyWithImpl<$Res, _$_EarthquakeResistant>
    implements _$$_EarthquakeResistantCopyWith<$Res> {
  __$$_EarthquakeResistantCopyWithImpl(_$_EarthquakeResistant _value,
      $Res Function(_$_EarthquakeResistant) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmationMethod = freezed,
    Object? certificate = freezed,
    Object? issuer = freezed,
    Object? regulation = freezed,
    Object? remarks = freezed,
    Object? photos = null,
  }) {
    return _then(_$_EarthquakeResistant(
      confirmationMethod: freezed == confirmationMethod
          ? _value.confirmationMethod
          : confirmationMethod // ignore: cast_nullable_to_non_nullable
              as ConfirmationMethod?,
      certificate: freezed == certificate
          ? _value.certificate
          : certificate // ignore: cast_nullable_to_non_nullable
              as Certificate?,
      issuer: freezed == issuer
          ? _value.issuer
          : issuer // ignore: cast_nullable_to_non_nullable
              as Issuer?,
      regulation: freezed == regulation
          ? _value.regulation
          : regulation // ignore: cast_nullable_to_non_nullable
              as EarthquakeProofSafetyRegulation?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_EarthquakeResistant extends _EarthquakeResistant {
  const _$_EarthquakeResistant(
      {this.confirmationMethod,
      this.certificate,
      this.issuer,
      this.regulation,
      this.remarks,
      final List<Photo> photos = const <Photo>[]})
      : _photos = photos,
        super._();

  factory _$_EarthquakeResistant.fromJson(Map<String, dynamic> json) =>
      _$$_EarthquakeResistantFromJson(json);

  @override
  final ConfirmationMethod? confirmationMethod;
  @override
  final Certificate? certificate;
  @override
  final Issuer? issuer;
  @override
  final EarthquakeProofSafetyRegulation? regulation;
  @override
  final String? remarks;
  final List<Photo> _photos;
  @override
  @JsonKey()
  List<Photo> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  String toString() {
    return 'EarthquakeResistant(confirmationMethod: $confirmationMethod, certificate: $certificate, issuer: $issuer, regulation: $regulation, remarks: $remarks, photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EarthquakeResistant &&
            (identical(other.confirmationMethod, confirmationMethod) ||
                other.confirmationMethod == confirmationMethod) &&
            (identical(other.certificate, certificate) ||
                other.certificate == certificate) &&
            (identical(other.issuer, issuer) || other.issuer == issuer) &&
            (identical(other.regulation, regulation) ||
                other.regulation == regulation) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      confirmationMethod,
      certificate,
      issuer,
      regulation,
      remarks,
      const DeepCollectionEquality().hash(_photos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EarthquakeResistantCopyWith<_$_EarthquakeResistant> get copyWith =>
      __$$_EarthquakeResistantCopyWithImpl<_$_EarthquakeResistant>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EarthquakeResistantToJson(
      this,
    );
  }
}

abstract class _EarthquakeResistant extends EarthquakeResistant {
  const factory _EarthquakeResistant(
      {final ConfirmationMethod? confirmationMethod,
      final Certificate? certificate,
      final Issuer? issuer,
      final EarthquakeProofSafetyRegulation? regulation,
      final String? remarks,
      final List<Photo> photos}) = _$_EarthquakeResistant;
  const _EarthquakeResistant._() : super._();

  factory _EarthquakeResistant.fromJson(Map<String, dynamic> json) =
      _$_EarthquakeResistant.fromJson;

  @override
  ConfirmationMethod? get confirmationMethod;
  @override
  Certificate? get certificate;
  @override
  Issuer? get issuer;
  @override
  EarthquakeProofSafetyRegulation? get regulation;
  @override
  String? get remarks;
  @override
  List<Photo> get photos;
  @override
  @JsonKey(ignore: true)
  _$$_EarthquakeResistantCopyWith<_$_EarthquakeResistant> get copyWith =>
      throw _privateConstructorUsedError;
}
