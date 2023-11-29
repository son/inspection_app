import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/inspection/inspection.dart';
import 'package:inspection_app/data/repositories/inspection_repository.dart';

final inspectionListProvider =
    StateNotifierProvider((ref) => InspectionListNotifier(ref: ref));

class InspectionListNotifier
    extends StateNotifier<AsyncValue<List<Inspection>>> {
  InspectionListNotifier({required this.ref})
      : super(const AsyncValue.data([]));

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
    state = await AsyncValue.guard(() {
      return ref
          .read(inspectionRepositoryProvider)
          .getInspections(limit: limit);
    });
  }
}
