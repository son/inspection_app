import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/building/building.dart';
import 'package:inspection_app/data/entities/inspection/inspection.dart';
import 'package:inspection_app/data/entities/inspection/inspection_overview.dart';

final inspectionProvider =
    StateNotifierProvider<InspectionNotifier, Inspection>(
  (ref) => InspectionNotifier(ref: ref),
);

class InspectionNotifier extends StateNotifier<Inspection> {
  InspectionNotifier({required this.ref}) : super(Inspection.empty);
  final Ref ref;

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

  void updateWeather(Weather weather) {
    state = state.copyWith(overview: state.overview.copyWith(weather: weather));
  }

  void updateCreatedAt(DateTime createdAt) {
    state = state.copyWith(createdAt: createdAt);
  }

  void updateSchedule(Schedule schedule) {
    state = state.copyWith(
      overview: state.overview.copyWith(schedule: schedule),
    );
  }

  void updateLifeline(Lifeline lifeline) {
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
}
