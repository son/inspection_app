import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inspection_app/data/entities/ant_damage/ant_damage.dart';
import 'package:inspection_app/data/entities/balcony/balcony.dart';
import 'package:inspection_app/data/entities/base_and_floor_framing/base_and_floor_framing.dart';
import 'package:inspection_app/data/entities/ceiling/ceiling.dart';
import 'package:inspection_app/data/entities/corrosion/corrosion.dart';
import 'package:inspection_app/data/entities/floor/floor.dart';
import 'package:inspection_app/data/entities/foundation/foundation.dart';
import 'package:inspection_app/data/entities/inner_wall/inner_wall.dart';
import 'package:inspection_app/data/entities/outer_wall/outer_wall.dart';
import 'package:inspection_app/data/entities/photo/photo.dart';
import 'package:inspection_app/data/entities/pillar_and_beam/pillar_and_beam.dart';
import 'package:inspection_app/data/entities/roof/roof.dart';
import 'package:inspection_app/data/entities/roof_frame/roof_frame.dart';

import 'inspection_overview.dart';

part 'inspection.freezed.dart';
part 'inspection.g.dart';

@freezed
class Inspection with _$Inspection {
  const Inspection._();

  const factory Inspection({
    required String id,
    DateTime? createdAt,
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
  }) = _Inspection;

  factory Inspection.fromJson(Map<String, dynamic> json) =>
      _$InspectionFromJson(json);

  static const empty = Inspection(id: '');
}
