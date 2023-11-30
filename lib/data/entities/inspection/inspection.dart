import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/ant_damage/ant_damage.dart';
import 'package:inspection_app/data/entities/balcony/balcony.dart';
import 'package:inspection_app/data/entities/base_and_floor_framing/base_and_floor_framing.dart';
import 'package:inspection_app/data/entities/ceiling/ceiling.dart';
import 'package:inspection_app/data/entities/concrete/concrete.dart';
import 'package:inspection_app/data/entities/corrosion/corrosion.dart';
import 'package:inspection_app/data/entities/earthquake_resistant/earthquake_resistant.dart';
import 'package:inspection_app/data/entities/floor/floor.dart';
import 'package:inspection_app/data/entities/foundation/foundation.dart';
import 'package:inspection_app/data/entities/inner_wall/inner_wall.dart';
import 'package:inspection_app/data/entities/json_supports.dart';
import 'package:inspection_app/data/entities/lifeline/lifeline.dart';
import 'package:inspection_app/data/entities/outer_wall/outer_wall.dart';
import 'package:inspection_app/data/entities/photo/photo.dart';
import 'package:inspection_app/data/entities/pillar_and_beam/pillar_and_beam.dart';
import 'package:inspection_app/data/entities/piping/piping.dart';
import 'package:inspection_app/data/entities/rebar/rebar.dart';
import 'package:inspection_app/data/entities/roof/roof.dart';
import 'package:inspection_app/data/entities/roof_frame/roof_frame.dart';

import 'inspection_overview.dart';

part 'inspection.freezed.dart';
part 'inspection.g.dart';

@freezed
class Inspection with _$Inspection {
  const Inspection._();

  @JsonSerializable(explicitToJson: true)
  const factory Inspection({
    required String id,
    required String userId,
    @DateTimeConverter() required DateTime createdAt,
    DateTime? inspectionCreatedAt,
    String? udId,
    @Default(InspectionOverview()) InspectionOverview overview,
    @Default(<Photo>[]) List<Photo> photos,
    @Default(<String>[]) List<String> blueprints,
    @Default(Foundation()) Foundation foundation,
    @Default(OuterWall()) OuterWall outerWall,
    @Default(Roof()) Roof roof,
    @Default(Balcony()) Balcony balcony,
    @Default(InnerWall()) InnerWall innerWall,
    @Default(Ceiling()) Ceiling ceiling,
    @Default(RoofFrame()) RoofFrame roofFrame,
    @Default(PillarAndBeam()) PillarAndBeam pillarAndBeam,
    @Default(BaseAndFloorFraming()) BaseAndFloorFraming baseAndFloorFraming,
    @Default(Floor()) Floor floor,
    @Default(AntDamage()) AntDamage antDamage,
    @Default(Corrosion()) Corrosion corrosion,
    @Default(Piping()) Piping piping,
    @Default(Lifeline()) Lifeline lifeline,
    @Default(Rebar()) Rebar rebar,
    @Default(Concrete()) Concrete concrete,
    @Default(EarthquakeResistant()) EarthquakeResistant earthquakeResistant,
  }) = _Inspection;

  factory Inspection.fromJson(Map<String, dynamic> json) =>
      _$InspectionFromJson(json);

  static final empty = Inspection(
    id: '',
    userId: '',
    createdAt: DateTime.now(),
  );
}
