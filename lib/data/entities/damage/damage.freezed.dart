// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'damage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Damage _$DamageFromJson(Map<String, dynamic> json) {
  return _Damage.fromJson(json);
}

/// @nodoc
mixin _$Damage {
  Result get result => throw _privateConstructorUsedError;
  List<Direction> get directions => throw _privateConstructorUsedError;
  double get max => throw _privateConstructorUsedError;
  List<Photo> get photos => throw _privateConstructorUsedError;
  List<String> get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DamageCopyWith<Damage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DamageCopyWith<$Res> {
  factory $DamageCopyWith(Damage value, $Res Function(Damage) then) =
      _$DamageCopyWithImpl<$Res, Damage>;
  @useResult
  $Res call(
      {Result result,
      List<Direction> directions,
      double max,
      List<Photo> photos,
      List<String> details});
}

/// @nodoc
class _$DamageCopyWithImpl<$Res, $Val extends Damage>
    implements $DamageCopyWith<$Res> {
  _$DamageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? directions = null,
    Object? max = null,
    Object? photos = null,
    Object? details = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result,
      directions: null == directions
          ? _value.directions
          : directions // ignore: cast_nullable_to_non_nullable
              as List<Direction>,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DamageCopyWith<$Res> implements $DamageCopyWith<$Res> {
  factory _$$_DamageCopyWith(_$_Damage value, $Res Function(_$_Damage) then) =
      __$$_DamageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Result result,
      List<Direction> directions,
      double max,
      List<Photo> photos,
      List<String> details});
}

/// @nodoc
class __$$_DamageCopyWithImpl<$Res>
    extends _$DamageCopyWithImpl<$Res, _$_Damage>
    implements _$$_DamageCopyWith<$Res> {
  __$$_DamageCopyWithImpl(_$_Damage _value, $Res Function(_$_Damage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? directions = null,
    Object? max = null,
    Object? photos = null,
    Object? details = null,
  }) {
    return _then(_$_Damage(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result,
      directions: null == directions
          ? _value._directions
          : directions // ignore: cast_nullable_to_non_nullable
              as List<Direction>,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
      details: null == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Damage extends _Damage {
  const _$_Damage(
      {this.result = Result.none,
      final List<Direction> directions = const <Direction>[],
      this.max = 0.0,
      final List<Photo> photos = const <Photo>[],
      final List<String> details = const <String>[]})
      : _directions = directions,
        _photos = photos,
        _details = details,
        super._();

  factory _$_Damage.fromJson(Map<String, dynamic> json) =>
      _$$_DamageFromJson(json);

  @override
  @JsonKey()
  final Result result;
  final List<Direction> _directions;
  @override
  @JsonKey()
  List<Direction> get directions {
    if (_directions is EqualUnmodifiableListView) return _directions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_directions);
  }

  @override
  @JsonKey()
  final double max;
  final List<Photo> _photos;
  @override
  @JsonKey()
  List<Photo> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  final List<String> _details;
  @override
  @JsonKey()
  List<String> get details {
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_details);
  }

  @override
  String toString() {
    return 'Damage(result: $result, directions: $directions, max: $max, photos: $photos, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Damage &&
            (identical(other.result, result) || other.result == result) &&
            const DeepCollectionEquality()
                .equals(other._directions, _directions) &&
            (identical(other.max, max) || other.max == max) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      result,
      const DeepCollectionEquality().hash(_directions),
      max,
      const DeepCollectionEquality().hash(_photos),
      const DeepCollectionEquality().hash(_details));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DamageCopyWith<_$_Damage> get copyWith =>
      __$$_DamageCopyWithImpl<_$_Damage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DamageToJson(
      this,
    );
  }
}

abstract class _Damage extends Damage {
  const factory _Damage(
      {final Result result,
      final List<Direction> directions,
      final double max,
      final List<Photo> photos,
      final List<String> details}) = _$_Damage;
  const _Damage._() : super._();

  factory _Damage.fromJson(Map<String, dynamic> json) = _$_Damage.fromJson;

  @override
  Result get result;
  @override
  List<Direction> get directions;
  @override
  double get max;
  @override
  List<Photo> get photos;
  @override
  List<String> get details;
  @override
  @JsonKey(ignore: true)
  _$$_DamageCopyWith<_$_Damage> get copyWith =>
      throw _privateConstructorUsedError;
}
