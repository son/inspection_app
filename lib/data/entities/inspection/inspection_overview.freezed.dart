// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inspection_overview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InspectionOverview _$InspectionOverviewFromJson(Map<String, dynamic> json) {
  return _InspectionOverview.fromJson(json);
}

/// @nodoc
mixin _$InspectionOverview {
  String? get buildingName => throw _privateConstructorUsedError;
  String? get clientName => throw _privateConstructorUsedError;
  String? get witnessName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InspectionOverviewCopyWith<InspectionOverview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InspectionOverviewCopyWith<$Res> {
  factory $InspectionOverviewCopyWith(
          InspectionOverview value, $Res Function(InspectionOverview) then) =
      _$InspectionOverviewCopyWithImpl<$Res, InspectionOverview>;
  @useResult
  $Res call({String? buildingName, String? clientName, String? witnessName});
}

/// @nodoc
class _$InspectionOverviewCopyWithImpl<$Res, $Val extends InspectionOverview>
    implements $InspectionOverviewCopyWith<$Res> {
  _$InspectionOverviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildingName = freezed,
    Object? clientName = freezed,
    Object? witnessName = freezed,
  }) {
    return _then(_value.copyWith(
      buildingName: freezed == buildingName
          ? _value.buildingName
          : buildingName // ignore: cast_nullable_to_non_nullable
              as String?,
      clientName: freezed == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String?,
      witnessName: freezed == witnessName
          ? _value.witnessName
          : witnessName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InspectionOverviewCopyWith<$Res>
    implements $InspectionOverviewCopyWith<$Res> {
  factory _$$_InspectionOverviewCopyWith(_$_InspectionOverview value,
          $Res Function(_$_InspectionOverview) then) =
      __$$_InspectionOverviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? buildingName, String? clientName, String? witnessName});
}

/// @nodoc
class __$$_InspectionOverviewCopyWithImpl<$Res>
    extends _$InspectionOverviewCopyWithImpl<$Res, _$_InspectionOverview>
    implements _$$_InspectionOverviewCopyWith<$Res> {
  __$$_InspectionOverviewCopyWithImpl(
      _$_InspectionOverview _value, $Res Function(_$_InspectionOverview) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildingName = freezed,
    Object? clientName = freezed,
    Object? witnessName = freezed,
  }) {
    return _then(_$_InspectionOverview(
      buildingName: freezed == buildingName
          ? _value.buildingName
          : buildingName // ignore: cast_nullable_to_non_nullable
              as String?,
      clientName: freezed == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String?,
      witnessName: freezed == witnessName
          ? _value.witnessName
          : witnessName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_InspectionOverview extends _InspectionOverview {
  const _$_InspectionOverview(
      {this.buildingName, this.clientName, this.witnessName})
      : super._();

  factory _$_InspectionOverview.fromJson(Map<String, dynamic> json) =>
      _$$_InspectionOverviewFromJson(json);

  @override
  final String? buildingName;
  @override
  final String? clientName;
  @override
  final String? witnessName;

  @override
  String toString() {
    return 'InspectionOverview(buildingName: $buildingName, clientName: $clientName, witnessName: $witnessName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InspectionOverview &&
            (identical(other.buildingName, buildingName) ||
                other.buildingName == buildingName) &&
            (identical(other.clientName, clientName) ||
                other.clientName == clientName) &&
            (identical(other.witnessName, witnessName) ||
                other.witnessName == witnessName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, buildingName, clientName, witnessName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InspectionOverviewCopyWith<_$_InspectionOverview> get copyWith =>
      __$$_InspectionOverviewCopyWithImpl<_$_InspectionOverview>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InspectionOverviewToJson(
      this,
    );
  }
}

abstract class _InspectionOverview extends InspectionOverview {
  const factory _InspectionOverview(
      {final String? buildingName,
      final String? clientName,
      final String? witnessName}) = _$_InspectionOverview;
  const _InspectionOverview._() : super._();

  factory _InspectionOverview.fromJson(Map<String, dynamic> json) =
      _$_InspectionOverview.fromJson;

  @override
  String? get buildingName;
  @override
  String? get clientName;
  @override
  String? get witnessName;
  @override
  @JsonKey(ignore: true)
  _$$_InspectionOverviewCopyWith<_$_InspectionOverview> get copyWith =>
      throw _privateConstructorUsedError;
}
