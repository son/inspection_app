// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inspection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Inspection _$InspectionFromJson(Map<String, dynamic> json) {
  return _Inspection.fromJson(json);
}

/// @nodoc
mixin _$Inspection {
  String get id => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  InspectionOverview get overview => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InspectionCopyWith<Inspection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InspectionCopyWith<$Res> {
  factory $InspectionCopyWith(
          Inspection value, $Res Function(Inspection) then) =
      _$InspectionCopyWithImpl<$Res, Inspection>;
  @useResult
  $Res call({String id, DateTime? createdAt, InspectionOverview overview});

  $InspectionOverviewCopyWith<$Res> get overview;
}

/// @nodoc
class _$InspectionCopyWithImpl<$Res, $Val extends Inspection>
    implements $InspectionCopyWith<$Res> {
  _$InspectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = freezed,
    Object? overview = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as InspectionOverview,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InspectionOverviewCopyWith<$Res> get overview {
    return $InspectionOverviewCopyWith<$Res>(_value.overview, (value) {
      return _then(_value.copyWith(overview: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InspectionCopyWith<$Res>
    implements $InspectionCopyWith<$Res> {
  factory _$$_InspectionCopyWith(
          _$_Inspection value, $Res Function(_$_Inspection) then) =
      __$$_InspectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, DateTime? createdAt, InspectionOverview overview});

  @override
  $InspectionOverviewCopyWith<$Res> get overview;
}

/// @nodoc
class __$$_InspectionCopyWithImpl<$Res>
    extends _$InspectionCopyWithImpl<$Res, _$_Inspection>
    implements _$$_InspectionCopyWith<$Res> {
  __$$_InspectionCopyWithImpl(
      _$_Inspection _value, $Res Function(_$_Inspection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = freezed,
    Object? overview = null,
  }) {
    return _then(_$_Inspection(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as InspectionOverview,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Inspection extends _Inspection {
  const _$_Inspection(
      {required this.id,
      this.createdAt,
      this.overview = InspectionOverview.empty})
      : super._();

  factory _$_Inspection.fromJson(Map<String, dynamic> json) =>
      _$$_InspectionFromJson(json);

  @override
  final String id;
  @override
  final DateTime? createdAt;
  @override
  @JsonKey()
  final InspectionOverview overview;

  @override
  String toString() {
    return 'Inspection(id: $id, createdAt: $createdAt, overview: $overview)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Inspection &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.overview, overview) ||
                other.overview == overview));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, overview);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InspectionCopyWith<_$_Inspection> get copyWith =>
      __$$_InspectionCopyWithImpl<_$_Inspection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InspectionToJson(
      this,
    );
  }
}

abstract class _Inspection extends Inspection {
  const factory _Inspection(
      {required final String id,
      final DateTime? createdAt,
      final InspectionOverview overview}) = _$_Inspection;
  const _Inspection._() : super._();

  factory _Inspection.fromJson(Map<String, dynamic> json) =
      _$_Inspection.fromJson;

  @override
  String get id;
  @override
  DateTime? get createdAt;
  @override
  InspectionOverview get overview;
  @override
  @JsonKey(ignore: true)
  _$$_InspectionCopyWith<_$_Inspection> get copyWith =>
      throw _privateConstructorUsedError;
}
