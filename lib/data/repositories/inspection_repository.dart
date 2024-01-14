import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/inspection/inspection.dart';
import 'package:inspection_app/data/providers/auth/core.dart';

final inspectionRepositoryProvider = Provider(
  (ref) => InspectionRepository(
    ref: ref,
    firestore: FirebaseFirestore.instance,
  ),
);

class InspectionRepository {
  const InspectionRepository({
    required this.ref,
    required this.firestore,
  });

  final Ref ref;
  final FirebaseFirestore firestore;

  Future<List<Inspection>> getInspections({
    required int limit,
    DateTime? latest,
  }) {
    final userId = ref.read(userIdProvider);
    if (userId == null) return Future.value([]);
    return firestore
        .collection('inspections')
        .limit(limit)
        .orderBy('createdAt', descending: true)
        .startAfter([Timestamp.fromDate(latest ?? DateTime.now())])
        .where('userId', isEqualTo: userId)
        .get()
        .then((s) => s.docs.map((d) => Inspection.fromJson(d.data())).toList());
  }

  Inspection? createInspection() {
    final userId = ref.read(userIdProvider);
    if (userId == null) return null;
    final id = firestore.collection('inspections').doc().id;
    return Inspection(id: id, userId: userId, createdAt: DateTime.now());
  }

  Future<void> updateInspection(Inspection inspection) {
    return firestore
        .collection('inspections')
        .doc(inspection.id)
        .set(inspection.toJson(), SetOptions(merge: true));
    // TODO: エラー表示・Clashlytics
  }

  Future<void> deleteInspection(String inspectionId) {
    return firestore.collection('inspections').doc(inspectionId).delete();
  }
}
