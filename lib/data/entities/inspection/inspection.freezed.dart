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
  String get userId => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get inspectionCreatedAt => throw _privateConstructorUsedError;
  String? get udId => throw _privateConstructorUsedError;
  InspectionOverview get overview => throw _privateConstructorUsedError;
  List<Photo> get photos => throw _privateConstructorUsedError;
  List<String> get blueprints => throw _privateConstructorUsedError;
  Foundation get foundation => throw _privateConstructorUsedError;
  OuterWall get outerWall => throw _privateConstructorUsedError;
  Roof get roof => throw _privateConstructorUsedError;
  Balcony get balcony => throw _privateConstructorUsedError;
  InnerWall get innerWall => throw _privateConstructorUsedError;
  Ceiling get ceiling => throw _privateConstructorUsedError;
  RoofFrame get roofFrame => throw _privateConstructorUsedError;
  PillarAndBeam get pillarAndBeam => throw _privateConstructorUsedError;
  BaseAndFloorFraming get baseAndFloorFraming =>
      throw _privateConstructorUsedError;
  Floor get floor => throw _privateConstructorUsedError;
  AntDamage get antDamage => throw _privateConstructorUsedError;
  Corrosion get corrosion => throw _privateConstructorUsedError;
  Piping get piping => throw _privateConstructorUsedError;
  Lifeline get lifeline => throw _privateConstructorUsedError;
  Rebar get rebar => throw _privateConstructorUsedError;
  Concrete get concrete => throw _privateConstructorUsedError;
  EarthquakeResistant get earthquakeResistant =>
      throw _privateConstructorUsedError;

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
  $Res call(
      {String id,
      String userId,
      @DateTimeConverter() DateTime createdAt,
      DateTime? inspectionCreatedAt,
      String? udId,
      InspectionOverview overview,
      List<Photo> photos,
      List<String> blueprints,
      Foundation foundation,
      OuterWall outerWall,
      Roof roof,
      Balcony balcony,
      InnerWall innerWall,
      Ceiling ceiling,
      RoofFrame roofFrame,
      PillarAndBeam pillarAndBeam,
      BaseAndFloorFraming baseAndFloorFraming,
      Floor floor,
      AntDamage antDamage,
      Corrosion corrosion,
      Piping piping,
      Lifeline lifeline,
      Rebar rebar,
      Concrete concrete,
      EarthquakeResistant earthquakeResistant});

  $InspectionOverviewCopyWith<$Res> get overview;
  $FoundationCopyWith<$Res> get foundation;
  $OuterWallCopyWith<$Res> get outerWall;
  $RoofCopyWith<$Res> get roof;
  $BalconyCopyWith<$Res> get balcony;
  $InnerWallCopyWith<$Res> get innerWall;
  $CeilingCopyWith<$Res> get ceiling;
  $RoofFrameCopyWith<$Res> get roofFrame;
  $PillarAndBeamCopyWith<$Res> get pillarAndBeam;
  $BaseAndFloorFramingCopyWith<$Res> get baseAndFloorFraming;
  $FloorCopyWith<$Res> get floor;
  $AntDamageCopyWith<$Res> get antDamage;
  $CorrosionCopyWith<$Res> get corrosion;
  $PipingCopyWith<$Res> get piping;
  $LifelineCopyWith<$Res> get lifeline;
  $RebarCopyWith<$Res> get rebar;
  $ConcreteCopyWith<$Res> get concrete;
  $EarthquakeResistantCopyWith<$Res> get earthquakeResistant;
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
    Object? userId = null,
    Object? createdAt = null,
    Object? inspectionCreatedAt = freezed,
    Object? udId = freezed,
    Object? overview = null,
    Object? photos = null,
    Object? blueprints = null,
    Object? foundation = null,
    Object? outerWall = null,
    Object? roof = null,
    Object? balcony = null,
    Object? innerWall = null,
    Object? ceiling = null,
    Object? roofFrame = null,
    Object? pillarAndBeam = null,
    Object? baseAndFloorFraming = null,
    Object? floor = null,
    Object? antDamage = null,
    Object? corrosion = null,
    Object? piping = null,
    Object? lifeline = null,
    Object? rebar = null,
    Object? concrete = null,
    Object? earthquakeResistant = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      inspectionCreatedAt: freezed == inspectionCreatedAt
          ? _value.inspectionCreatedAt
          : inspectionCreatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      udId: freezed == udId
          ? _value.udId
          : udId // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as InspectionOverview,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
      blueprints: null == blueprints
          ? _value.blueprints
          : blueprints // ignore: cast_nullable_to_non_nullable
              as List<String>,
      foundation: null == foundation
          ? _value.foundation
          : foundation // ignore: cast_nullable_to_non_nullable
              as Foundation,
      outerWall: null == outerWall
          ? _value.outerWall
          : outerWall // ignore: cast_nullable_to_non_nullable
              as OuterWall,
      roof: null == roof
          ? _value.roof
          : roof // ignore: cast_nullable_to_non_nullable
              as Roof,
      balcony: null == balcony
          ? _value.balcony
          : balcony // ignore: cast_nullable_to_non_nullable
              as Balcony,
      innerWall: null == innerWall
          ? _value.innerWall
          : innerWall // ignore: cast_nullable_to_non_nullable
              as InnerWall,
      ceiling: null == ceiling
          ? _value.ceiling
          : ceiling // ignore: cast_nullable_to_non_nullable
              as Ceiling,
      roofFrame: null == roofFrame
          ? _value.roofFrame
          : roofFrame // ignore: cast_nullable_to_non_nullable
              as RoofFrame,
      pillarAndBeam: null == pillarAndBeam
          ? _value.pillarAndBeam
          : pillarAndBeam // ignore: cast_nullable_to_non_nullable
              as PillarAndBeam,
      baseAndFloorFraming: null == baseAndFloorFraming
          ? _value.baseAndFloorFraming
          : baseAndFloorFraming // ignore: cast_nullable_to_non_nullable
              as BaseAndFloorFraming,
      floor: null == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as Floor,
      antDamage: null == antDamage
          ? _value.antDamage
          : antDamage // ignore: cast_nullable_to_non_nullable
              as AntDamage,
      corrosion: null == corrosion
          ? _value.corrosion
          : corrosion // ignore: cast_nullable_to_non_nullable
              as Corrosion,
      piping: null == piping
          ? _value.piping
          : piping // ignore: cast_nullable_to_non_nullable
              as Piping,
      lifeline: null == lifeline
          ? _value.lifeline
          : lifeline // ignore: cast_nullable_to_non_nullable
              as Lifeline,
      rebar: null == rebar
          ? _value.rebar
          : rebar // ignore: cast_nullable_to_non_nullable
              as Rebar,
      concrete: null == concrete
          ? _value.concrete
          : concrete // ignore: cast_nullable_to_non_nullable
              as Concrete,
      earthquakeResistant: null == earthquakeResistant
          ? _value.earthquakeResistant
          : earthquakeResistant // ignore: cast_nullable_to_non_nullable
              as EarthquakeResistant,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InspectionOverviewCopyWith<$Res> get overview {
    return $InspectionOverviewCopyWith<$Res>(_value.overview, (value) {
      return _then(_value.copyWith(overview: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FoundationCopyWith<$Res> get foundation {
    return $FoundationCopyWith<$Res>(_value.foundation, (value) {
      return _then(_value.copyWith(foundation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OuterWallCopyWith<$Res> get outerWall {
    return $OuterWallCopyWith<$Res>(_value.outerWall, (value) {
      return _then(_value.copyWith(outerWall: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RoofCopyWith<$Res> get roof {
    return $RoofCopyWith<$Res>(_value.roof, (value) {
      return _then(_value.copyWith(roof: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BalconyCopyWith<$Res> get balcony {
    return $BalconyCopyWith<$Res>(_value.balcony, (value) {
      return _then(_value.copyWith(balcony: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InnerWallCopyWith<$Res> get innerWall {
    return $InnerWallCopyWith<$Res>(_value.innerWall, (value) {
      return _then(_value.copyWith(innerWall: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CeilingCopyWith<$Res> get ceiling {
    return $CeilingCopyWith<$Res>(_value.ceiling, (value) {
      return _then(_value.copyWith(ceiling: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RoofFrameCopyWith<$Res> get roofFrame {
    return $RoofFrameCopyWith<$Res>(_value.roofFrame, (value) {
      return _then(_value.copyWith(roofFrame: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PillarAndBeamCopyWith<$Res> get pillarAndBeam {
    return $PillarAndBeamCopyWith<$Res>(_value.pillarAndBeam, (value) {
      return _then(_value.copyWith(pillarAndBeam: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseAndFloorFramingCopyWith<$Res> get baseAndFloorFraming {
    return $BaseAndFloorFramingCopyWith<$Res>(_value.baseAndFloorFraming,
        (value) {
      return _then(_value.copyWith(baseAndFloorFraming: value) as $Val);
    });
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
  $AntDamageCopyWith<$Res> get antDamage {
    return $AntDamageCopyWith<$Res>(_value.antDamage, (value) {
      return _then(_value.copyWith(antDamage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CorrosionCopyWith<$Res> get corrosion {
    return $CorrosionCopyWith<$Res>(_value.corrosion, (value) {
      return _then(_value.copyWith(corrosion: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PipingCopyWith<$Res> get piping {
    return $PipingCopyWith<$Res>(_value.piping, (value) {
      return _then(_value.copyWith(piping: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LifelineCopyWith<$Res> get lifeline {
    return $LifelineCopyWith<$Res>(_value.lifeline, (value) {
      return _then(_value.copyWith(lifeline: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RebarCopyWith<$Res> get rebar {
    return $RebarCopyWith<$Res>(_value.rebar, (value) {
      return _then(_value.copyWith(rebar: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ConcreteCopyWith<$Res> get concrete {
    return $ConcreteCopyWith<$Res>(_value.concrete, (value) {
      return _then(_value.copyWith(concrete: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EarthquakeResistantCopyWith<$Res> get earthquakeResistant {
    return $EarthquakeResistantCopyWith<$Res>(_value.earthquakeResistant,
        (value) {
      return _then(_value.copyWith(earthquakeResistant: value) as $Val);
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
  $Res call(
      {String id,
      String userId,
      @DateTimeConverter() DateTime createdAt,
      DateTime? inspectionCreatedAt,
      String? udId,
      InspectionOverview overview,
      List<Photo> photos,
      List<String> blueprints,
      Foundation foundation,
      OuterWall outerWall,
      Roof roof,
      Balcony balcony,
      InnerWall innerWall,
      Ceiling ceiling,
      RoofFrame roofFrame,
      PillarAndBeam pillarAndBeam,
      BaseAndFloorFraming baseAndFloorFraming,
      Floor floor,
      AntDamage antDamage,
      Corrosion corrosion,
      Piping piping,
      Lifeline lifeline,
      Rebar rebar,
      Concrete concrete,
      EarthquakeResistant earthquakeResistant});

  @override
  $InspectionOverviewCopyWith<$Res> get overview;
  @override
  $FoundationCopyWith<$Res> get foundation;
  @override
  $OuterWallCopyWith<$Res> get outerWall;
  @override
  $RoofCopyWith<$Res> get roof;
  @override
  $BalconyCopyWith<$Res> get balcony;
  @override
  $InnerWallCopyWith<$Res> get innerWall;
  @override
  $CeilingCopyWith<$Res> get ceiling;
  @override
  $RoofFrameCopyWith<$Res> get roofFrame;
  @override
  $PillarAndBeamCopyWith<$Res> get pillarAndBeam;
  @override
  $BaseAndFloorFramingCopyWith<$Res> get baseAndFloorFraming;
  @override
  $FloorCopyWith<$Res> get floor;
  @override
  $AntDamageCopyWith<$Res> get antDamage;
  @override
  $CorrosionCopyWith<$Res> get corrosion;
  @override
  $PipingCopyWith<$Res> get piping;
  @override
  $LifelineCopyWith<$Res> get lifeline;
  @override
  $RebarCopyWith<$Res> get rebar;
  @override
  $ConcreteCopyWith<$Res> get concrete;
  @override
  $EarthquakeResistantCopyWith<$Res> get earthquakeResistant;
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
    Object? userId = null,
    Object? createdAt = null,
    Object? inspectionCreatedAt = freezed,
    Object? udId = freezed,
    Object? overview = null,
    Object? photos = null,
    Object? blueprints = null,
    Object? foundation = null,
    Object? outerWall = null,
    Object? roof = null,
    Object? balcony = null,
    Object? innerWall = null,
    Object? ceiling = null,
    Object? roofFrame = null,
    Object? pillarAndBeam = null,
    Object? baseAndFloorFraming = null,
    Object? floor = null,
    Object? antDamage = null,
    Object? corrosion = null,
    Object? piping = null,
    Object? lifeline = null,
    Object? rebar = null,
    Object? concrete = null,
    Object? earthquakeResistant = null,
  }) {
    return _then(_$_Inspection(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      inspectionCreatedAt: freezed == inspectionCreatedAt
          ? _value.inspectionCreatedAt
          : inspectionCreatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      udId: freezed == udId
          ? _value.udId
          : udId // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as InspectionOverview,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
      blueprints: null == blueprints
          ? _value._blueprints
          : blueprints // ignore: cast_nullable_to_non_nullable
              as List<String>,
      foundation: null == foundation
          ? _value.foundation
          : foundation // ignore: cast_nullable_to_non_nullable
              as Foundation,
      outerWall: null == outerWall
          ? _value.outerWall
          : outerWall // ignore: cast_nullable_to_non_nullable
              as OuterWall,
      roof: null == roof
          ? _value.roof
          : roof // ignore: cast_nullable_to_non_nullable
              as Roof,
      balcony: null == balcony
          ? _value.balcony
          : balcony // ignore: cast_nullable_to_non_nullable
              as Balcony,
      innerWall: null == innerWall
          ? _value.innerWall
          : innerWall // ignore: cast_nullable_to_non_nullable
              as InnerWall,
      ceiling: null == ceiling
          ? _value.ceiling
          : ceiling // ignore: cast_nullable_to_non_nullable
              as Ceiling,
      roofFrame: null == roofFrame
          ? _value.roofFrame
          : roofFrame // ignore: cast_nullable_to_non_nullable
              as RoofFrame,
      pillarAndBeam: null == pillarAndBeam
          ? _value.pillarAndBeam
          : pillarAndBeam // ignore: cast_nullable_to_non_nullable
              as PillarAndBeam,
      baseAndFloorFraming: null == baseAndFloorFraming
          ? _value.baseAndFloorFraming
          : baseAndFloorFraming // ignore: cast_nullable_to_non_nullable
              as BaseAndFloorFraming,
      floor: null == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as Floor,
      antDamage: null == antDamage
          ? _value.antDamage
          : antDamage // ignore: cast_nullable_to_non_nullable
              as AntDamage,
      corrosion: null == corrosion
          ? _value.corrosion
          : corrosion // ignore: cast_nullable_to_non_nullable
              as Corrosion,
      piping: null == piping
          ? _value.piping
          : piping // ignore: cast_nullable_to_non_nullable
              as Piping,
      lifeline: null == lifeline
          ? _value.lifeline
          : lifeline // ignore: cast_nullable_to_non_nullable
              as Lifeline,
      rebar: null == rebar
          ? _value.rebar
          : rebar // ignore: cast_nullable_to_non_nullable
              as Rebar,
      concrete: null == concrete
          ? _value.concrete
          : concrete // ignore: cast_nullable_to_non_nullable
              as Concrete,
      earthquakeResistant: null == earthquakeResistant
          ? _value.earthquakeResistant
          : earthquakeResistant // ignore: cast_nullable_to_non_nullable
              as EarthquakeResistant,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Inspection extends _Inspection {
  const _$_Inspection(
      {required this.id,
      required this.userId,
      @DateTimeConverter() required this.createdAt,
      this.inspectionCreatedAt,
      this.udId,
      this.overview = const InspectionOverview(),
      final List<Photo> photos = const <Photo>[],
      final List<String> blueprints = const <String>[],
      this.foundation = const Foundation(),
      this.outerWall = const OuterWall(),
      this.roof = const Roof(),
      this.balcony = const Balcony(),
      this.innerWall = const InnerWall(),
      this.ceiling = const Ceiling(),
      this.roofFrame = const RoofFrame(),
      this.pillarAndBeam = const PillarAndBeam(),
      this.baseAndFloorFraming = const BaseAndFloorFraming(),
      this.floor = const Floor(),
      this.antDamage = const AntDamage(),
      this.corrosion = const Corrosion(),
      this.piping = const Piping(),
      this.lifeline = const Lifeline(),
      this.rebar = const Rebar(),
      this.concrete = const Concrete(),
      this.earthquakeResistant = const EarthquakeResistant()})
      : _photos = photos,
        _blueprints = blueprints,
        super._();

  factory _$_Inspection.fromJson(Map<String, dynamic> json) =>
      _$$_InspectionFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  @DateTimeConverter()
  final DateTime createdAt;
  @override
  final DateTime? inspectionCreatedAt;
  @override
  final String? udId;
  @override
  @JsonKey()
  final InspectionOverview overview;
  final List<Photo> _photos;
  @override
  @JsonKey()
  List<Photo> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  final List<String> _blueprints;
  @override
  @JsonKey()
  List<String> get blueprints {
    if (_blueprints is EqualUnmodifiableListView) return _blueprints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blueprints);
  }

  @override
  @JsonKey()
  final Foundation foundation;
  @override
  @JsonKey()
  final OuterWall outerWall;
  @override
  @JsonKey()
  final Roof roof;
  @override
  @JsonKey()
  final Balcony balcony;
  @override
  @JsonKey()
  final InnerWall innerWall;
  @override
  @JsonKey()
  final Ceiling ceiling;
  @override
  @JsonKey()
  final RoofFrame roofFrame;
  @override
  @JsonKey()
  final PillarAndBeam pillarAndBeam;
  @override
  @JsonKey()
  final BaseAndFloorFraming baseAndFloorFraming;
  @override
  @JsonKey()
  final Floor floor;
  @override
  @JsonKey()
  final AntDamage antDamage;
  @override
  @JsonKey()
  final Corrosion corrosion;
  @override
  @JsonKey()
  final Piping piping;
  @override
  @JsonKey()
  final Lifeline lifeline;
  @override
  @JsonKey()
  final Rebar rebar;
  @override
  @JsonKey()
  final Concrete concrete;
  @override
  @JsonKey()
  final EarthquakeResistant earthquakeResistant;

  @override
  String toString() {
    return 'Inspection(id: $id, userId: $userId, createdAt: $createdAt, inspectionCreatedAt: $inspectionCreatedAt, udId: $udId, overview: $overview, photos: $photos, blueprints: $blueprints, foundation: $foundation, outerWall: $outerWall, roof: $roof, balcony: $balcony, innerWall: $innerWall, ceiling: $ceiling, roofFrame: $roofFrame, pillarAndBeam: $pillarAndBeam, baseAndFloorFraming: $baseAndFloorFraming, floor: $floor, antDamage: $antDamage, corrosion: $corrosion, piping: $piping, lifeline: $lifeline, rebar: $rebar, concrete: $concrete, earthquakeResistant: $earthquakeResistant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Inspection &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.inspectionCreatedAt, inspectionCreatedAt) ||
                other.inspectionCreatedAt == inspectionCreatedAt) &&
            (identical(other.udId, udId) || other.udId == udId) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            const DeepCollectionEquality()
                .equals(other._blueprints, _blueprints) &&
            (identical(other.foundation, foundation) ||
                other.foundation == foundation) &&
            (identical(other.outerWall, outerWall) ||
                other.outerWall == outerWall) &&
            (identical(other.roof, roof) || other.roof == roof) &&
            (identical(other.balcony, balcony) || other.balcony == balcony) &&
            (identical(other.innerWall, innerWall) ||
                other.innerWall == innerWall) &&
            (identical(other.ceiling, ceiling) || other.ceiling == ceiling) &&
            (identical(other.roofFrame, roofFrame) ||
                other.roofFrame == roofFrame) &&
            (identical(other.pillarAndBeam, pillarAndBeam) ||
                other.pillarAndBeam == pillarAndBeam) &&
            (identical(other.baseAndFloorFraming, baseAndFloorFraming) ||
                other.baseAndFloorFraming == baseAndFloorFraming) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.antDamage, antDamage) ||
                other.antDamage == antDamage) &&
            (identical(other.corrosion, corrosion) ||
                other.corrosion == corrosion) &&
            (identical(other.piping, piping) || other.piping == piping) &&
            (identical(other.lifeline, lifeline) ||
                other.lifeline == lifeline) &&
            (identical(other.rebar, rebar) || other.rebar == rebar) &&
            (identical(other.concrete, concrete) ||
                other.concrete == concrete) &&
            (identical(other.earthquakeResistant, earthquakeResistant) ||
                other.earthquakeResistant == earthquakeResistant));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        createdAt,
        inspectionCreatedAt,
        udId,
        overview,
        const DeepCollectionEquality().hash(_photos),
        const DeepCollectionEquality().hash(_blueprints),
        foundation,
        outerWall,
        roof,
        balcony,
        innerWall,
        ceiling,
        roofFrame,
        pillarAndBeam,
        baseAndFloorFraming,
        floor,
        antDamage,
        corrosion,
        piping,
        lifeline,
        rebar,
        concrete,
        earthquakeResistant
      ]);

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
      required final String userId,
      @DateTimeConverter() required final DateTime createdAt,
      final DateTime? inspectionCreatedAt,
      final String? udId,
      final InspectionOverview overview,
      final List<Photo> photos,
      final List<String> blueprints,
      final Foundation foundation,
      final OuterWall outerWall,
      final Roof roof,
      final Balcony balcony,
      final InnerWall innerWall,
      final Ceiling ceiling,
      final RoofFrame roofFrame,
      final PillarAndBeam pillarAndBeam,
      final BaseAndFloorFraming baseAndFloorFraming,
      final Floor floor,
      final AntDamage antDamage,
      final Corrosion corrosion,
      final Piping piping,
      final Lifeline lifeline,
      final Rebar rebar,
      final Concrete concrete,
      final EarthquakeResistant earthquakeResistant}) = _$_Inspection;
  const _Inspection._() : super._();

  factory _Inspection.fromJson(Map<String, dynamic> json) =
      _$_Inspection.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  @DateTimeConverter()
  DateTime get createdAt;
  @override
  DateTime? get inspectionCreatedAt;
  @override
  String? get udId;
  @override
  InspectionOverview get overview;
  @override
  List<Photo> get photos;
  @override
  List<String> get blueprints;
  @override
  Foundation get foundation;
  @override
  OuterWall get outerWall;
  @override
  Roof get roof;
  @override
  Balcony get balcony;
  @override
  InnerWall get innerWall;
  @override
  Ceiling get ceiling;
  @override
  RoofFrame get roofFrame;
  @override
  PillarAndBeam get pillarAndBeam;
  @override
  BaseAndFloorFraming get baseAndFloorFraming;
  @override
  Floor get floor;
  @override
  AntDamage get antDamage;
  @override
  Corrosion get corrosion;
  @override
  Piping get piping;
  @override
  Lifeline get lifeline;
  @override
  Rebar get rebar;
  @override
  Concrete get concrete;
  @override
  EarthquakeResistant get earthquakeResistant;
  @override
  @JsonKey(ignore: true)
  _$$_InspectionCopyWith<_$_Inspection> get copyWith =>
      throw _privateConstructorUsedError;
}
