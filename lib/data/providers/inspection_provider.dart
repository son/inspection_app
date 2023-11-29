import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/ant_damage/ant_damage.dart';
import 'package:inspection_app/data/entities/balcony/balcony.dart';
import 'package:inspection_app/data/entities/base_and_floor_framing/base_and_floor_framing.dart';
import 'package:inspection_app/data/entities/building/building.dart';
import 'package:inspection_app/data/entities/ceiling/ceiling.dart';
import 'package:inspection_app/data/entities/concrete/concrete.dart';
import 'package:inspection_app/data/entities/corrosion/corrosion.dart';
import 'package:inspection_app/data/entities/earthquake_resistant/earthquake_resistant.dart';
import 'package:inspection_app/data/entities/floor/floor.dart' as f;
import 'package:inspection_app/data/entities/foundation/foundation.dart';
import 'package:inspection_app/data/entities/inner_wall/inner_wall.dart';
import 'package:inspection_app/data/entities/inspection/inspection.dart';
import 'package:inspection_app/data/entities/inspection/inspection_overview.dart';
import 'package:inspection_app/data/entities/lifeline/lifeline.dart';
import 'package:inspection_app/data/entities/outer_wall/outer_wall.dart';
import 'package:inspection_app/data/entities/pillar_and_beam/pillar_and_beam.dart';
import 'package:inspection_app/data/entities/piping/piping.dart';
import 'package:inspection_app/data/entities/rebar/rebar.dart';
import 'package:inspection_app/data/entities/result.dart';
import 'package:inspection_app/data/entities/roof/roof.dart';
import 'package:inspection_app/data/entities/roof_frame/roof_frame.dart';

final inspectionProvider =
    StateNotifierProvider<InspectionNotifier, Inspection>(
  (ref) => InspectionNotifier(ref: ref),
);

class InspectionNotifier extends StateNotifier<Inspection> {
  InspectionNotifier({required this.ref}) : super(Inspection.empty);
  final Ref ref;

  void updateUdId(String udId) {
    state = state.copyWith(udId: udId);
  }

  void updateNecessity(Necessity necessity) {
    state = state.copyWith(
      roof: state.roof.copyWith(necessity: necessity),
    );
  }

  void updatePrefecture(String prefecture) {
    state = state.copyWith(
      overview: state.overview.copyWith(
        building: state.overview.building.copyWith(prefecture: prefecture),
      ),
    );
  }

  void updateHousingType(HousingType type) {
    state = state.copyWith(
      overview: state.overview.copyWith(housingType: type),
    );
  }

  void updateStructureType(StructureType type) {
    state = state.copyWith(
      overview: state.overview.copyWith(
        building: state.overview.building.copyWith(structureType: type),
      ),
    );
  }

  void updateGround(int ground) {
    state = state.copyWith(
      overview: state.overview.copyWith(
        building: state.overview.building.copyWith(
          floor: state.overview.building.floor.copyWith(ground: ground),
        ),
      ),
    );
  }

  void updateUnderGround(int underground) {
    state = state.copyWith(
      overview: state.overview.copyWith(
        building: state.overview.building.copyWith(
          floor: state.overview.building.floor.copyWith(
            underground: underground,
          ),
        ),
      ),
    );
  }

  void updateOverview(InspectionOverview overview) {
    state = state.copyWith(overview: overview);
  }

  void updateWeather(Weather weather) {
    state = state.copyWith(overview: state.overview.copyWith(weather: weather));
  }

  void updateInspectionCreatedAt(DateTime inspectionCreatedAt) {
    state = state.copyWith(inspectionCreatedAt: inspectionCreatedAt);
  }

  void updateSchedule(Schedule schedule) {
    state = state.copyWith(
      overview: state.overview.copyWith(schedule: schedule),
    );
  }

  void updateLifelines(Lifelines lifeline) {
    state = state.copyWith(
      overview: state.overview.copyWith(lifeline: lifeline),
    );
  }

  void updateRepairing(Repairing repairing) {
    state = state.copyWith(
      overview: state.overview.copyWith(
        building: state.overview.building.copyWith(repairing: repairing),
      ),
    );
  }

  void updateRenovation(Renovation renovation) {
    state = state.copyWith(
      overview: state.overview.copyWith(
        building: state.overview.building.copyWith(renovation: renovation),
      ),
    );
  }

  void updateFoundation(Foundation foundation) {
    state = state.copyWith(foundation: foundation);
  }

  void updateOuterWall(OuterWall outerWall) {
    state = state.copyWith(outerWall: outerWall);
  }

  void updateRoof(Roof roof) {
    state = state.copyWith(roof: roof);
  }

  void updateBalcony(Balcony balcony) {
    state = state.copyWith(balcony: balcony);
  }

  void updateInnerWall(InnerWall innerWall) {
    state = state.copyWith(innerWall: innerWall);
  }

  void updateCeiling(Ceiling ceiling) {
    state = state.copyWith(ceiling: ceiling);
  }

  void updateRoofFrame(RoofFrame roofFrame) {
    state = state.copyWith(roofFrame: roofFrame);
  }

  void updatePillarAndBeam(PillarAndBeam pillarAndBeam) {
    state = state.copyWith(pillarAndBeam: pillarAndBeam);
  }

  void updateBaseAndFloorFraming(BaseAndFloorFraming baseAndFloorFraming) {
    state = state.copyWith(baseAndFloorFraming: baseAndFloorFraming);
  }

  void updateFloor(f.Floor floor) {
    state = state.copyWith(floor: floor);
  }

  void updateAntDamage(AntDamage antDamage) {
    state = state.copyWith(antDamage: antDamage);
  }

  void updateCorrosion(Corrosion corrosion) {
    state = state.copyWith(corrosion: corrosion);
  }

  void updatePiping(Piping piping) {
    state = state.copyWith(piping: piping);
  }

  void updateLifeline(Lifeline lifeline) {
    state = state.copyWith(lifeline: lifeline);
  }

  void updateRebar(Rebar rebar) {
    state = state.copyWith(rebar: rebar);
  }

  void updateConcrete(Concrete concrete) {
    state = state.copyWith(concrete: concrete);
  }

  void updateEarthquakeResistant(EarthquakeResistant earthquakeResistant) {
    state = state.copyWith(earthquakeResistant: earthquakeResistant);
  }
}
