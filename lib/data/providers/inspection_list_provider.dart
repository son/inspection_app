import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/inspection/inspection.dart';
import 'package:inspection_app/data/providers/auth/core.dart';
import 'package:inspection_app/data/repositories/inspection_repository.dart';

final inspectionListProvider =
    StateNotifierProvider<InspectionListNotifier, List<Inspection>>((ref) {
  return InspectionListNotifier(ref: ref);
});

class InspectionListNotifier extends StateNotifier<List<Inspection>> {
  InspectionListNotifier({required this.ref}) : super(const []) {
    ref.listen(userIdProvider, (_, userId) {
      if (userId == null) return;
      refresh();
    }, fireImmediately: true);
    refresh();
  }

  final Ref ref;
  static const limit = 20;

  Future<void> refresh() async {
    state = await ref
        .read(inspectionRepositoryProvider)
        .getInspections(limit: limit);
  }

  Future<void> loadMore() async {
    final news = await ref
        .read(inspectionRepositoryProvider)
        .getInspections(limit: limit, latest: state.last.createdAt)
        .catchError((e) => <Inspection>[]);
    state = [...state, ...news];
  }

  String? createNewInspection() {
    final inspection =
        ref.read(inspectionRepositoryProvider).createInspection();
    if (inspection == null) return null;
    state = [inspection, ...state];
    return inspection.id;
  }

  Future<void> updateInspection(Inspection inspection) async {
    final newList =
        state.map((i) => i.id == inspection.id ? inspection : i).toList();
    state = [...newList];
    await ref.read(inspectionRepositoryProvider).updateInspection(inspection);
  }
}
