// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lifeline.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Lifeline _$LifelineFromJson(Map<String, dynamic> json) {
  return _Lifeline.fromJson(json);
}

/// @nodoc
mixin _$Lifeline {
  Damage get lifelineMalfunction => throw _privateConstructorUsedError;
  Damage get otherMalfunction => throw _privateConstructorUsedError;
  Coverage? get coverage => throw _privateConstructorUsedError;
  String get remarks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LifelineCopyWith<Lifeline> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LifelineCopyWith<$Res> {
  factory $LifelineCopyWith(Lifeline value, $Res Function(Lifeline) then) =
      _$LifelineCopyWithImpl<$Res, Lifeline>;
  @useResult
  $Res call(
      {Damage lifelineMalfunction,
      Damage otherMalfunction,
      Coverage? coverage,
      String remarks});

  $DamageCopyWith<$Res> get lifelineMalfunction;
  $DamageCopyWith<$Res> get otherMalfunction;
}

/// @nodoc
class _$LifelineCopyWithImpl<$Res, $Val extends Lifeline>
    implements $LifelineCopyWith<$Res> {
  _$LifelineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lifelineMalfunction = null,
    Object? otherMalfunction = null,
    Object? coverage = freezed,
    Object? remarks = null,
  }) {
    return _then(_value.copyWith(
      lifelineMalfunction: null == lifelineMalfunction
          ? _value.lifelineMalfunction
          : lifelineMalfunction // ignore: cast_nullable_to_non_nullable
              as Damage,
      otherMalfunction: null == otherMalfunction
          ? _value.otherMalfunction
          : otherMalfunction // ignore: cast_nullable_to_non_nullable
              as Damage,
      coverage: freezed == coverage
          ? _value.coverage
          : coverage // ignore: cast_nullable_to_non_nullable
              as Coverage?,
      remarks: null == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DamageCopyWith<$Res> get lifelineMalfunction {
    return $DamageCopyWith<$Res>(_value.lifelineMalfunction, (value) {
      return _then(_value.copyWith(lifelineMalfunction: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DamageCopyWith<$Res> get otherMalfunction {
    return $DamageCopyWith<$Res>(_value.otherMalfunction, (value) {
      return _then(_value.copyWith(otherMalfunction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LifelineCopyWith<$Res> implements $LifelineCopyWith<$Res> {
  factory _$$_LifelineCopyWith(
          _$_Lifeline value, $Res Function(_$_Lifeline) then) =
      __$$_LifelineCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Damage lifelineMalfunction,
      Damage otherMalfunction,
      Coverage? coverage,
      String remarks});

  @override
  $DamageCopyWith<$Res> get lifelineMalfunction;
  @override
  $DamageCopyWith<$Res> get otherMalfunction;
}

/// @nodoc
class __$$_LifelineCopyWithImpl<$Res>
    extends _$LifelineCopyWithImpl<$Res, _$_Lifeline>
    implements _$$_LifelineCopyWith<$Res> {
  __$$_LifelineCopyWithImpl(
      _$_Lifeline _value, $Res Function(_$_Lifeline) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lifelineMalfunction = null,
    Object? otherMalfunction = null,
    Object? coverage = freezed,
    Object? remarks = null,
  }) {
    return _then(_$_Lifeline(
      lifelineMalfunction: null == lifelineMalfunction
          ? _value.lifelineMalfunction
          : lifelineMalfunction // ignore: cast_nullable_to_non_nullable
              as Damage,
      otherMalfunction: null == otherMalfunction
          ? _value.otherMalfunction
          : otherMalfunction // ignore: cast_nullable_to_non_nullable
              as Damage,
      coverage: freezed == coverage
          ? _value.coverage
          : coverage // ignore: cast_nullable_to_non_nullable
              as Coverage?,
      remarks: null == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Lifeline extends _Lifeline {
  const _$_Lifeline(
      {this.lifelineMalfunction = const Damage(),
      this.otherMalfunction = const Damage(),
      this.coverage,
      this.remarks = ''})
      : super._();

  factory _$_Lifeline.fromJson(Map<String, dynamic> json) =>
      _$$_LifelineFromJson(json);

  @override
  @JsonKey()
  final Damage lifelineMalfunction;
  @override
  @JsonKey()
  final Damage otherMalfunction;
  @override
  final Coverage? coverage;
  @override
  @JsonKey()
  final String remarks;

  @override
  String toString() {
    return 'Lifeline(lifelineMalfunction: $lifelineMalfunction, otherMalfunction: $otherMalfunction, coverage: $coverage, remarks: $remarks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Lifeline &&
            (identical(other.lifelineMalfunction, lifelineMalfunction) ||
                other.lifelineMalfunction == lifelineMalfunction) &&
            (identical(other.otherMalfunction, otherMalfunction) ||
                other.otherMalfunction == otherMalfunction) &&
            (identical(other.coverage, coverage) ||
                other.coverage == coverage) &&
            (identical(other.remarks, remarks) || other.remarks == remarks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, lifelineMalfunction, otherMalfunction, coverage, remarks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LifelineCopyWith<_$_Lifeline> get copyWith =>
      __$$_LifelineCopyWithImpl<_$_Lifeline>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LifelineToJson(
      this,
    );
  }
}

abstract class _Lifeline extends Lifeline {
  const factory _Lifeline(
      {final Damage lifelineMalfunction,
      final Damage otherMalfunction,
      final Coverage? coverage,
      final String remarks}) = _$_Lifeline;
  const _Lifeline._() : super._();

  factory _Lifeline.fromJson(Map<String, dynamic> json) = _$_Lifeline.fromJson;

  @override
  Damage get lifelineMalfunction;
  @override
  Damage get otherMalfunction;
  @override
  Coverage? get coverage;
  @override
  String get remarks;
  @override
  @JsonKey(ignore: true)
  _$$_LifelineCopyWith<_$_Lifeline> get copyWith =>
      throw _privateConstructorUsedError;
}
