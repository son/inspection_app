import 'package:collection/collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/address/address.dart';
import 'package:inspection_app/data/entities/ant_damage/ant_damage.dart';
import 'package:inspection_app/data/entities/balcony/balcony.dart';
import 'package:inspection_app/data/entities/base_and_floor_framing/base_and_floor_framing.dart';
import 'package:inspection_app/data/entities/detail/detail.dart';
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
import 'package:inspection_app/data/entities/photo/photo.dart';
import 'package:inspection_app/data/entities/pillar_and_beam/pillar_and_beam.dart';
import 'package:inspection_app/data/entities/piping/piping.dart';
import 'package:inspection_app/data/entities/rebar/rebar.dart';
import 'package:inspection_app/data/entities/repairing/repairing.dart';
import 'package:inspection_app/data/entities/result.dart';
import 'package:inspection_app/data/entities/roof/roof.dart';
import 'package:inspection_app/data/entities/roof_frame/roof_frame.dart';
import 'package:inspection_app/data/entities/situation/situation.dart';
import 'package:inspection_app/data/providers/inspection_list_provider.dart';
import 'package:inspection_app/data/repositories/image_repository.dart';
import 'package:inspection_app/ui/components/notification_bar.dart';

final inspectionProvider =
    StateNotifierProvider.family<InspectionNotifier, Inspection, String>(
        (ref, inspectionId) {
  return InspectionNotifier(ref: ref, inspectionId: inspectionId);
});

class InspectionNotifier extends StateNotifier<Inspection> {
  InspectionNotifier({
    required this.ref,
    required this.inspectionId,
  }) : super(Inspection.empty) {
    state = ref
        .read(inspectionListProvider)
        .asData!
        .value
        .firstWhere((i) => i.id == inspectionId);
  }

  final Ref ref;
  final String inspectionId;

  void updateUdId(String udId) {
    state = state.copyWith(udId: udId);
  }

  void updateNecessity(Necessity necessity) {
    state = state.copyWith(
      roof: state.roof.copyWith(necessity: necessity),
    );
  }

  void updateDetail(Detail detail) {
    state = state.copyWith(detail: detail);
  }

  void updateOverview(InspectionOverview overview) {
    state = state.copyWith(overview: overview);
  }

  void updateAddress(Address address) {
    state = state.copyWith(address: address);
  }

  void updateSituation(Situation situation) {
    state = state.copyWith(situation: situation);
  }

  void updateRepairing(Repairing repairing) {
    state = state.copyWith(repairing: repairing);
  }

  void updateRenovation(Renovation renovation) {
    state = state.copyWith(renovation: renovation);
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

  Future<void> updateBlueprints(List<String> paths) async {
    final news = await createNewPhotos(paths);
    state = state.copyWith(blueprints: [...state.blueprints, ...news]);
    await ref.read(inspectionListProvider.notifier).updateInspection(state);
  }

  Future<void> deleteBlueprint(String url) async {
    final news = state.blueprints
        .whereNot((blueprint) => blueprint.image == url)
        .toList();
    state = state.copyWith(blueprints: news);
    await (
      ref.read(imageRepositoryProvider).deleteImage(url),
      ref.read(inspectionListProvider.notifier).updateInspection(state),
    ).wait;
  }

  Future<void> updateExteriorImages(List<String> paths) async {
    final news = await createNewPhotos(paths);
    state = state.copyWith(photos: [...state.photos, ...news]);
    await ref.read(inspectionListProvider.notifier).updateInspection(state);
  }

  Future<void> deleteExterior(String url) async {
    final news = state.photos.whereNot((photo) => photo.image == url).toList();
    state = state.copyWith(photos: news);
    await (
      ref.read(imageRepositoryProvider).deleteImage(url),
      ref.read(inspectionListProvider.notifier).updateInspection(state),
    ).wait;
  }

  Future<List<Photo>> createNewPhotos(List<String> paths) async {
    final cancel = NotificationBar.showUploading();
    final urls = await Future.wait(paths.map(
        (path) => ref.read(imageRepositoryProvider).uploadImage(path))).then(
      (value) => value.whereType<String>().toList(),
    );
    cancel();
    return urls.map((url) => Photo(image: url)).toList();
  }

  Future<void> deletePhoto(Photo photo) async {
    await (
      ref.read(imageRepositoryProvider).deleteImage(photo.image),
      ref.read(inspectionListProvider.notifier).updateInspection(state),
    ).wait;
  }
}
