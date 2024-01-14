import 'package:collection/collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/inspection/inspection.dart';
import 'package:inspection_app/data/providers/auth/core.dart';
import 'package:inspection_app/data/repositories/inspection_repository.dart';

final inspectionListProvider =
    StateNotifierProvider<InspectionListNotifier, AsyncValue<List<Inspection>>>(
        (ref) {
  return InspectionListNotifier(ref: ref);
});

class InspectionListNotifier
    extends StateNotifier<AsyncValue<List<Inspection>>> {
  InspectionListNotifier({required this.ref})
      : super(const AsyncValue.loading()) {
    ref.listen(userIdProvider, (_, userId) {
      if (userId == null) return;
      refresh();
    }, fireImmediately: true);
  }

  final Ref ref;
  static const limit = 20;

  Future<void> refresh() async {
    state = await AsyncValue.guard(() {
      return ref
          .read(inspectionRepositoryProvider)
          .getInspections(limit: limit);
    });
  }

  Future<void> loadMore() async {
    state = await AsyncValue.guard(() async {
      final news = await ref
          .read(inspectionRepositoryProvider)
          .getInspections(
            limit: limit,
            latest: state.asData?.value.lastOrNull?.createdAt,
          )
          .catchError((e) => <Inspection>[]);
      return [...state.asData?.value ?? [], ...news];
    });
  }

  String? createNewInspection() {
    final inspection =
        ref.read(inspectionRepositoryProvider).createInspection();
    if (inspection == null) return null;
    state = AsyncValue.data([inspection, ...state.asData?.value ?? []]);
    return inspection.id;
  }

  Future<void> updateInspection(Inspection inspection) async {
    final newList = state.asData?.value
            .map((i) => i.id == inspection.id ? inspection : i)
            .toList() ??
        [];
    state = AsyncValue.data([...newList]);
    await ref.read(inspectionRepositoryProvider).updateInspection(inspection);
  }

  Future<void> deleteInspection(String inspectionId) async {
    final newList =
        state.asData?.value.whereNot((i) => i.id == inspectionId).toList() ??
            [];
    state = AsyncData([...newList]);
    await ref.read(inspectionRepositoryProvider).deleteInspection(inspectionId);
  }
}
